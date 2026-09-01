#!/usr/bin/env python
# coding: utf-8

# In[1]:


from pynq import Overlay

ol = Overlay("/home/xilinx/jupyter_notebooks/vit16_mhsa/mhsa.bit")
mhsa = ol.mhsa_top_0


# In[2]:


hex(mhsa.mmio.read(0x00))


# In[3]:


mhsa.register_map


# In[4]:


for name in ['Q_1','Q_2','K_1','K_2','V_1','V_2','O_1','O_2','scale']:
    reg = getattr(mhsa.register_map, name)
    print(name, reg.address)


# In[5]:


mhsa.mmio.write(0x40, 512)
hex(mhsa.mmio.read(0x40))


# In[ ]:


mhsa.write(0x00, 1)
print("start issued")


# In[1]:


from pynq import Overlay
ol = Overlay("/home/xilinx/jupyter_notebooks/vit16_mhsa/mhsa.bit")
mhsa = ol.mhsa_top_0

hex(mhsa.mmio.read(0x00))


# In[2]:


from pynq import allocate
import numpy as np

N = 197*768

Q = allocate(shape=(N,), dtype=np.float32)
K = allocate(shape=(N,), dtype=np.float32)
V = allocate(shape=(N,), dtype=np.float32)
O = allocate(shape=(N,), dtype=np.float32)

rm = mhsa.register_map

rm.Q = Q.physical_address
rm.K = K.physical_address
rm.V = V.physical_address
rm.O = O.physical_address
rm.scale = 512


# In[3]:


for off in range(0x10,0x40,4):
    print(hex(off), hex(mhsa.mmio.read(off)))


# In[4]:


mhsa.register_map


# In[5]:


print(type(mhsa.register_map.Q))
print(type(mhsa.register_map.K))
print(type(mhsa.register_map.V))
print(type(mhsa.register_map.O))


# In[6]:


dir(mhsa.register_map)


# In[7]:


print(hex(Q.physical_address))
print(hex(K.physical_address))
print(hex(V.physical_address))
print(hex(O.physical_address))


# In[8]:


rm = mhsa.register_map

rm.Q = Q.physical_address
rm.K = K.physical_address
rm.V = V.physical_address
rm.O = O.physical_address
rm.scale = 512

print("Q =", hex(rm.Q))
print("K =", hex(rm.K))
print("V =", hex(rm.V))
print("O =", hex(rm.O))


# In[9]:


for off in range(0x10,0x40,4):
    print(hex(off), hex(mhsa.mmio.read(off)))


# In[10]:


mhsa.mmio.write(0x10, 0x58100000)
mhsa.mmio.write(0x14, 0x0)

print(hex(mhsa.mmio.read(0x10)))
print(hex(mhsa.mmio.read(0x14)))


# In[11]:


mhsa.mmio.write(0x1C, 0x58200000)
mhsa.mmio.write(0x20, 0x0)

print(hex(mhsa.mmio.read(0x1C)))
print(hex(mhsa.mmio.read(0x20)))


# In[12]:


mhsa.mmio.write(0x10, 0x58100000)  # Q low
mhsa.mmio.write(0x14, 0x0)

mhsa.mmio.write(0x1C, 0x58200000)  # K low
mhsa.mmio.write(0x20, 0x0)

mhsa.mmio.write(0x28, 0x58300000)  # V low
mhsa.mmio.write(0x2C, 0x0)

mhsa.mmio.write(0x34, 0x58400000)  # O low
mhsa.mmio.write(0x38, 0x0)

mhsa.mmio.write(0x40, 512)         # scale


# In[13]:


for off in [0x10,0x14,0x1C,0x20,0x28,0x2C,0x34,0x38,0x40]:
    print(hex(off), hex(mhsa.mmio.read(off)))


# In[14]:


print("before")
mhsa.mmio.write(0x00,1)
print("after")


# In[15]:


hex(mhsa.mmio.read(0x00))


# In[16]:


ctrl = mhsa.mmio.read(0x00)

print("AP_START =", ctrl & 1)
print("DONE     =", (ctrl >> 1) & 1)
print("IDLE     =", (ctrl >> 2) & 1)
print("READY    =", (ctrl >> 3) & 1)


# In[17]:


for i in range(20):
    print(i, hex(mhsa.mmio.read(0x00)))


# In[18]:


mhsa.mmio.write(0x00,1)


# In[19]:


from pynq import allocate
import numpy as np

N = 197 * 768

Q = allocate(shape=(N,), dtype=np.float32)
K = allocate(shape=(N,), dtype=np.float32)
V = allocate(shape=(N,), dtype=np.float32)
O = allocate(shape=(N,), dtype=np.float32)

Q[:] = 1.0
K[:] = 1.0
V[:] = 1.0
O[:] = 0.0

Q.flush()
K.flush()
V.flush()
O.flush()


# In[20]:


mhsa.mmio.write(0x10, Q.physical_address & 0xffffffff)
mhsa.mmio.write(0x14, Q.physical_address >> 32)

mhsa.mmio.write(0x1c, K.physical_address & 0xffffffff)
mhsa.mmio.write(0x20, K.physical_address >> 32)

mhsa.mmio.write(0x28, V.physical_address & 0xffffffff)
mhsa.mmio.write(0x2c, V.physical_address >> 32)

mhsa.mmio.write(0x34, O.physical_address & 0xffffffff)
mhsa.mmio.write(0x38, O.physical_address >> 32)

mhsa.mmio.write(0x40, 512)


# In[21]:


for off in [0x10,0x14,0x1c,0x20,0x28,0x2c,0x34,0x38,0x40]:
    print(hex(off), hex(mhsa.mmio.read(off)))


# In[22]:


mhsa.mmio.write(0x00, 1)


# In[23]:


ctrl = mhsa.mmio.read(0x00)

print("CTRL =", hex(ctrl))
print("DONE =", (ctrl >> 1) & 1)
print("IDLE =", (ctrl >> 2) & 1)
print("READY=", (ctrl >> 3) & 1)


# In[24]:


O.invalidate()

print("First 20 outputs:")
print(O[:20])

print("Max abs:")
print(np.max(np.abs(O)))


# In[25]:


O.invalidate()

u = O.view(np.uint32)

print(u[:20])


# In[26]:


from pynq import allocate
import numpy as np

N = 197*768

Q = allocate(shape=(N,), dtype=np.int16)
K = allocate(shape=(N,), dtype=np.int16)
V = allocate(shape=(N,), dtype=np.int16)

Q[:] = 4096
K[:] = 4096
V[:] = 4096


# In[27]:


O = allocate(shape=(N,), dtype=np.int32)
O[:] = 0


# In[28]:


Q.flush()
K.flush()
V.flush()
O.flush()


# In[29]:


O.invalidate()

print(O[:20])
print(np.max(np.abs(O)))


# In[30]:


print(hex(Q.physical_address))
print(hex(K.physical_address))
print(hex(V.physical_address))
print(hex(O.physical_address))


# In[31]:


mhsa.mmio.write(0x10, Q.physical_address & 0xffffffff)
mhsa.mmio.write(0x14, Q.physical_address >> 32)

mhsa.mmio.write(0x1c, K.physical_address & 0xffffffff)
mhsa.mmio.write(0x20, K.physical_address >> 32)

mhsa.mmio.write(0x28, V.physical_address & 0xffffffff)
mhsa.mmio.write(0x2c, V.physical_address >> 32)

mhsa.mmio.write(0x34, O.physical_address & 0xffffffff)
mhsa.mmio.write(0x38, O.physical_address >> 32)

mhsa.mmio.write(0x40, 512)


# In[32]:


for off in [0x10,0x14,0x1c,0x20,0x28,0x2c,0x34,0x38,0x40]:
    print(hex(off), hex(mhsa.mmio.read(off)))


# In[33]:


mhsa.mmio.write(0x00, 1)


# In[34]:


ctrl = mhsa.mmio.read(0x00)
print(hex(ctrl))


# In[35]:


O.invalidate()

print(O[:20])
print("max =", np.max(np.abs(O)))


# In[36]:


u = O.view(np.uint32)

print(hex(u[0]))
print(hex(u[1]))
print(hex(u[2]))
print(hex(u[3]))


# In[37]:


from pynq import allocate
import numpy as np

N = 197*768

Q = allocate(shape=(N,), dtype=np.int16)
K = allocate(shape=(N,), dtype=np.int16)
V = allocate(shape=(N,), dtype=np.int16)
O = allocate(shape=(N,), dtype=np.int32)

Q[:] = 0
K[:] = 0
V[:] = 0
O[:] = 0

# First element only
Q[0] = 4096      # 1.0
K[0] = 4096      # 1.0
V[0] = 8192      # 2.0

Q.flush()
K.flush()
V.flush()
O.flush()


# In[38]:


O.invalidate()

print(O[:20])
print("max =", np.max(O))
print("min =", np.min(O))


# In[39]:


# program addresses
mhsa.mmio.write(0x10, Q.physical_address & 0xffffffff)
mhsa.mmio.write(0x14, Q.physical_address >> 32)

mhsa.mmio.write(0x1c, K.physical_address & 0xffffffff)
mhsa.mmio.write(0x20, K.physical_address >> 32)

mhsa.mmio.write(0x28, V.physical_address & 0xffffffff)
mhsa.mmio.write(0x2c, V.physical_address >> 32)

mhsa.mmio.write(0x34, O.physical_address & 0xffffffff)
mhsa.mmio.write(0x38, O.physical_address >> 32)

mhsa.mmio.write(0x40, 512)


# In[40]:


for off in [0x10,0x14,0x1c,0x20,0x28,0x2c,0x34,0x38,0x40]:
    print(hex(off), hex(mhsa.mmio.read(off)))


# In[41]:


mhsa.mmio.write(0x00, 1)


# In[42]:


ctrl = mhsa.mmio.read(0x00)
print(hex(ctrl))


# In[43]:


O.invalidate()

print(O[:20])
print("max =", np.max(O))
print("min =", np.min(O))


# In[44]:


O[:] = 0
O.flush()

mhsa.mmio.write(0x00,1)

while (mhsa.mmio.read(0x00) & 0x2)==0:
    pass


# In[45]:


O.invalidate()

print(O[:64])
print("max =", np.max(O))
print("min =", np.min(O))


# In[46]:


u = O.view(np.uint32)

for i in range(16):
    print(i, hex(int(u[i])))


# In[47]:


import numpy as np

q_np = np.loadtxt("q.txt")
k_np = np.loadtxt("k.txt")
v_np = np.loadtxt("v.txt")
gold = np.loadtxt("golden_output.txt")

print("Q:", q_np.shape)
print("K:", k_np.shape)
print("V:", v_np.shape)
print("G:", gold.shape)


# In[48]:


print("Q min/max:", np.min(q_np), np.max(q_np))
print("K min/max:", np.min(k_np), np.max(k_np))
print("V min/max:", np.min(v_np), np.max(v_np))
print("Golden min/max:", np.min(gold), np.max(gold))


# In[49]:


print(q_np[:10])
print(k_np[:10])
print(v_np[:10])
print(gold[:10])


# In[50]:


import numpy as np

gold = np.loadtxt("golden_output.txt")


# In[51]:


print(gold.shape)


# In[52]:


O.invalidate()

hw = O.astype(np.float32)

print("HW:")
print(hw[:20])

print("\nGOLD:")
print(gold[:20])


# In[53]:


err = np.abs(hw - gold)

print("max error =", np.max(err))
print("mean error =", np.mean(err))


# In[54]:


O.invalidate()

u = O.view(np.int32)

print("first 32:")
print(u[:32])

print("unique values:")
print(np.unique(u[:64]))


# In[55]:


import time


# In[56]:


mhsa.mmio.write(0x10, Q.physical_address & 0xffffffff)
mhsa.mmio.write(0x14, Q.physical_address >> 32)

mhsa.mmio.write(0x1c, K.physical_address & 0xffffffff)
mhsa.mmio.write(0x20, K.physical_address >> 32)

mhsa.mmio.write(0x28, V.physical_address & 0xffffffff)
mhsa.mmio.write(0x2c, V.physical_address >> 32)

mhsa.mmio.write(0x34, O.physical_address & 0xffffffff)
mhsa.mmio.write(0x38, O.physical_address >> 32)

mhsa.mmio.write(0x40, 512)


# In[57]:


O[:] = 0
O.flush()

start = time.perf_counter()

mhsa.mmio.write(0x00, 1)

while (mhsa.mmio.read(0x00) & 0x2) == 0:
    pass

end = time.perf_counter()

latency_ms = (end - start) * 1000

print("Latency =", latency_ms, "ms")


# In[58]:


O[:] = 0
O.flush()

start = time.perf_counter()

mhsa.mmio.write(0x00, 1)

while (mhsa.mmio.read(0x00) & 0x2) == 0:
    pass

end = time.perf_counter()

latency_ms = (end - start) * 1000

print("Latency =", latency_ms, "ms")


# In[59]:


times = []

for _ in range(10):

    O[:] = 0
    O.flush()

    start = time.perf_counter()

    mhsa.mmio.write(0x00, 1)

    while (mhsa.mmio.read(0x00) & 0x2) == 0:
        pass

    end = time.perf_counter()

    times.append((end-start)*1000)

print(times)
print("Average =", sum(times)/len(times), "ms")
print("Min =", min(times), "ms")
print("Max =", max(times), "ms")


# In[60]:


import numpy as np

q_np = np.loadtxt("q.txt")
k_np = np.loadtxt("k.txt")
v_np = np.loadtxt("v.txt")
gold = np.loadtxt("golden_output.txt")

Q[:] = np.round(q_np * 4096).astype(np.int16)
K[:] = np.round(k_np * 4096).astype(np.int16)
V[:] = np.round(v_np * 4096).astype(np.int16)

print("Q range:", np.min(Q), np.max(Q))
print("K range:", np.min(K), np.max(K))
print("V range:", np.min(V), np.max(V))


# In[61]:


O[:] = 0


# In[62]:


Q.flush()
K.flush()
V.flush()
O.flush()


# In[63]:


mhsa.mmio.write(0x10, Q.physical_address & 0xffffffff)
mhsa.mmio.write(0x14, Q.physical_address >> 32)

mhsa.mmio.write(0x1c, K.physical_address & 0xffffffff)
mhsa.mmio.write(0x20, K.physical_address >> 32)

mhsa.mmio.write(0x28, V.physical_address & 0xffffffff)
mhsa.mmio.write(0x2c, V.physical_address >> 32)

mhsa.mmio.write(0x34, O.physical_address & 0xffffffff)
mhsa.mmio.write(0x38, O.physical_address >> 32)

mhsa.mmio.write(0x40, 512)


# In[64]:


for off in [0x10,0x14,0x1c,0x20,0x28,0x2c,0x34,0x38,0x40]:
    print(hex(off), hex(mhsa.mmio.read(off)))


# In[65]:


mhsa.mmio.write(0x00, 1)

while (mhsa.mmio.read(0x00) & 0x2) == 0:
    pass

ctrl = mhsa.mmio.read(0x00)

print("CTRL =", hex(ctrl))
print("DONE =", (ctrl >> 1) & 1)
print("IDLE =", (ctrl >> 2) & 1)
print("READY =", (ctrl >> 3) & 1)


# In[66]:


O.invalidate()

print("First 32 outputs:")
print(O[:32])

print("Min =", np.min(O))
print("Max =", np.max(O))


# In[68]:


u = np.unique(O[:1024])

print("Unique count =", len(u))
print("First 20 unique values:")
print(u[:20])


# In[69]:


O.invalidate()

hw = O.astype(np.float32) / 65536.0

print("HW range:")
print(np.min(hw), np.max(hw))

print("Golden range:")
print(np.min(gold), np.max(gold))


# In[70]:


print("HW first 20:")
print(hw[:20])

print("\nGolden first 20:")
print(gold[:20])


# In[71]:


err = np.abs(hw - gold)

print("Max error =", np.max(err))
print("Mean error =", np.mean(err))
print("RMSE =", np.sqrt(np.mean((hw-gold)**2)))


# In[72]:


idx = np.argmax(err)

print("Index =", idx)

print("HW =", hw[idx])
print("Golden =", gold[idx])
print("Error =", err[idx])


# In[73]:


print("HW abs max =", np.max(np.abs(hw)))
print("Golden abs max =", np.max(np.abs(gold)))

print("Ratio =", np.max(np.abs(hw))/np.max(np.abs(gold)))


# In[74]:


scale_est = np.mean(np.abs(hw)) / np.mean(np.abs(gold))
print(scale_est)


# In[75]:


hw_scaled = hw / 64.0

err2 = np.abs(hw_scaled - gold)

print("Scaled max error =", np.max(err2))
print("Scaled mean error =", np.mean(err2))
print("Scaled RMSE =", np.sqrt(np.mean((hw_scaled-gold)**2)))


# In[76]:


ratio = hw / gold

valid = np.abs(gold) > 1e-3

print("Mean ratio =", np.mean(ratio[valid]))
print("Median ratio =", np.median(ratio[valid]))
print("Std ratio =", np.std(ratio[valid]))


# In[77]:


hw_correct = O.view(np.int32).astype(np.float64)/(2**22)

err = np.abs(hw_correct - gold)

print("Max error =", err.max())
print("Mean error =", err.mean())
print("RMSE =", np.sqrt(np.mean((hw_correct-gold)**2)))


# In[78]:


err = np.abs(hw_correct - gold)

idx = np.unravel_index(np.argmax(err), err.shape)

print("Worst location:", idx)
print("HW =", hw_correct[idx])
print("Golden =", gold[idx])
print("Error =", err[idx])


# In[79]:


idx = 45611

token   = idx // 768
channel = idx % 768
head    = channel // 64
dim     = channel % 64

print("token =", token)
print("channel =", channel)
print("head =", head)
print("dim =", dim)


# In[80]:


err = np.abs(hw_correct - gold)

print("Error > 0.1 :", np.sum(err > 0.1))
print("Error > 0.5 :", np.sum(err > 0.5))
print("Error > 1.0 :", np.sum(err > 1.0))
print("Total elems :", err.size)


# In[81]:


hw_r   = hw_correct.reshape(197,768)
gold_r = gold.reshape(197,768)

token = 59
head  = 4

start = head*64
end   = start+64

print("HW:")
print(hw_r[token,start:end])

print("\nGolden:")
print(gold_r[token,start:end])

print("\nError:")
print(np.abs(hw_r[token,start:end]-gold_r[token,start:end]))


# In[82]:


hw3   = hw_correct.reshape(197,12,64)
gold3 = gold.reshape(197,12,64)

for h in range(12):
    e = np.abs(hw3[:,h,:] - gold3[:,h,:])

    print(
        "Head", h,
        "mean =", np.mean(e),
        "max =", np.max(e)
    )


# In[ ]:





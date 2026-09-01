// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of Q
//        bit 31~0 - Q[31:0] (Read/Write)
// 0x14 : Data signal of Q
//        bit 31~0 - Q[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of K
//        bit 31~0 - K[31:0] (Read/Write)
// 0x20 : Data signal of K
//        bit 31~0 - K[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of V
//        bit 31~0 - V[31:0] (Read/Write)
// 0x2c : Data signal of V
//        bit 31~0 - V[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of O
//        bit 31~0 - O[31:0] (Read/Write)
// 0x38 : Data signal of O
//        bit 31~0 - O[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of scale
//        bit 23~0 - scale[23:0] (Read/Write)
//        others   - reserved
// 0x44 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMHSA_TOP_CONTROL_ADDR_AP_CTRL    0x00
#define XMHSA_TOP_CONTROL_ADDR_GIE        0x04
#define XMHSA_TOP_CONTROL_ADDR_IER        0x08
#define XMHSA_TOP_CONTROL_ADDR_ISR        0x0c
#define XMHSA_TOP_CONTROL_ADDR_Q_DATA     0x10
#define XMHSA_TOP_CONTROL_BITS_Q_DATA     64
#define XMHSA_TOP_CONTROL_ADDR_K_DATA     0x1c
#define XMHSA_TOP_CONTROL_BITS_K_DATA     64
#define XMHSA_TOP_CONTROL_ADDR_V_DATA     0x28
#define XMHSA_TOP_CONTROL_BITS_V_DATA     64
#define XMHSA_TOP_CONTROL_ADDR_O_DATA     0x34
#define XMHSA_TOP_CONTROL_BITS_O_DATA     64
#define XMHSA_TOP_CONTROL_ADDR_SCALE_DATA 0x40
#define XMHSA_TOP_CONTROL_BITS_SCALE_DATA 24


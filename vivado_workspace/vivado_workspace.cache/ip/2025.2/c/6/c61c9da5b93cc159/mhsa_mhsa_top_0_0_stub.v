// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Aug 26 20:36:12 2026
// Host        : NAV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mhsa_mhsa_top_0_0_stub.v
// Design      : mhsa_mhsa_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "mhsa_mhsa_top_0_0,mhsa_top,{}" *) (* CORE_GENERATION_INFO = "mhsa_mhsa_top_0_0,mhsa_top,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=mhsa_top,x_ipVersion=1.0,x_ipCoreRevision=2114758474,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=7,C_S_AXI_CONTROL_DATA_WIDTH=32,C_M_AXI_GMEM_Q_ID_WIDTH=1,C_M_AXI_GMEM_Q_ADDR_WIDTH=64,C_M_AXI_GMEM_Q_DATA_WIDTH=32,C_M_AXI_GMEM_Q_AWUSER_WIDTH=1,C_M_AXI_GMEM_Q_ARUSER_WIDTH=1,C_M_AXI_GMEM_Q_WUSER_WIDTH=1,C_M_AXI_GMEM_Q_RUSER_WIDTH=1,C_M_AXI_GMEM_Q_BUSER_WIDTH=1,C_M_AXI_GMEM_Q_USER_VALUE=0x00000000,C_M_AXI_GMEM_Q_PROT_VALUE=000,C_M_AXI_GMEM_Q_CACHE_VALUE=0011,C_M_AXI_GMEM_K_ID_WIDTH=1,C_M_AXI_GMEM_K_ADDR_WIDTH=64,C_M_AXI_GMEM_K_DATA_WIDTH=32,C_M_AXI_GMEM_K_AWUSER_WIDTH=1,C_M_AXI_GMEM_K_ARUSER_WIDTH=1,C_M_AXI_GMEM_K_WUSER_WIDTH=1,C_M_AXI_GMEM_K_RUSER_WIDTH=1,C_M_AXI_GMEM_K_BUSER_WIDTH=1,C_M_AXI_GMEM_K_USER_VALUE=0x00000000,C_M_AXI_GMEM_K_PROT_VALUE=000,C_M_AXI_GMEM_K_CACHE_VALUE=0011,C_M_AXI_GMEM_V_ID_WIDTH=1,C_M_AXI_GMEM_V_ADDR_WIDTH=64,C_M_AXI_GMEM_V_DATA_WIDTH=32,C_M_AXI_GMEM_V_AWUSER_WIDTH=1,C_M_AXI_GMEM_V_ARUSER_WIDTH=1,C_M_AXI_GMEM_V_WUSER_WIDTH=1,C_M_AXI_GMEM_V_RUSER_WIDTH=1,C_M_AXI_GMEM_V_BUSER_WIDTH=1,C_M_AXI_GMEM_V_USER_VALUE=0x00000000,C_M_AXI_GMEM_V_PROT_VALUE=000,C_M_AXI_GMEM_V_CACHE_VALUE=0011,C_M_AXI_GMEM_O_ID_WIDTH=1,C_M_AXI_GMEM_O_ADDR_WIDTH=64,C_M_AXI_GMEM_O_DATA_WIDTH=32,C_M_AXI_GMEM_O_AWUSER_WIDTH=1,C_M_AXI_GMEM_O_ARUSER_WIDTH=1,C_M_AXI_GMEM_O_WUSER_WIDTH=1,C_M_AXI_GMEM_O_RUSER_WIDTH=1,C_M_AXI_GMEM_O_BUSER_WIDTH=1,C_M_AXI_GMEM_O_USER_VALUE=0x00000000,C_M_AXI_GMEM_O_PROT_VALUE=000,C_M_AXI_GMEM_O_CACHE_VALUE=0011}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "mhsa_top,Vivado 2025.2" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_ARADDR, 
  s_axi_control_ARREADY, s_axi_control_ARVALID, s_axi_control_AWADDR, 
  s_axi_control_AWREADY, s_axi_control_AWVALID, s_axi_control_BREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, s_axi_control_RREADY, 
  s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, s_axi_control_WREADY, 
  s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, interrupt, 
  m_axi_gmem_q_ARADDR, m_axi_gmem_q_ARBURST, m_axi_gmem_q_ARCACHE, m_axi_gmem_q_ARID, 
  m_axi_gmem_q_ARLEN, m_axi_gmem_q_ARLOCK, m_axi_gmem_q_ARPROT, m_axi_gmem_q_ARQOS, 
  m_axi_gmem_q_ARREADY, m_axi_gmem_q_ARREGION, m_axi_gmem_q_ARSIZE, m_axi_gmem_q_ARVALID, 
  m_axi_gmem_q_AWADDR, m_axi_gmem_q_AWBURST, m_axi_gmem_q_AWCACHE, m_axi_gmem_q_AWID, 
  m_axi_gmem_q_AWLEN, m_axi_gmem_q_AWLOCK, m_axi_gmem_q_AWPROT, m_axi_gmem_q_AWQOS, 
  m_axi_gmem_q_AWREADY, m_axi_gmem_q_AWREGION, m_axi_gmem_q_AWSIZE, m_axi_gmem_q_AWVALID, 
  m_axi_gmem_q_BID, m_axi_gmem_q_BREADY, m_axi_gmem_q_BRESP, m_axi_gmem_q_BVALID, 
  m_axi_gmem_q_RDATA, m_axi_gmem_q_RID, m_axi_gmem_q_RLAST, m_axi_gmem_q_RREADY, 
  m_axi_gmem_q_RRESP, m_axi_gmem_q_RVALID, m_axi_gmem_q_WDATA, m_axi_gmem_q_WID, 
  m_axi_gmem_q_WLAST, m_axi_gmem_q_WREADY, m_axi_gmem_q_WSTRB, m_axi_gmem_q_WVALID, 
  m_axi_gmem_k_ARADDR, m_axi_gmem_k_ARBURST, m_axi_gmem_k_ARCACHE, m_axi_gmem_k_ARID, 
  m_axi_gmem_k_ARLEN, m_axi_gmem_k_ARLOCK, m_axi_gmem_k_ARPROT, m_axi_gmem_k_ARQOS, 
  m_axi_gmem_k_ARREADY, m_axi_gmem_k_ARREGION, m_axi_gmem_k_ARSIZE, m_axi_gmem_k_ARVALID, 
  m_axi_gmem_k_AWADDR, m_axi_gmem_k_AWBURST, m_axi_gmem_k_AWCACHE, m_axi_gmem_k_AWID, 
  m_axi_gmem_k_AWLEN, m_axi_gmem_k_AWLOCK, m_axi_gmem_k_AWPROT, m_axi_gmem_k_AWQOS, 
  m_axi_gmem_k_AWREADY, m_axi_gmem_k_AWREGION, m_axi_gmem_k_AWSIZE, m_axi_gmem_k_AWVALID, 
  m_axi_gmem_k_BID, m_axi_gmem_k_BREADY, m_axi_gmem_k_BRESP, m_axi_gmem_k_BVALID, 
  m_axi_gmem_k_RDATA, m_axi_gmem_k_RID, m_axi_gmem_k_RLAST, m_axi_gmem_k_RREADY, 
  m_axi_gmem_k_RRESP, m_axi_gmem_k_RVALID, m_axi_gmem_k_WDATA, m_axi_gmem_k_WID, 
  m_axi_gmem_k_WLAST, m_axi_gmem_k_WREADY, m_axi_gmem_k_WSTRB, m_axi_gmem_k_WVALID, 
  m_axi_gmem_v_ARADDR, m_axi_gmem_v_ARBURST, m_axi_gmem_v_ARCACHE, m_axi_gmem_v_ARID, 
  m_axi_gmem_v_ARLEN, m_axi_gmem_v_ARLOCK, m_axi_gmem_v_ARPROT, m_axi_gmem_v_ARQOS, 
  m_axi_gmem_v_ARREADY, m_axi_gmem_v_ARREGION, m_axi_gmem_v_ARSIZE, m_axi_gmem_v_ARVALID, 
  m_axi_gmem_v_AWADDR, m_axi_gmem_v_AWBURST, m_axi_gmem_v_AWCACHE, m_axi_gmem_v_AWID, 
  m_axi_gmem_v_AWLEN, m_axi_gmem_v_AWLOCK, m_axi_gmem_v_AWPROT, m_axi_gmem_v_AWQOS, 
  m_axi_gmem_v_AWREADY, m_axi_gmem_v_AWREGION, m_axi_gmem_v_AWSIZE, m_axi_gmem_v_AWVALID, 
  m_axi_gmem_v_BID, m_axi_gmem_v_BREADY, m_axi_gmem_v_BRESP, m_axi_gmem_v_BVALID, 
  m_axi_gmem_v_RDATA, m_axi_gmem_v_RID, m_axi_gmem_v_RLAST, m_axi_gmem_v_RREADY, 
  m_axi_gmem_v_RRESP, m_axi_gmem_v_RVALID, m_axi_gmem_v_WDATA, m_axi_gmem_v_WID, 
  m_axi_gmem_v_WLAST, m_axi_gmem_v_WREADY, m_axi_gmem_v_WSTRB, m_axi_gmem_v_WVALID, 
  m_axi_gmem_o_ARADDR, m_axi_gmem_o_ARBURST, m_axi_gmem_o_ARCACHE, m_axi_gmem_o_ARID, 
  m_axi_gmem_o_ARLEN, m_axi_gmem_o_ARLOCK, m_axi_gmem_o_ARPROT, m_axi_gmem_o_ARQOS, 
  m_axi_gmem_o_ARREADY, m_axi_gmem_o_ARREGION, m_axi_gmem_o_ARSIZE, m_axi_gmem_o_ARVALID, 
  m_axi_gmem_o_AWADDR, m_axi_gmem_o_AWBURST, m_axi_gmem_o_AWCACHE, m_axi_gmem_o_AWID, 
  m_axi_gmem_o_AWLEN, m_axi_gmem_o_AWLOCK, m_axi_gmem_o_AWPROT, m_axi_gmem_o_AWQOS, 
  m_axi_gmem_o_AWREADY, m_axi_gmem_o_AWREGION, m_axi_gmem_o_AWSIZE, m_axi_gmem_o_AWVALID, 
  m_axi_gmem_o_BID, m_axi_gmem_o_BREADY, m_axi_gmem_o_BRESP, m_axi_gmem_o_BVALID, 
  m_axi_gmem_o_RDATA, m_axi_gmem_o_RID, m_axi_gmem_o_RLAST, m_axi_gmem_o_RREADY, 
  m_axi_gmem_o_RRESP, m_axi_gmem_o_RVALID, m_axi_gmem_o_WDATA, m_axi_gmem_o_WID, 
  m_axi_gmem_o_WLAST, m_axi_gmem_o_WREADY, m_axi_gmem_o_WSTRB, m_axi_gmem_o_WVALID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_ARADDR[6:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[6:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,interrupt,m_axi_gmem_q_ARADDR[63:0],m_axi_gmem_q_ARBURST[1:0],m_axi_gmem_q_ARCACHE[3:0],m_axi_gmem_q_ARID[0:0],m_axi_gmem_q_ARLEN[7:0],m_axi_gmem_q_ARLOCK[1:0],m_axi_gmem_q_ARPROT[2:0],m_axi_gmem_q_ARQOS[3:0],m_axi_gmem_q_ARREADY,m_axi_gmem_q_ARREGION[3:0],m_axi_gmem_q_ARSIZE[2:0],m_axi_gmem_q_ARVALID,m_axi_gmem_q_AWADDR[63:0],m_axi_gmem_q_AWBURST[1:0],m_axi_gmem_q_AWCACHE[3:0],m_axi_gmem_q_AWID[0:0],m_axi_gmem_q_AWLEN[7:0],m_axi_gmem_q_AWLOCK[1:0],m_axi_gmem_q_AWPROT[2:0],m_axi_gmem_q_AWQOS[3:0],m_axi_gmem_q_AWREADY,m_axi_gmem_q_AWREGION[3:0],m_axi_gmem_q_AWSIZE[2:0],m_axi_gmem_q_AWVALID,m_axi_gmem_q_BID[0:0],m_axi_gmem_q_BREADY,m_axi_gmem_q_BRESP[1:0],m_axi_gmem_q_BVALID,m_axi_gmem_q_RDATA[31:0],m_axi_gmem_q_RID[0:0],m_axi_gmem_q_RLAST,m_axi_gmem_q_RREADY,m_axi_gmem_q_RRESP[1:0],m_axi_gmem_q_RVALID,m_axi_gmem_q_WDATA[31:0],m_axi_gmem_q_WID[0:0],m_axi_gmem_q_WLAST,m_axi_gmem_q_WREADY,m_axi_gmem_q_WSTRB[3:0],m_axi_gmem_q_WVALID,m_axi_gmem_k_ARADDR[63:0],m_axi_gmem_k_ARBURST[1:0],m_axi_gmem_k_ARCACHE[3:0],m_axi_gmem_k_ARID[0:0],m_axi_gmem_k_ARLEN[7:0],m_axi_gmem_k_ARLOCK[1:0],m_axi_gmem_k_ARPROT[2:0],m_axi_gmem_k_ARQOS[3:0],m_axi_gmem_k_ARREADY,m_axi_gmem_k_ARREGION[3:0],m_axi_gmem_k_ARSIZE[2:0],m_axi_gmem_k_ARVALID,m_axi_gmem_k_AWADDR[63:0],m_axi_gmem_k_AWBURST[1:0],m_axi_gmem_k_AWCACHE[3:0],m_axi_gmem_k_AWID[0:0],m_axi_gmem_k_AWLEN[7:0],m_axi_gmem_k_AWLOCK[1:0],m_axi_gmem_k_AWPROT[2:0],m_axi_gmem_k_AWQOS[3:0],m_axi_gmem_k_AWREADY,m_axi_gmem_k_AWREGION[3:0],m_axi_gmem_k_AWSIZE[2:0],m_axi_gmem_k_AWVALID,m_axi_gmem_k_BID[0:0],m_axi_gmem_k_BREADY,m_axi_gmem_k_BRESP[1:0],m_axi_gmem_k_BVALID,m_axi_gmem_k_RDATA[31:0],m_axi_gmem_k_RID[0:0],m_axi_gmem_k_RLAST,m_axi_gmem_k_RREADY,m_axi_gmem_k_RRESP[1:0],m_axi_gmem_k_RVALID,m_axi_gmem_k_WDATA[31:0],m_axi_gmem_k_WID[0:0],m_axi_gmem_k_WLAST,m_axi_gmem_k_WREADY,m_axi_gmem_k_WSTRB[3:0],m_axi_gmem_k_WVALID,m_axi_gmem_v_ARADDR[63:0],m_axi_gmem_v_ARBURST[1:0],m_axi_gmem_v_ARCACHE[3:0],m_axi_gmem_v_ARID[0:0],m_axi_gmem_v_ARLEN[7:0],m_axi_gmem_v_ARLOCK[1:0],m_axi_gmem_v_ARPROT[2:0],m_axi_gmem_v_ARQOS[3:0],m_axi_gmem_v_ARREADY,m_axi_gmem_v_ARREGION[3:0],m_axi_gmem_v_ARSIZE[2:0],m_axi_gmem_v_ARVALID,m_axi_gmem_v_AWADDR[63:0],m_axi_gmem_v_AWBURST[1:0],m_axi_gmem_v_AWCACHE[3:0],m_axi_gmem_v_AWID[0:0],m_axi_gmem_v_AWLEN[7:0],m_axi_gmem_v_AWLOCK[1:0],m_axi_gmem_v_AWPROT[2:0],m_axi_gmem_v_AWQOS[3:0],m_axi_gmem_v_AWREADY,m_axi_gmem_v_AWREGION[3:0],m_axi_gmem_v_AWSIZE[2:0],m_axi_gmem_v_AWVALID,m_axi_gmem_v_BID[0:0],m_axi_gmem_v_BREADY,m_axi_gmem_v_BRESP[1:0],m_axi_gmem_v_BVALID,m_axi_gmem_v_RDATA[31:0],m_axi_gmem_v_RID[0:0],m_axi_gmem_v_RLAST,m_axi_gmem_v_RREADY,m_axi_gmem_v_RRESP[1:0],m_axi_gmem_v_RVALID,m_axi_gmem_v_WDATA[31:0],m_axi_gmem_v_WID[0:0],m_axi_gmem_v_WLAST,m_axi_gmem_v_WREADY,m_axi_gmem_v_WSTRB[3:0],m_axi_gmem_v_WVALID,m_axi_gmem_o_ARADDR[63:0],m_axi_gmem_o_ARBURST[1:0],m_axi_gmem_o_ARCACHE[3:0],m_axi_gmem_o_ARID[0:0],m_axi_gmem_o_ARLEN[7:0],m_axi_gmem_o_ARLOCK[1:0],m_axi_gmem_o_ARPROT[2:0],m_axi_gmem_o_ARQOS[3:0],m_axi_gmem_o_ARREADY,m_axi_gmem_o_ARREGION[3:0],m_axi_gmem_o_ARSIZE[2:0],m_axi_gmem_o_ARVALID,m_axi_gmem_o_AWADDR[63:0],m_axi_gmem_o_AWBURST[1:0],m_axi_gmem_o_AWCACHE[3:0],m_axi_gmem_o_AWID[0:0],m_axi_gmem_o_AWLEN[7:0],m_axi_gmem_o_AWLOCK[1:0],m_axi_gmem_o_AWPROT[2:0],m_axi_gmem_o_AWQOS[3:0],m_axi_gmem_o_AWREADY,m_axi_gmem_o_AWREGION[3:0],m_axi_gmem_o_AWSIZE[2:0],m_axi_gmem_o_AWVALID,m_axi_gmem_o_BID[0:0],m_axi_gmem_o_BREADY,m_axi_gmem_o_BRESP[1:0],m_axi_gmem_o_BVALID,m_axi_gmem_o_RDATA[31:0],m_axi_gmem_o_RID[0:0],m_axi_gmem_o_RLAST,m_axi_gmem_o_RREADY,m_axi_gmem_o_RRESP[1:0],m_axi_gmem_o_RVALID,m_axi_gmem_o_WDATA[31:0],m_axi_gmem_o_WID[0:0],m_axi_gmem_o_WLAST,m_axi_gmem_o_WREADY,m_axi_gmem_o_WSTRB[3:0],m_axi_gmem_o_WVALID" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 96968727, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN mhsa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [6:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_gmem_q:m_axi_gmem_k:m_axi_gmem_v:m_axi_gmem_o, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mhsa_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_q, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 96968727, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN mhsa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_gmem_q_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARBURST" *) output [1:0]m_axi_gmem_q_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARCACHE" *) output [3:0]m_axi_gmem_q_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARID" *) output [0:0]m_axi_gmem_q_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARLEN" *) output [7:0]m_axi_gmem_q_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARLOCK" *) output [1:0]m_axi_gmem_q_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARPROT" *) output [2:0]m_axi_gmem_q_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARQOS" *) output [3:0]m_axi_gmem_q_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARREADY" *) input m_axi_gmem_q_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARREGION" *) output [3:0]m_axi_gmem_q_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARSIZE" *) output [2:0]m_axi_gmem_q_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARVALID" *) output m_axi_gmem_q_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWADDR" *) output [63:0]m_axi_gmem_q_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWBURST" *) output [1:0]m_axi_gmem_q_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWCACHE" *) output [3:0]m_axi_gmem_q_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWID" *) output [0:0]m_axi_gmem_q_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWLEN" *) output [7:0]m_axi_gmem_q_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWLOCK" *) output [1:0]m_axi_gmem_q_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWPROT" *) output [2:0]m_axi_gmem_q_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWQOS" *) output [3:0]m_axi_gmem_q_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWREADY" *) input m_axi_gmem_q_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWREGION" *) output [3:0]m_axi_gmem_q_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWSIZE" *) output [2:0]m_axi_gmem_q_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWVALID" *) output m_axi_gmem_q_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q BID" *) input [0:0]m_axi_gmem_q_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q BREADY" *) output m_axi_gmem_q_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q BRESP" *) input [1:0]m_axi_gmem_q_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q BVALID" *) input m_axi_gmem_q_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RDATA" *) input [31:0]m_axi_gmem_q_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RID" *) input [0:0]m_axi_gmem_q_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RLAST" *) input m_axi_gmem_q_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RREADY" *) output m_axi_gmem_q_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RRESP" *) input [1:0]m_axi_gmem_q_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RVALID" *) input m_axi_gmem_q_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WDATA" *) output [31:0]m_axi_gmem_q_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WID" *) output [0:0]m_axi_gmem_q_WID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WLAST" *) output m_axi_gmem_q_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WREADY" *) input m_axi_gmem_q_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WSTRB" *) output [3:0]m_axi_gmem_q_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WVALID" *) output m_axi_gmem_q_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_k, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 96968727, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN mhsa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_gmem_k_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARBURST" *) output [1:0]m_axi_gmem_k_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARCACHE" *) output [3:0]m_axi_gmem_k_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARID" *) output [0:0]m_axi_gmem_k_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARLEN" *) output [7:0]m_axi_gmem_k_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARLOCK" *) output [1:0]m_axi_gmem_k_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARPROT" *) output [2:0]m_axi_gmem_k_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARQOS" *) output [3:0]m_axi_gmem_k_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARREADY" *) input m_axi_gmem_k_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARREGION" *) output [3:0]m_axi_gmem_k_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARSIZE" *) output [2:0]m_axi_gmem_k_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARVALID" *) output m_axi_gmem_k_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWADDR" *) output [63:0]m_axi_gmem_k_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWBURST" *) output [1:0]m_axi_gmem_k_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWCACHE" *) output [3:0]m_axi_gmem_k_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWID" *) output [0:0]m_axi_gmem_k_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWLEN" *) output [7:0]m_axi_gmem_k_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWLOCK" *) output [1:0]m_axi_gmem_k_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWPROT" *) output [2:0]m_axi_gmem_k_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWQOS" *) output [3:0]m_axi_gmem_k_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWREADY" *) input m_axi_gmem_k_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWREGION" *) output [3:0]m_axi_gmem_k_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWSIZE" *) output [2:0]m_axi_gmem_k_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWVALID" *) output m_axi_gmem_k_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k BID" *) input [0:0]m_axi_gmem_k_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k BREADY" *) output m_axi_gmem_k_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k BRESP" *) input [1:0]m_axi_gmem_k_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k BVALID" *) input m_axi_gmem_k_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RDATA" *) input [31:0]m_axi_gmem_k_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RID" *) input [0:0]m_axi_gmem_k_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RLAST" *) input m_axi_gmem_k_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RREADY" *) output m_axi_gmem_k_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RRESP" *) input [1:0]m_axi_gmem_k_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RVALID" *) input m_axi_gmem_k_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WDATA" *) output [31:0]m_axi_gmem_k_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WID" *) output [0:0]m_axi_gmem_k_WID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WLAST" *) output m_axi_gmem_k_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WREADY" *) input m_axi_gmem_k_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WSTRB" *) output [3:0]m_axi_gmem_k_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WVALID" *) output m_axi_gmem_k_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_v, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 96968727, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN mhsa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_gmem_v_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARBURST" *) output [1:0]m_axi_gmem_v_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARCACHE" *) output [3:0]m_axi_gmem_v_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARID" *) output [0:0]m_axi_gmem_v_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARLEN" *) output [7:0]m_axi_gmem_v_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARLOCK" *) output [1:0]m_axi_gmem_v_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARPROT" *) output [2:0]m_axi_gmem_v_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARQOS" *) output [3:0]m_axi_gmem_v_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARREADY" *) input m_axi_gmem_v_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARREGION" *) output [3:0]m_axi_gmem_v_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARSIZE" *) output [2:0]m_axi_gmem_v_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARVALID" *) output m_axi_gmem_v_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWADDR" *) output [63:0]m_axi_gmem_v_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWBURST" *) output [1:0]m_axi_gmem_v_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWCACHE" *) output [3:0]m_axi_gmem_v_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWID" *) output [0:0]m_axi_gmem_v_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWLEN" *) output [7:0]m_axi_gmem_v_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWLOCK" *) output [1:0]m_axi_gmem_v_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWPROT" *) output [2:0]m_axi_gmem_v_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWQOS" *) output [3:0]m_axi_gmem_v_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWREADY" *) input m_axi_gmem_v_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWREGION" *) output [3:0]m_axi_gmem_v_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWSIZE" *) output [2:0]m_axi_gmem_v_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWVALID" *) output m_axi_gmem_v_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v BID" *) input [0:0]m_axi_gmem_v_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v BREADY" *) output m_axi_gmem_v_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v BRESP" *) input [1:0]m_axi_gmem_v_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v BVALID" *) input m_axi_gmem_v_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RDATA" *) input [31:0]m_axi_gmem_v_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RID" *) input [0:0]m_axi_gmem_v_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RLAST" *) input m_axi_gmem_v_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RREADY" *) output m_axi_gmem_v_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RRESP" *) input [1:0]m_axi_gmem_v_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RVALID" *) input m_axi_gmem_v_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WDATA" *) output [31:0]m_axi_gmem_v_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WID" *) output [0:0]m_axi_gmem_v_WID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WLAST" *) output m_axi_gmem_v_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WREADY" *) input m_axi_gmem_v_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WSTRB" *) output [3:0]m_axi_gmem_v_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WVALID" *) output m_axi_gmem_v_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_o, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 96968727, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN mhsa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_gmem_o_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARBURST" *) output [1:0]m_axi_gmem_o_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARCACHE" *) output [3:0]m_axi_gmem_o_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARID" *) output [0:0]m_axi_gmem_o_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARLEN" *) output [7:0]m_axi_gmem_o_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARLOCK" *) output [1:0]m_axi_gmem_o_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARPROT" *) output [2:0]m_axi_gmem_o_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARQOS" *) output [3:0]m_axi_gmem_o_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARREADY" *) input m_axi_gmem_o_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARREGION" *) output [3:0]m_axi_gmem_o_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARSIZE" *) output [2:0]m_axi_gmem_o_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARVALID" *) output m_axi_gmem_o_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWADDR" *) output [63:0]m_axi_gmem_o_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWBURST" *) output [1:0]m_axi_gmem_o_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWCACHE" *) output [3:0]m_axi_gmem_o_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWID" *) output [0:0]m_axi_gmem_o_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWLEN" *) output [7:0]m_axi_gmem_o_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWLOCK" *) output [1:0]m_axi_gmem_o_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWPROT" *) output [2:0]m_axi_gmem_o_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWQOS" *) output [3:0]m_axi_gmem_o_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWREADY" *) input m_axi_gmem_o_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWREGION" *) output [3:0]m_axi_gmem_o_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWSIZE" *) output [2:0]m_axi_gmem_o_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWVALID" *) output m_axi_gmem_o_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o BID" *) input [0:0]m_axi_gmem_o_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o BREADY" *) output m_axi_gmem_o_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o BRESP" *) input [1:0]m_axi_gmem_o_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o BVALID" *) input m_axi_gmem_o_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RDATA" *) input [31:0]m_axi_gmem_o_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RID" *) input [0:0]m_axi_gmem_o_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RLAST" *) input m_axi_gmem_o_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RREADY" *) output m_axi_gmem_o_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RRESP" *) input [1:0]m_axi_gmem_o_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RVALID" *) input m_axi_gmem_o_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WDATA" *) output [31:0]m_axi_gmem_o_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WID" *) output [0:0]m_axi_gmem_o_WID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WLAST" *) output m_axi_gmem_o_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WREADY" *) input m_axi_gmem_o_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WSTRB" *) output [3:0]m_axi_gmem_o_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WVALID" *) output m_axi_gmem_o_WVALID;
endmodule

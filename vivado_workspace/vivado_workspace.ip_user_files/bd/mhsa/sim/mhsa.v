//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Wed Aug 26 20:23:28 2026
//Host        : NAV running 64-bit major release  (build 9200)
//Command     : generate_target mhsa.bd
//Design      : mhsa
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mhsa,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mhsa,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "mhsa.hwdef" *) 
module mhsa
   ();

  wire [63:0]mhsa_top_0_m_axi_gmem_k_ARADDR;
  wire [1:0]mhsa_top_0_m_axi_gmem_k_ARBURST;
  wire [3:0]mhsa_top_0_m_axi_gmem_k_ARCACHE;
  wire [0:0]mhsa_top_0_m_axi_gmem_k_ARID;
  wire [7:0]mhsa_top_0_m_axi_gmem_k_ARLEN;
  wire [1:0]mhsa_top_0_m_axi_gmem_k_ARLOCK;
  wire [2:0]mhsa_top_0_m_axi_gmem_k_ARPROT;
  wire [3:0]mhsa_top_0_m_axi_gmem_k_ARQOS;
  wire mhsa_top_0_m_axi_gmem_k_ARREADY;
  wire [2:0]mhsa_top_0_m_axi_gmem_k_ARSIZE;
  wire mhsa_top_0_m_axi_gmem_k_ARVALID;
  wire [31:0]mhsa_top_0_m_axi_gmem_k_RDATA;
  wire [0:0]mhsa_top_0_m_axi_gmem_k_RID;
  wire mhsa_top_0_m_axi_gmem_k_RLAST;
  wire mhsa_top_0_m_axi_gmem_k_RREADY;
  wire [1:0]mhsa_top_0_m_axi_gmem_k_RRESP;
  wire mhsa_top_0_m_axi_gmem_k_RVALID;
  wire [63:0]mhsa_top_0_m_axi_gmem_o_AWADDR;
  wire [1:0]mhsa_top_0_m_axi_gmem_o_AWBURST;
  wire [3:0]mhsa_top_0_m_axi_gmem_o_AWCACHE;
  wire [0:0]mhsa_top_0_m_axi_gmem_o_AWID;
  wire [7:0]mhsa_top_0_m_axi_gmem_o_AWLEN;
  wire [1:0]mhsa_top_0_m_axi_gmem_o_AWLOCK;
  wire [2:0]mhsa_top_0_m_axi_gmem_o_AWPROT;
  wire [3:0]mhsa_top_0_m_axi_gmem_o_AWQOS;
  wire mhsa_top_0_m_axi_gmem_o_AWREADY;
  wire [2:0]mhsa_top_0_m_axi_gmem_o_AWSIZE;
  wire mhsa_top_0_m_axi_gmem_o_AWVALID;
  wire [0:0]mhsa_top_0_m_axi_gmem_o_BID;
  wire mhsa_top_0_m_axi_gmem_o_BREADY;
  wire [1:0]mhsa_top_0_m_axi_gmem_o_BRESP;
  wire mhsa_top_0_m_axi_gmem_o_BVALID;
  wire [31:0]mhsa_top_0_m_axi_gmem_o_WDATA;
  wire mhsa_top_0_m_axi_gmem_o_WLAST;
  wire mhsa_top_0_m_axi_gmem_o_WREADY;
  wire [3:0]mhsa_top_0_m_axi_gmem_o_WSTRB;
  wire mhsa_top_0_m_axi_gmem_o_WVALID;
  wire [63:0]mhsa_top_0_m_axi_gmem_q_ARADDR;
  wire [1:0]mhsa_top_0_m_axi_gmem_q_ARBURST;
  wire [3:0]mhsa_top_0_m_axi_gmem_q_ARCACHE;
  wire [0:0]mhsa_top_0_m_axi_gmem_q_ARID;
  wire [7:0]mhsa_top_0_m_axi_gmem_q_ARLEN;
  wire [1:0]mhsa_top_0_m_axi_gmem_q_ARLOCK;
  wire [2:0]mhsa_top_0_m_axi_gmem_q_ARPROT;
  wire [3:0]mhsa_top_0_m_axi_gmem_q_ARQOS;
  wire mhsa_top_0_m_axi_gmem_q_ARREADY;
  wire [2:0]mhsa_top_0_m_axi_gmem_q_ARSIZE;
  wire mhsa_top_0_m_axi_gmem_q_ARVALID;
  wire [31:0]mhsa_top_0_m_axi_gmem_q_RDATA;
  wire [0:0]mhsa_top_0_m_axi_gmem_q_RID;
  wire mhsa_top_0_m_axi_gmem_q_RLAST;
  wire mhsa_top_0_m_axi_gmem_q_RREADY;
  wire [1:0]mhsa_top_0_m_axi_gmem_q_RRESP;
  wire mhsa_top_0_m_axi_gmem_q_RVALID;
  wire [63:0]mhsa_top_0_m_axi_gmem_v_ARADDR;
  wire [1:0]mhsa_top_0_m_axi_gmem_v_ARBURST;
  wire [3:0]mhsa_top_0_m_axi_gmem_v_ARCACHE;
  wire [0:0]mhsa_top_0_m_axi_gmem_v_ARID;
  wire [7:0]mhsa_top_0_m_axi_gmem_v_ARLEN;
  wire [1:0]mhsa_top_0_m_axi_gmem_v_ARLOCK;
  wire [2:0]mhsa_top_0_m_axi_gmem_v_ARPROT;
  wire [3:0]mhsa_top_0_m_axi_gmem_v_ARQOS;
  wire mhsa_top_0_m_axi_gmem_v_ARREADY;
  wire [2:0]mhsa_top_0_m_axi_gmem_v_ARSIZE;
  wire mhsa_top_0_m_axi_gmem_v_ARVALID;
  wire [31:0]mhsa_top_0_m_axi_gmem_v_RDATA;
  wire [0:0]mhsa_top_0_m_axi_gmem_v_RID;
  wire mhsa_top_0_m_axi_gmem_v_RLAST;
  wire mhsa_top_0_m_axi_gmem_v_RREADY;
  wire [1:0]mhsa_top_0_m_axi_gmem_v_RRESP;
  wire mhsa_top_0_m_axi_gmem_v_RVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [48:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [127:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [48:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_1_M00_AXI_ARLEN;
  wire [0:0]smartconnect_1_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire [3:0]smartconnect_1_M00_AXI_ARQOS;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [127:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [48:0]smartconnect_2_M00_AXI_ARADDR;
  wire [1:0]smartconnect_2_M00_AXI_ARBURST;
  wire [3:0]smartconnect_2_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_2_M00_AXI_ARLEN;
  wire [0:0]smartconnect_2_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_2_M00_AXI_ARPROT;
  wire [3:0]smartconnect_2_M00_AXI_ARQOS;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire [2:0]smartconnect_2_M00_AXI_ARSIZE;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [127:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RLAST;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [48:0]smartconnect_3_M00_AXI_AWADDR;
  wire [1:0]smartconnect_3_M00_AXI_AWBURST;
  wire [3:0]smartconnect_3_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_3_M00_AXI_AWLEN;
  wire [0:0]smartconnect_3_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_3_M00_AXI_AWPROT;
  wire [3:0]smartconnect_3_M00_AXI_AWQOS;
  wire smartconnect_3_M00_AXI_AWREADY;
  wire [2:0]smartconnect_3_M00_AXI_AWSIZE;
  wire smartconnect_3_M00_AXI_AWVALID;
  wire smartconnect_3_M00_AXI_BREADY;
  wire [1:0]smartconnect_3_M00_AXI_BRESP;
  wire smartconnect_3_M00_AXI_BVALID;
  wire [127:0]smartconnect_3_M00_AXI_WDATA;
  wire smartconnect_3_M00_AXI_WLAST;
  wire smartconnect_3_M00_AXI_WREADY;
  wire [15:0]smartconnect_3_M00_AXI_WSTRB;
  wire smartconnect_3_M00_AXI_WVALID;
  wire [6:0]smartconnect_4_M00_AXI_ARADDR;
  wire smartconnect_4_M00_AXI_ARREADY;
  wire smartconnect_4_M00_AXI_ARVALID;
  wire [6:0]smartconnect_4_M00_AXI_AWADDR;
  wire smartconnect_4_M00_AXI_AWREADY;
  wire smartconnect_4_M00_AXI_AWVALID;
  wire smartconnect_4_M00_AXI_BREADY;
  wire [1:0]smartconnect_4_M00_AXI_BRESP;
  wire smartconnect_4_M00_AXI_BVALID;
  wire [31:0]smartconnect_4_M00_AXI_RDATA;
  wire smartconnect_4_M00_AXI_RREADY;
  wire [1:0]smartconnect_4_M00_AXI_RRESP;
  wire smartconnect_4_M00_AXI_RVALID;
  wire [31:0]smartconnect_4_M00_AXI_WDATA;
  wire smartconnect_4_M00_AXI_WREADY;
  wire [3:0]smartconnect_4_M00_AXI_WSTRB;
  wire smartconnect_4_M00_AXI_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  mhsa_mhsa_top_0_0 mhsa_top_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_gmem_k_ARADDR(mhsa_top_0_m_axi_gmem_k_ARADDR),
        .m_axi_gmem_k_ARBURST(mhsa_top_0_m_axi_gmem_k_ARBURST),
        .m_axi_gmem_k_ARCACHE(mhsa_top_0_m_axi_gmem_k_ARCACHE),
        .m_axi_gmem_k_ARID(mhsa_top_0_m_axi_gmem_k_ARID),
        .m_axi_gmem_k_ARLEN(mhsa_top_0_m_axi_gmem_k_ARLEN),
        .m_axi_gmem_k_ARLOCK(mhsa_top_0_m_axi_gmem_k_ARLOCK),
        .m_axi_gmem_k_ARPROT(mhsa_top_0_m_axi_gmem_k_ARPROT),
        .m_axi_gmem_k_ARQOS(mhsa_top_0_m_axi_gmem_k_ARQOS),
        .m_axi_gmem_k_ARREADY(mhsa_top_0_m_axi_gmem_k_ARREADY),
        .m_axi_gmem_k_ARSIZE(mhsa_top_0_m_axi_gmem_k_ARSIZE),
        .m_axi_gmem_k_ARVALID(mhsa_top_0_m_axi_gmem_k_ARVALID),
        .m_axi_gmem_k_AWREADY(1'b0),
        .m_axi_gmem_k_BID(1'b0),
        .m_axi_gmem_k_BRESP({1'b0,1'b0}),
        .m_axi_gmem_k_BVALID(1'b0),
        .m_axi_gmem_k_RDATA(mhsa_top_0_m_axi_gmem_k_RDATA),
        .m_axi_gmem_k_RID(mhsa_top_0_m_axi_gmem_k_RID),
        .m_axi_gmem_k_RLAST(mhsa_top_0_m_axi_gmem_k_RLAST),
        .m_axi_gmem_k_RREADY(mhsa_top_0_m_axi_gmem_k_RREADY),
        .m_axi_gmem_k_RRESP(mhsa_top_0_m_axi_gmem_k_RRESP),
        .m_axi_gmem_k_RVALID(mhsa_top_0_m_axi_gmem_k_RVALID),
        .m_axi_gmem_k_WREADY(1'b0),
        .m_axi_gmem_o_ARREADY(1'b0),
        .m_axi_gmem_o_AWADDR(mhsa_top_0_m_axi_gmem_o_AWADDR),
        .m_axi_gmem_o_AWBURST(mhsa_top_0_m_axi_gmem_o_AWBURST),
        .m_axi_gmem_o_AWCACHE(mhsa_top_0_m_axi_gmem_o_AWCACHE),
        .m_axi_gmem_o_AWID(mhsa_top_0_m_axi_gmem_o_AWID),
        .m_axi_gmem_o_AWLEN(mhsa_top_0_m_axi_gmem_o_AWLEN),
        .m_axi_gmem_o_AWLOCK(mhsa_top_0_m_axi_gmem_o_AWLOCK),
        .m_axi_gmem_o_AWPROT(mhsa_top_0_m_axi_gmem_o_AWPROT),
        .m_axi_gmem_o_AWQOS(mhsa_top_0_m_axi_gmem_o_AWQOS),
        .m_axi_gmem_o_AWREADY(mhsa_top_0_m_axi_gmem_o_AWREADY),
        .m_axi_gmem_o_AWSIZE(mhsa_top_0_m_axi_gmem_o_AWSIZE),
        .m_axi_gmem_o_AWVALID(mhsa_top_0_m_axi_gmem_o_AWVALID),
        .m_axi_gmem_o_BID(mhsa_top_0_m_axi_gmem_o_BID),
        .m_axi_gmem_o_BREADY(mhsa_top_0_m_axi_gmem_o_BREADY),
        .m_axi_gmem_o_BRESP(mhsa_top_0_m_axi_gmem_o_BRESP),
        .m_axi_gmem_o_BVALID(mhsa_top_0_m_axi_gmem_o_BVALID),
        .m_axi_gmem_o_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem_o_RID(1'b0),
        .m_axi_gmem_o_RLAST(1'b0),
        .m_axi_gmem_o_RRESP({1'b0,1'b0}),
        .m_axi_gmem_o_RVALID(1'b0),
        .m_axi_gmem_o_WDATA(mhsa_top_0_m_axi_gmem_o_WDATA),
        .m_axi_gmem_o_WLAST(mhsa_top_0_m_axi_gmem_o_WLAST),
        .m_axi_gmem_o_WREADY(mhsa_top_0_m_axi_gmem_o_WREADY),
        .m_axi_gmem_o_WSTRB(mhsa_top_0_m_axi_gmem_o_WSTRB),
        .m_axi_gmem_o_WVALID(mhsa_top_0_m_axi_gmem_o_WVALID),
        .m_axi_gmem_q_ARADDR(mhsa_top_0_m_axi_gmem_q_ARADDR),
        .m_axi_gmem_q_ARBURST(mhsa_top_0_m_axi_gmem_q_ARBURST),
        .m_axi_gmem_q_ARCACHE(mhsa_top_0_m_axi_gmem_q_ARCACHE),
        .m_axi_gmem_q_ARID(mhsa_top_0_m_axi_gmem_q_ARID),
        .m_axi_gmem_q_ARLEN(mhsa_top_0_m_axi_gmem_q_ARLEN),
        .m_axi_gmem_q_ARLOCK(mhsa_top_0_m_axi_gmem_q_ARLOCK),
        .m_axi_gmem_q_ARPROT(mhsa_top_0_m_axi_gmem_q_ARPROT),
        .m_axi_gmem_q_ARQOS(mhsa_top_0_m_axi_gmem_q_ARQOS),
        .m_axi_gmem_q_ARREADY(mhsa_top_0_m_axi_gmem_q_ARREADY),
        .m_axi_gmem_q_ARSIZE(mhsa_top_0_m_axi_gmem_q_ARSIZE),
        .m_axi_gmem_q_ARVALID(mhsa_top_0_m_axi_gmem_q_ARVALID),
        .m_axi_gmem_q_AWREADY(1'b0),
        .m_axi_gmem_q_BID(1'b0),
        .m_axi_gmem_q_BRESP({1'b0,1'b0}),
        .m_axi_gmem_q_BVALID(1'b0),
        .m_axi_gmem_q_RDATA(mhsa_top_0_m_axi_gmem_q_RDATA),
        .m_axi_gmem_q_RID(mhsa_top_0_m_axi_gmem_q_RID),
        .m_axi_gmem_q_RLAST(mhsa_top_0_m_axi_gmem_q_RLAST),
        .m_axi_gmem_q_RREADY(mhsa_top_0_m_axi_gmem_q_RREADY),
        .m_axi_gmem_q_RRESP(mhsa_top_0_m_axi_gmem_q_RRESP),
        .m_axi_gmem_q_RVALID(mhsa_top_0_m_axi_gmem_q_RVALID),
        .m_axi_gmem_q_WREADY(1'b0),
        .m_axi_gmem_v_ARADDR(mhsa_top_0_m_axi_gmem_v_ARADDR),
        .m_axi_gmem_v_ARBURST(mhsa_top_0_m_axi_gmem_v_ARBURST),
        .m_axi_gmem_v_ARCACHE(mhsa_top_0_m_axi_gmem_v_ARCACHE),
        .m_axi_gmem_v_ARID(mhsa_top_0_m_axi_gmem_v_ARID),
        .m_axi_gmem_v_ARLEN(mhsa_top_0_m_axi_gmem_v_ARLEN),
        .m_axi_gmem_v_ARLOCK(mhsa_top_0_m_axi_gmem_v_ARLOCK),
        .m_axi_gmem_v_ARPROT(mhsa_top_0_m_axi_gmem_v_ARPROT),
        .m_axi_gmem_v_ARQOS(mhsa_top_0_m_axi_gmem_v_ARQOS),
        .m_axi_gmem_v_ARREADY(mhsa_top_0_m_axi_gmem_v_ARREADY),
        .m_axi_gmem_v_ARSIZE(mhsa_top_0_m_axi_gmem_v_ARSIZE),
        .m_axi_gmem_v_ARVALID(mhsa_top_0_m_axi_gmem_v_ARVALID),
        .m_axi_gmem_v_AWREADY(1'b0),
        .m_axi_gmem_v_BID(1'b0),
        .m_axi_gmem_v_BRESP({1'b0,1'b0}),
        .m_axi_gmem_v_BVALID(1'b0),
        .m_axi_gmem_v_RDATA(mhsa_top_0_m_axi_gmem_v_RDATA),
        .m_axi_gmem_v_RID(mhsa_top_0_m_axi_gmem_v_RID),
        .m_axi_gmem_v_RLAST(mhsa_top_0_m_axi_gmem_v_RLAST),
        .m_axi_gmem_v_RREADY(mhsa_top_0_m_axi_gmem_v_RREADY),
        .m_axi_gmem_v_RRESP(mhsa_top_0_m_axi_gmem_v_RRESP),
        .m_axi_gmem_v_RVALID(mhsa_top_0_m_axi_gmem_v_RVALID),
        .m_axi_gmem_v_WREADY(1'b0),
        .s_axi_control_ARADDR(smartconnect_4_M00_AXI_ARADDR),
        .s_axi_control_ARREADY(smartconnect_4_M00_AXI_ARREADY),
        .s_axi_control_ARVALID(smartconnect_4_M00_AXI_ARVALID),
        .s_axi_control_AWADDR(smartconnect_4_M00_AXI_AWADDR),
        .s_axi_control_AWREADY(smartconnect_4_M00_AXI_AWREADY),
        .s_axi_control_AWVALID(smartconnect_4_M00_AXI_AWVALID),
        .s_axi_control_BREADY(smartconnect_4_M00_AXI_BREADY),
        .s_axi_control_BRESP(smartconnect_4_M00_AXI_BRESP),
        .s_axi_control_BVALID(smartconnect_4_M00_AXI_BVALID),
        .s_axi_control_RDATA(smartconnect_4_M00_AXI_RDATA),
        .s_axi_control_RREADY(smartconnect_4_M00_AXI_RREADY),
        .s_axi_control_RRESP(smartconnect_4_M00_AXI_RRESP),
        .s_axi_control_RVALID(smartconnect_4_M00_AXI_RVALID),
        .s_axi_control_WDATA(smartconnect_4_M00_AXI_WDATA),
        .s_axi_control_WREADY(smartconnect_4_M00_AXI_WREADY),
        .s_axi_control_WSTRB(smartconnect_4_M00_AXI_WSTRB),
        .s_axi_control_WVALID(smartconnect_4_M00_AXI_WVALID));
  mhsa_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  mhsa_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .S00_AXI_araddr(mhsa_top_0_m_axi_gmem_q_ARADDR),
        .S00_AXI_arburst(mhsa_top_0_m_axi_gmem_q_ARBURST),
        .S00_AXI_arcache(mhsa_top_0_m_axi_gmem_q_ARCACHE),
        .S00_AXI_arid(mhsa_top_0_m_axi_gmem_q_ARID),
        .S00_AXI_arlen(mhsa_top_0_m_axi_gmem_q_ARLEN),
        .S00_AXI_arlock(mhsa_top_0_m_axi_gmem_q_ARLOCK[0]),
        .S00_AXI_arprot(mhsa_top_0_m_axi_gmem_q_ARPROT),
        .S00_AXI_arqos(mhsa_top_0_m_axi_gmem_q_ARQOS),
        .S00_AXI_arready(mhsa_top_0_m_axi_gmem_q_ARREADY),
        .S00_AXI_arsize(mhsa_top_0_m_axi_gmem_q_ARSIZE),
        .S00_AXI_arvalid(mhsa_top_0_m_axi_gmem_q_ARVALID),
        .S00_AXI_rdata(mhsa_top_0_m_axi_gmem_q_RDATA),
        .S00_AXI_rid(mhsa_top_0_m_axi_gmem_q_RID),
        .S00_AXI_rlast(mhsa_top_0_m_axi_gmem_q_RLAST),
        .S00_AXI_rready(mhsa_top_0_m_axi_gmem_q_RREADY),
        .S00_AXI_rresp(mhsa_top_0_m_axi_gmem_q_RRESP),
        .S00_AXI_rvalid(mhsa_top_0_m_axi_gmem_q_RVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  mhsa_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .S00_AXI_araddr(mhsa_top_0_m_axi_gmem_k_ARADDR),
        .S00_AXI_arburst(mhsa_top_0_m_axi_gmem_k_ARBURST),
        .S00_AXI_arcache(mhsa_top_0_m_axi_gmem_k_ARCACHE),
        .S00_AXI_arid(mhsa_top_0_m_axi_gmem_k_ARID),
        .S00_AXI_arlen(mhsa_top_0_m_axi_gmem_k_ARLEN),
        .S00_AXI_arlock(mhsa_top_0_m_axi_gmem_k_ARLOCK[0]),
        .S00_AXI_arprot(mhsa_top_0_m_axi_gmem_k_ARPROT),
        .S00_AXI_arqos(mhsa_top_0_m_axi_gmem_k_ARQOS),
        .S00_AXI_arready(mhsa_top_0_m_axi_gmem_k_ARREADY),
        .S00_AXI_arsize(mhsa_top_0_m_axi_gmem_k_ARSIZE),
        .S00_AXI_arvalid(mhsa_top_0_m_axi_gmem_k_ARVALID),
        .S00_AXI_rdata(mhsa_top_0_m_axi_gmem_k_RDATA),
        .S00_AXI_rid(mhsa_top_0_m_axi_gmem_k_RID),
        .S00_AXI_rlast(mhsa_top_0_m_axi_gmem_k_RLAST),
        .S00_AXI_rready(mhsa_top_0_m_axi_gmem_k_RREADY),
        .S00_AXI_rresp(mhsa_top_0_m_axi_gmem_k_RRESP),
        .S00_AXI_rvalid(mhsa_top_0_m_axi_gmem_k_RVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  mhsa_smartconnect_2_0 smartconnect_2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_2_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_2_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_2_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_2_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .S00_AXI_araddr(mhsa_top_0_m_axi_gmem_v_ARADDR),
        .S00_AXI_arburst(mhsa_top_0_m_axi_gmem_v_ARBURST),
        .S00_AXI_arcache(mhsa_top_0_m_axi_gmem_v_ARCACHE),
        .S00_AXI_arid(mhsa_top_0_m_axi_gmem_v_ARID),
        .S00_AXI_arlen(mhsa_top_0_m_axi_gmem_v_ARLEN),
        .S00_AXI_arlock(mhsa_top_0_m_axi_gmem_v_ARLOCK[0]),
        .S00_AXI_arprot(mhsa_top_0_m_axi_gmem_v_ARPROT),
        .S00_AXI_arqos(mhsa_top_0_m_axi_gmem_v_ARQOS),
        .S00_AXI_arready(mhsa_top_0_m_axi_gmem_v_ARREADY),
        .S00_AXI_arsize(mhsa_top_0_m_axi_gmem_v_ARSIZE),
        .S00_AXI_arvalid(mhsa_top_0_m_axi_gmem_v_ARVALID),
        .S00_AXI_rdata(mhsa_top_0_m_axi_gmem_v_RDATA),
        .S00_AXI_rid(mhsa_top_0_m_axi_gmem_v_RID),
        .S00_AXI_rlast(mhsa_top_0_m_axi_gmem_v_RLAST),
        .S00_AXI_rready(mhsa_top_0_m_axi_gmem_v_RREADY),
        .S00_AXI_rresp(mhsa_top_0_m_axi_gmem_v_RRESP),
        .S00_AXI_rvalid(mhsa_top_0_m_axi_gmem_v_RVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  mhsa_smartconnect_3_0 smartconnect_3
       (.M00_AXI_awaddr(smartconnect_3_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_3_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_3_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_3_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_3_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_3_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_3_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_3_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_3_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_3_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_3_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_3_M00_AXI_BVALID),
        .M00_AXI_wdata(smartconnect_3_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_3_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_3_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_3_M00_AXI_WVALID),
        .S00_AXI_awaddr(mhsa_top_0_m_axi_gmem_o_AWADDR),
        .S00_AXI_awburst(mhsa_top_0_m_axi_gmem_o_AWBURST),
        .S00_AXI_awcache(mhsa_top_0_m_axi_gmem_o_AWCACHE),
        .S00_AXI_awid(mhsa_top_0_m_axi_gmem_o_AWID),
        .S00_AXI_awlen(mhsa_top_0_m_axi_gmem_o_AWLEN),
        .S00_AXI_awlock(mhsa_top_0_m_axi_gmem_o_AWLOCK[0]),
        .S00_AXI_awprot(mhsa_top_0_m_axi_gmem_o_AWPROT),
        .S00_AXI_awqos(mhsa_top_0_m_axi_gmem_o_AWQOS),
        .S00_AXI_awready(mhsa_top_0_m_axi_gmem_o_AWREADY),
        .S00_AXI_awsize(mhsa_top_0_m_axi_gmem_o_AWSIZE),
        .S00_AXI_awvalid(mhsa_top_0_m_axi_gmem_o_AWVALID),
        .S00_AXI_bid(mhsa_top_0_m_axi_gmem_o_BID),
        .S00_AXI_bready(mhsa_top_0_m_axi_gmem_o_BREADY),
        .S00_AXI_bresp(mhsa_top_0_m_axi_gmem_o_BRESP),
        .S00_AXI_bvalid(mhsa_top_0_m_axi_gmem_o_BVALID),
        .S00_AXI_wdata(mhsa_top_0_m_axi_gmem_o_WDATA),
        .S00_AXI_wlast(mhsa_top_0_m_axi_gmem_o_WLAST),
        .S00_AXI_wready(mhsa_top_0_m_axi_gmem_o_WREADY),
        .S00_AXI_wstrb(mhsa_top_0_m_axi_gmem_o_WSTRB),
        .S00_AXI_wvalid(mhsa_top_0_m_axi_gmem_o_WVALID),
        .S01_AXI_araddr(1'b0),
        .S01_AXI_arburst({1'b0,1'b1}),
        .S01_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_arid(1'b0),
        .S01_AXI_arlen(1'b0),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot({1'b0,1'b0,1'b0}),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize({1'b0,1'b1,1'b0}),
        .S01_AXI_aruser(1'b0),
        .S01_AXI_arvalid(1'b0),
        .S01_AXI_awaddr(1'b0),
        .S01_AXI_awburst({1'b0,1'b1}),
        .S01_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_awid(1'b0),
        .S01_AXI_awlen(1'b0),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot({1'b0,1'b0,1'b0}),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize({1'b0,1'b1,1'b0}),
        .S01_AXI_awuser(1'b0),
        .S01_AXI_awvalid(1'b0),
        .S01_AXI_bready(1'b0),
        .S01_AXI_rready(1'b0),
        .S01_AXI_wdata(1'b0),
        .S01_AXI_wid(1'b0),
        .S01_AXI_wlast(1'b0),
        .S01_AXI_wstrb(1'b1),
        .S01_AXI_wuser(1'b0),
        .S01_AXI_wvalid(1'b0),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  mhsa_smartconnect_4_0 smartconnect_4
       (.M00_AXI_araddr(smartconnect_4_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_4_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_4_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_4_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_4_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_4_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_4_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_4_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_4_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_4_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_4_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_4_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_4_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_4_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_4_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_4_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_4_M00_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  mhsa_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr(smartconnect_1_M00_AXI_ARADDR),
        .saxigp2_arburst(smartconnect_1_M00_AXI_ARBURST),
        .saxigp2_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(smartconnect_1_M00_AXI_ARLEN),
        .saxigp2_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .saxigp2_arprot(smartconnect_1_M00_AXI_ARPROT),
        .saxigp2_arqos(smartconnect_1_M00_AXI_ARQOS),
        .saxigp2_arready(smartconnect_1_M00_AXI_ARREADY),
        .saxigp2_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awburst({1'b0,1'b1}),
        .saxigp2_awcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlock(1'b0),
        .saxigp2_awprot({1'b0,1'b0,1'b0}),
        .saxigp2_awqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awsize({1'b1,1'b0,1'b0}),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(1'b0),
        .saxigp2_bready(1'b0),
        .saxigp2_rdata(smartconnect_1_M00_AXI_RDATA),
        .saxigp2_rlast(smartconnect_1_M00_AXI_RLAST),
        .saxigp2_rready(smartconnect_1_M00_AXI_RREADY),
        .saxigp2_rresp(smartconnect_1_M00_AXI_RRESP),
        .saxigp2_rvalid(smartconnect_1_M00_AXI_RVALID),
        .saxigp2_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_wlast(1'b0),
        .saxigp2_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .saxigp2_wvalid(1'b0),
        .saxigp3_araddr(smartconnect_2_M00_AXI_ARADDR),
        .saxigp3_arburst(smartconnect_2_M00_AXI_ARBURST),
        .saxigp3_arcache(smartconnect_2_M00_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_arlen(smartconnect_2_M00_AXI_ARLEN),
        .saxigp3_arlock(smartconnect_2_M00_AXI_ARLOCK),
        .saxigp3_arprot(smartconnect_2_M00_AXI_ARPROT),
        .saxigp3_arqos(smartconnect_2_M00_AXI_ARQOS),
        .saxigp3_arready(smartconnect_2_M00_AXI_ARREADY),
        .saxigp3_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .saxigp3_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awburst({1'b0,1'b1}),
        .saxigp3_awcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlock(1'b0),
        .saxigp3_awprot({1'b0,1'b0,1'b0}),
        .saxigp3_awqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awsize({1'b1,1'b0,1'b0}),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(1'b0),
        .saxigp3_bready(1'b0),
        .saxigp3_rdata(smartconnect_2_M00_AXI_RDATA),
        .saxigp3_rlast(smartconnect_2_M00_AXI_RLAST),
        .saxigp3_rready(smartconnect_2_M00_AXI_RREADY),
        .saxigp3_rresp(smartconnect_2_M00_AXI_RRESP),
        .saxigp3_rvalid(smartconnect_2_M00_AXI_RVALID),
        .saxigp3_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_wlast(1'b0),
        .saxigp3_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .saxigp3_wvalid(1'b0),
        .saxigp4_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arburst({1'b0,1'b1}),
        .saxigp4_arcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp4_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arlock(1'b0),
        .saxigp4_arprot({1'b0,1'b0,1'b0}),
        .saxigp4_arqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arsize({1'b1,1'b0,1'b0}),
        .saxigp4_aruser(1'b0),
        .saxigp4_arvalid(1'b0),
        .saxigp4_awaddr(smartconnect_3_M00_AXI_AWADDR),
        .saxigp4_awburst(smartconnect_3_M00_AXI_AWBURST),
        .saxigp4_awcache(smartconnect_3_M00_AXI_AWCACHE),
        .saxigp4_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_awlen(smartconnect_3_M00_AXI_AWLEN),
        .saxigp4_awlock(smartconnect_3_M00_AXI_AWLOCK),
        .saxigp4_awprot(smartconnect_3_M00_AXI_AWPROT),
        .saxigp4_awqos(smartconnect_3_M00_AXI_AWQOS),
        .saxigp4_awready(smartconnect_3_M00_AXI_AWREADY),
        .saxigp4_awsize(smartconnect_3_M00_AXI_AWSIZE),
        .saxigp4_awuser(1'b0),
        .saxigp4_awvalid(smartconnect_3_M00_AXI_AWVALID),
        .saxigp4_bready(smartconnect_3_M00_AXI_BREADY),
        .saxigp4_bresp(smartconnect_3_M00_AXI_BRESP),
        .saxigp4_bvalid(smartconnect_3_M00_AXI_BVALID),
        .saxigp4_rready(1'b0),
        .saxigp4_wdata(smartconnect_3_M00_AXI_WDATA),
        .saxigp4_wlast(smartconnect_3_M00_AXI_WLAST),
        .saxigp4_wready(smartconnect_3_M00_AXI_WREADY),
        .saxigp4_wstrb(smartconnect_3_M00_AXI_WSTRB),
        .saxigp4_wvalid(smartconnect_3_M00_AXI_WVALID),
        .saxigp5_araddr(smartconnect_0_M00_AXI_ARADDR),
        .saxigp5_arburst(smartconnect_0_M00_AXI_ARBURST),
        .saxigp5_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .saxigp5_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_arlen(smartconnect_0_M00_AXI_ARLEN),
        .saxigp5_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .saxigp5_arprot(smartconnect_0_M00_AXI_ARPROT),
        .saxigp5_arqos(smartconnect_0_M00_AXI_ARQOS),
        .saxigp5_arready(smartconnect_0_M00_AXI_ARREADY),
        .saxigp5_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .saxigp5_aruser(1'b0),
        .saxigp5_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .saxigp5_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_awburst({1'b0,1'b1}),
        .saxigp5_awcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp5_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_awlock(1'b0),
        .saxigp5_awprot({1'b0,1'b0,1'b0}),
        .saxigp5_awqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_awsize({1'b1,1'b0,1'b0}),
        .saxigp5_awuser(1'b0),
        .saxigp5_awvalid(1'b0),
        .saxigp5_bready(1'b0),
        .saxigp5_rdata(smartconnect_0_M00_AXI_RDATA),
        .saxigp5_rlast(smartconnect_0_M00_AXI_RLAST),
        .saxigp5_rready(smartconnect_0_M00_AXI_RREADY),
        .saxigp5_rresp(smartconnect_0_M00_AXI_RRESP),
        .saxigp5_rvalid(smartconnect_0_M00_AXI_RVALID),
        .saxigp5_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_wlast(1'b0),
        .saxigp5_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .saxigp5_wvalid(1'b0),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp2_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp3_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

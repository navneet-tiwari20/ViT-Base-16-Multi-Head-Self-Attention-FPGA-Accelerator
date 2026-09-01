// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:mhsa_top:1.0
// IP Revision: 2114758474

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mhsa_mhsa_top_0_0 (
  s_axi_control_ARADDR,
  s_axi_control_ARREADY,
  s_axi_control_ARVALID,
  s_axi_control_AWADDR,
  s_axi_control_AWREADY,
  s_axi_control_AWVALID,
  s_axi_control_BREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_RDATA,
  s_axi_control_RREADY,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_WDATA,
  s_axi_control_WREADY,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_gmem_q_ARADDR,
  m_axi_gmem_q_ARBURST,
  m_axi_gmem_q_ARCACHE,
  m_axi_gmem_q_ARID,
  m_axi_gmem_q_ARLEN,
  m_axi_gmem_q_ARLOCK,
  m_axi_gmem_q_ARPROT,
  m_axi_gmem_q_ARQOS,
  m_axi_gmem_q_ARREADY,
  m_axi_gmem_q_ARREGION,
  m_axi_gmem_q_ARSIZE,
  m_axi_gmem_q_ARVALID,
  m_axi_gmem_q_AWADDR,
  m_axi_gmem_q_AWBURST,
  m_axi_gmem_q_AWCACHE,
  m_axi_gmem_q_AWID,
  m_axi_gmem_q_AWLEN,
  m_axi_gmem_q_AWLOCK,
  m_axi_gmem_q_AWPROT,
  m_axi_gmem_q_AWQOS,
  m_axi_gmem_q_AWREADY,
  m_axi_gmem_q_AWREGION,
  m_axi_gmem_q_AWSIZE,
  m_axi_gmem_q_AWVALID,
  m_axi_gmem_q_BID,
  m_axi_gmem_q_BREADY,
  m_axi_gmem_q_BRESP,
  m_axi_gmem_q_BVALID,
  m_axi_gmem_q_RDATA,
  m_axi_gmem_q_RID,
  m_axi_gmem_q_RLAST,
  m_axi_gmem_q_RREADY,
  m_axi_gmem_q_RRESP,
  m_axi_gmem_q_RVALID,
  m_axi_gmem_q_WDATA,
  m_axi_gmem_q_WID,
  m_axi_gmem_q_WLAST,
  m_axi_gmem_q_WREADY,
  m_axi_gmem_q_WSTRB,
  m_axi_gmem_q_WVALID,
  m_axi_gmem_k_ARADDR,
  m_axi_gmem_k_ARBURST,
  m_axi_gmem_k_ARCACHE,
  m_axi_gmem_k_ARID,
  m_axi_gmem_k_ARLEN,
  m_axi_gmem_k_ARLOCK,
  m_axi_gmem_k_ARPROT,
  m_axi_gmem_k_ARQOS,
  m_axi_gmem_k_ARREADY,
  m_axi_gmem_k_ARREGION,
  m_axi_gmem_k_ARSIZE,
  m_axi_gmem_k_ARVALID,
  m_axi_gmem_k_AWADDR,
  m_axi_gmem_k_AWBURST,
  m_axi_gmem_k_AWCACHE,
  m_axi_gmem_k_AWID,
  m_axi_gmem_k_AWLEN,
  m_axi_gmem_k_AWLOCK,
  m_axi_gmem_k_AWPROT,
  m_axi_gmem_k_AWQOS,
  m_axi_gmem_k_AWREADY,
  m_axi_gmem_k_AWREGION,
  m_axi_gmem_k_AWSIZE,
  m_axi_gmem_k_AWVALID,
  m_axi_gmem_k_BID,
  m_axi_gmem_k_BREADY,
  m_axi_gmem_k_BRESP,
  m_axi_gmem_k_BVALID,
  m_axi_gmem_k_RDATA,
  m_axi_gmem_k_RID,
  m_axi_gmem_k_RLAST,
  m_axi_gmem_k_RREADY,
  m_axi_gmem_k_RRESP,
  m_axi_gmem_k_RVALID,
  m_axi_gmem_k_WDATA,
  m_axi_gmem_k_WID,
  m_axi_gmem_k_WLAST,
  m_axi_gmem_k_WREADY,
  m_axi_gmem_k_WSTRB,
  m_axi_gmem_k_WVALID,
  m_axi_gmem_v_ARADDR,
  m_axi_gmem_v_ARBURST,
  m_axi_gmem_v_ARCACHE,
  m_axi_gmem_v_ARID,
  m_axi_gmem_v_ARLEN,
  m_axi_gmem_v_ARLOCK,
  m_axi_gmem_v_ARPROT,
  m_axi_gmem_v_ARQOS,
  m_axi_gmem_v_ARREADY,
  m_axi_gmem_v_ARREGION,
  m_axi_gmem_v_ARSIZE,
  m_axi_gmem_v_ARVALID,
  m_axi_gmem_v_AWADDR,
  m_axi_gmem_v_AWBURST,
  m_axi_gmem_v_AWCACHE,
  m_axi_gmem_v_AWID,
  m_axi_gmem_v_AWLEN,
  m_axi_gmem_v_AWLOCK,
  m_axi_gmem_v_AWPROT,
  m_axi_gmem_v_AWQOS,
  m_axi_gmem_v_AWREADY,
  m_axi_gmem_v_AWREGION,
  m_axi_gmem_v_AWSIZE,
  m_axi_gmem_v_AWVALID,
  m_axi_gmem_v_BID,
  m_axi_gmem_v_BREADY,
  m_axi_gmem_v_BRESP,
  m_axi_gmem_v_BVALID,
  m_axi_gmem_v_RDATA,
  m_axi_gmem_v_RID,
  m_axi_gmem_v_RLAST,
  m_axi_gmem_v_RREADY,
  m_axi_gmem_v_RRESP,
  m_axi_gmem_v_RVALID,
  m_axi_gmem_v_WDATA,
  m_axi_gmem_v_WID,
  m_axi_gmem_v_WLAST,
  m_axi_gmem_v_WREADY,
  m_axi_gmem_v_WSTRB,
  m_axi_gmem_v_WVALID,
  m_axi_gmem_o_ARADDR,
  m_axi_gmem_o_ARBURST,
  m_axi_gmem_o_ARCACHE,
  m_axi_gmem_o_ARID,
  m_axi_gmem_o_ARLEN,
  m_axi_gmem_o_ARLOCK,
  m_axi_gmem_o_ARPROT,
  m_axi_gmem_o_ARQOS,
  m_axi_gmem_o_ARREADY,
  m_axi_gmem_o_ARREGION,
  m_axi_gmem_o_ARSIZE,
  m_axi_gmem_o_ARVALID,
  m_axi_gmem_o_AWADDR,
  m_axi_gmem_o_AWBURST,
  m_axi_gmem_o_AWCACHE,
  m_axi_gmem_o_AWID,
  m_axi_gmem_o_AWLEN,
  m_axi_gmem_o_AWLOCK,
  m_axi_gmem_o_AWPROT,
  m_axi_gmem_o_AWQOS,
  m_axi_gmem_o_AWREADY,
  m_axi_gmem_o_AWREGION,
  m_axi_gmem_o_AWSIZE,
  m_axi_gmem_o_AWVALID,
  m_axi_gmem_o_BID,
  m_axi_gmem_o_BREADY,
  m_axi_gmem_o_BRESP,
  m_axi_gmem_o_BVALID,
  m_axi_gmem_o_RDATA,
  m_axi_gmem_o_RID,
  m_axi_gmem_o_RLAST,
  m_axi_gmem_o_RREADY,
  m_axi_gmem_o_RRESP,
  m_axi_gmem_o_RVALID,
  m_axi_gmem_o_WDATA,
  m_axi_gmem_o_WID,
  m_axi_gmem_o_WLAST,
  m_axi_gmem_o_WREADY,
  m_axi_gmem_o_WSTRB,
  m_axi_gmem_o_WVALID
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 96968727, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN mhsa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, \
NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [6 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [6 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_gmem_q:m_axi_gmem_k:m_axi_gmem_v:m_axi_gmem_o, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mhsa_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_q, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 96968727, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN mh\
sa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_gmem_q_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARBURST" *)
output wire [1 : 0] m_axi_gmem_q_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARCACHE" *)
output wire [3 : 0] m_axi_gmem_q_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARID" *)
output wire [0 : 0] m_axi_gmem_q_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARLEN" *)
output wire [7 : 0] m_axi_gmem_q_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARLOCK" *)
output wire [1 : 0] m_axi_gmem_q_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARPROT" *)
output wire [2 : 0] m_axi_gmem_q_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARQOS" *)
output wire [3 : 0] m_axi_gmem_q_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARREADY" *)
input wire m_axi_gmem_q_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARREGION" *)
output wire [3 : 0] m_axi_gmem_q_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARSIZE" *)
output wire [2 : 0] m_axi_gmem_q_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q ARVALID" *)
output wire m_axi_gmem_q_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWADDR" *)
output wire [63 : 0] m_axi_gmem_q_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWBURST" *)
output wire [1 : 0] m_axi_gmem_q_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWCACHE" *)
output wire [3 : 0] m_axi_gmem_q_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWID" *)
output wire [0 : 0] m_axi_gmem_q_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWLEN" *)
output wire [7 : 0] m_axi_gmem_q_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWLOCK" *)
output wire [1 : 0] m_axi_gmem_q_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWPROT" *)
output wire [2 : 0] m_axi_gmem_q_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWQOS" *)
output wire [3 : 0] m_axi_gmem_q_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWREADY" *)
input wire m_axi_gmem_q_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWREGION" *)
output wire [3 : 0] m_axi_gmem_q_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWSIZE" *)
output wire [2 : 0] m_axi_gmem_q_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q AWVALID" *)
output wire m_axi_gmem_q_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q BID" *)
input wire [0 : 0] m_axi_gmem_q_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q BREADY" *)
output wire m_axi_gmem_q_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q BRESP" *)
input wire [1 : 0] m_axi_gmem_q_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q BVALID" *)
input wire m_axi_gmem_q_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RDATA" *)
input wire [31 : 0] m_axi_gmem_q_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RID" *)
input wire [0 : 0] m_axi_gmem_q_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RLAST" *)
input wire m_axi_gmem_q_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RREADY" *)
output wire m_axi_gmem_q_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RRESP" *)
input wire [1 : 0] m_axi_gmem_q_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q RVALID" *)
input wire m_axi_gmem_q_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WDATA" *)
output wire [31 : 0] m_axi_gmem_q_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WID" *)
output wire [0 : 0] m_axi_gmem_q_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WLAST" *)
output wire m_axi_gmem_q_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WREADY" *)
input wire m_axi_gmem_q_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WSTRB" *)
output wire [3 : 0] m_axi_gmem_q_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_q WVALID" *)
output wire m_axi_gmem_q_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_k, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 96968727, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN mh\
sa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_gmem_k_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARBURST" *)
output wire [1 : 0] m_axi_gmem_k_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARCACHE" *)
output wire [3 : 0] m_axi_gmem_k_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARID" *)
output wire [0 : 0] m_axi_gmem_k_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARLEN" *)
output wire [7 : 0] m_axi_gmem_k_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARLOCK" *)
output wire [1 : 0] m_axi_gmem_k_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARPROT" *)
output wire [2 : 0] m_axi_gmem_k_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARQOS" *)
output wire [3 : 0] m_axi_gmem_k_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARREADY" *)
input wire m_axi_gmem_k_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARREGION" *)
output wire [3 : 0] m_axi_gmem_k_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARSIZE" *)
output wire [2 : 0] m_axi_gmem_k_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k ARVALID" *)
output wire m_axi_gmem_k_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWADDR" *)
output wire [63 : 0] m_axi_gmem_k_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWBURST" *)
output wire [1 : 0] m_axi_gmem_k_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWCACHE" *)
output wire [3 : 0] m_axi_gmem_k_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWID" *)
output wire [0 : 0] m_axi_gmem_k_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWLEN" *)
output wire [7 : 0] m_axi_gmem_k_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWLOCK" *)
output wire [1 : 0] m_axi_gmem_k_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWPROT" *)
output wire [2 : 0] m_axi_gmem_k_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWQOS" *)
output wire [3 : 0] m_axi_gmem_k_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWREADY" *)
input wire m_axi_gmem_k_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWREGION" *)
output wire [3 : 0] m_axi_gmem_k_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWSIZE" *)
output wire [2 : 0] m_axi_gmem_k_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k AWVALID" *)
output wire m_axi_gmem_k_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k BID" *)
input wire [0 : 0] m_axi_gmem_k_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k BREADY" *)
output wire m_axi_gmem_k_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k BRESP" *)
input wire [1 : 0] m_axi_gmem_k_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k BVALID" *)
input wire m_axi_gmem_k_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RDATA" *)
input wire [31 : 0] m_axi_gmem_k_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RID" *)
input wire [0 : 0] m_axi_gmem_k_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RLAST" *)
input wire m_axi_gmem_k_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RREADY" *)
output wire m_axi_gmem_k_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RRESP" *)
input wire [1 : 0] m_axi_gmem_k_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k RVALID" *)
input wire m_axi_gmem_k_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WDATA" *)
output wire [31 : 0] m_axi_gmem_k_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WID" *)
output wire [0 : 0] m_axi_gmem_k_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WLAST" *)
output wire m_axi_gmem_k_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WREADY" *)
input wire m_axi_gmem_k_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WSTRB" *)
output wire [3 : 0] m_axi_gmem_k_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_k WVALID" *)
output wire m_axi_gmem_k_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_v, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 96968727, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN mh\
sa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_gmem_v_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARBURST" *)
output wire [1 : 0] m_axi_gmem_v_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARCACHE" *)
output wire [3 : 0] m_axi_gmem_v_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARID" *)
output wire [0 : 0] m_axi_gmem_v_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARLEN" *)
output wire [7 : 0] m_axi_gmem_v_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARLOCK" *)
output wire [1 : 0] m_axi_gmem_v_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARPROT" *)
output wire [2 : 0] m_axi_gmem_v_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARQOS" *)
output wire [3 : 0] m_axi_gmem_v_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARREADY" *)
input wire m_axi_gmem_v_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARREGION" *)
output wire [3 : 0] m_axi_gmem_v_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARSIZE" *)
output wire [2 : 0] m_axi_gmem_v_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v ARVALID" *)
output wire m_axi_gmem_v_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWADDR" *)
output wire [63 : 0] m_axi_gmem_v_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWBURST" *)
output wire [1 : 0] m_axi_gmem_v_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWCACHE" *)
output wire [3 : 0] m_axi_gmem_v_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWID" *)
output wire [0 : 0] m_axi_gmem_v_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWLEN" *)
output wire [7 : 0] m_axi_gmem_v_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWLOCK" *)
output wire [1 : 0] m_axi_gmem_v_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWPROT" *)
output wire [2 : 0] m_axi_gmem_v_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWQOS" *)
output wire [3 : 0] m_axi_gmem_v_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWREADY" *)
input wire m_axi_gmem_v_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWREGION" *)
output wire [3 : 0] m_axi_gmem_v_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWSIZE" *)
output wire [2 : 0] m_axi_gmem_v_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v AWVALID" *)
output wire m_axi_gmem_v_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v BID" *)
input wire [0 : 0] m_axi_gmem_v_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v BREADY" *)
output wire m_axi_gmem_v_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v BRESP" *)
input wire [1 : 0] m_axi_gmem_v_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v BVALID" *)
input wire m_axi_gmem_v_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RDATA" *)
input wire [31 : 0] m_axi_gmem_v_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RID" *)
input wire [0 : 0] m_axi_gmem_v_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RLAST" *)
input wire m_axi_gmem_v_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RREADY" *)
output wire m_axi_gmem_v_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RRESP" *)
input wire [1 : 0] m_axi_gmem_v_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v RVALID" *)
input wire m_axi_gmem_v_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WDATA" *)
output wire [31 : 0] m_axi_gmem_v_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WID" *)
output wire [0 : 0] m_axi_gmem_v_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WLAST" *)
output wire m_axi_gmem_v_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WREADY" *)
input wire m_axi_gmem_v_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WSTRB" *)
output wire [3 : 0] m_axi_gmem_v_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_v WVALID" *)
output wire m_axi_gmem_v_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_o, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 96968727, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN m\
hsa_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_gmem_o_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARBURST" *)
output wire [1 : 0] m_axi_gmem_o_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARCACHE" *)
output wire [3 : 0] m_axi_gmem_o_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARID" *)
output wire [0 : 0] m_axi_gmem_o_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARLEN" *)
output wire [7 : 0] m_axi_gmem_o_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARLOCK" *)
output wire [1 : 0] m_axi_gmem_o_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARPROT" *)
output wire [2 : 0] m_axi_gmem_o_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARQOS" *)
output wire [3 : 0] m_axi_gmem_o_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARREADY" *)
input wire m_axi_gmem_o_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARREGION" *)
output wire [3 : 0] m_axi_gmem_o_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARSIZE" *)
output wire [2 : 0] m_axi_gmem_o_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o ARVALID" *)
output wire m_axi_gmem_o_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWADDR" *)
output wire [63 : 0] m_axi_gmem_o_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWBURST" *)
output wire [1 : 0] m_axi_gmem_o_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWCACHE" *)
output wire [3 : 0] m_axi_gmem_o_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWID" *)
output wire [0 : 0] m_axi_gmem_o_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWLEN" *)
output wire [7 : 0] m_axi_gmem_o_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWLOCK" *)
output wire [1 : 0] m_axi_gmem_o_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWPROT" *)
output wire [2 : 0] m_axi_gmem_o_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWQOS" *)
output wire [3 : 0] m_axi_gmem_o_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWREADY" *)
input wire m_axi_gmem_o_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWREGION" *)
output wire [3 : 0] m_axi_gmem_o_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWSIZE" *)
output wire [2 : 0] m_axi_gmem_o_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o AWVALID" *)
output wire m_axi_gmem_o_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o BID" *)
input wire [0 : 0] m_axi_gmem_o_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o BREADY" *)
output wire m_axi_gmem_o_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o BRESP" *)
input wire [1 : 0] m_axi_gmem_o_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o BVALID" *)
input wire m_axi_gmem_o_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RDATA" *)
input wire [31 : 0] m_axi_gmem_o_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RID" *)
input wire [0 : 0] m_axi_gmem_o_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RLAST" *)
input wire m_axi_gmem_o_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RREADY" *)
output wire m_axi_gmem_o_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RRESP" *)
input wire [1 : 0] m_axi_gmem_o_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o RVALID" *)
input wire m_axi_gmem_o_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WDATA" *)
output wire [31 : 0] m_axi_gmem_o_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WID" *)
output wire [0 : 0] m_axi_gmem_o_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WLAST" *)
output wire m_axi_gmem_o_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WREADY" *)
input wire m_axi_gmem_o_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WSTRB" *)
output wire [3 : 0] m_axi_gmem_o_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_o WVALID" *)
output wire m_axi_gmem_o_WVALID;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  mhsa_top #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(7),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_GMEM_Q_ID_WIDTH(1),
    .C_M_AXI_GMEM_Q_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_Q_DATA_WIDTH(32),
    .C_M_AXI_GMEM_Q_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_Q_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_Q_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_Q_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_Q_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_Q_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_Q_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_Q_CACHE_VALUE(4'B0011),
    .C_M_AXI_GMEM_K_ID_WIDTH(1),
    .C_M_AXI_GMEM_K_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_K_DATA_WIDTH(32),
    .C_M_AXI_GMEM_K_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_K_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_K_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_K_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_K_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_K_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_K_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_K_CACHE_VALUE(4'B0011),
    .C_M_AXI_GMEM_V_ID_WIDTH(1),
    .C_M_AXI_GMEM_V_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_V_DATA_WIDTH(32),
    .C_M_AXI_GMEM_V_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_V_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_V_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_V_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_V_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_V_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_V_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_V_CACHE_VALUE(4'B0011),
    .C_M_AXI_GMEM_O_ID_WIDTH(1),
    .C_M_AXI_GMEM_O_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_O_DATA_WIDTH(32),
    .C_M_AXI_GMEM_O_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_O_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_O_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_O_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_O_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_O_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_O_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_O_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_gmem_q_ARADDR(m_axi_gmem_q_ARADDR),
    .m_axi_gmem_q_ARBURST(m_axi_gmem_q_ARBURST),
    .m_axi_gmem_q_ARCACHE(m_axi_gmem_q_ARCACHE),
    .m_axi_gmem_q_ARID(m_axi_gmem_q_ARID),
    .m_axi_gmem_q_ARLEN(m_axi_gmem_q_ARLEN),
    .m_axi_gmem_q_ARLOCK(m_axi_gmem_q_ARLOCK),
    .m_axi_gmem_q_ARPROT(m_axi_gmem_q_ARPROT),
    .m_axi_gmem_q_ARQOS(m_axi_gmem_q_ARQOS),
    .m_axi_gmem_q_ARREADY(m_axi_gmem_q_ARREADY),
    .m_axi_gmem_q_ARREGION(m_axi_gmem_q_ARREGION),
    .m_axi_gmem_q_ARSIZE(m_axi_gmem_q_ARSIZE),
    .m_axi_gmem_q_ARUSER(),
    .m_axi_gmem_q_ARVALID(m_axi_gmem_q_ARVALID),
    .m_axi_gmem_q_AWADDR(m_axi_gmem_q_AWADDR),
    .m_axi_gmem_q_AWBURST(m_axi_gmem_q_AWBURST),
    .m_axi_gmem_q_AWCACHE(m_axi_gmem_q_AWCACHE),
    .m_axi_gmem_q_AWID(m_axi_gmem_q_AWID),
    .m_axi_gmem_q_AWLEN(m_axi_gmem_q_AWLEN),
    .m_axi_gmem_q_AWLOCK(m_axi_gmem_q_AWLOCK),
    .m_axi_gmem_q_AWPROT(m_axi_gmem_q_AWPROT),
    .m_axi_gmem_q_AWQOS(m_axi_gmem_q_AWQOS),
    .m_axi_gmem_q_AWREADY(m_axi_gmem_q_AWREADY),
    .m_axi_gmem_q_AWREGION(m_axi_gmem_q_AWREGION),
    .m_axi_gmem_q_AWSIZE(m_axi_gmem_q_AWSIZE),
    .m_axi_gmem_q_AWUSER(),
    .m_axi_gmem_q_AWVALID(m_axi_gmem_q_AWVALID),
    .m_axi_gmem_q_BID(m_axi_gmem_q_BID),
    .m_axi_gmem_q_BREADY(m_axi_gmem_q_BREADY),
    .m_axi_gmem_q_BRESP(m_axi_gmem_q_BRESP),
    .m_axi_gmem_q_BUSER(1'B0),
    .m_axi_gmem_q_BVALID(m_axi_gmem_q_BVALID),
    .m_axi_gmem_q_RDATA(m_axi_gmem_q_RDATA),
    .m_axi_gmem_q_RID(m_axi_gmem_q_RID),
    .m_axi_gmem_q_RLAST(m_axi_gmem_q_RLAST),
    .m_axi_gmem_q_RREADY(m_axi_gmem_q_RREADY),
    .m_axi_gmem_q_RRESP(m_axi_gmem_q_RRESP),
    .m_axi_gmem_q_RUSER(1'B0),
    .m_axi_gmem_q_RVALID(m_axi_gmem_q_RVALID),
    .m_axi_gmem_q_WDATA(m_axi_gmem_q_WDATA),
    .m_axi_gmem_q_WID(m_axi_gmem_q_WID),
    .m_axi_gmem_q_WLAST(m_axi_gmem_q_WLAST),
    .m_axi_gmem_q_WREADY(m_axi_gmem_q_WREADY),
    .m_axi_gmem_q_WSTRB(m_axi_gmem_q_WSTRB),
    .m_axi_gmem_q_WUSER(),
    .m_axi_gmem_q_WVALID(m_axi_gmem_q_WVALID),
    .m_axi_gmem_k_ARADDR(m_axi_gmem_k_ARADDR),
    .m_axi_gmem_k_ARBURST(m_axi_gmem_k_ARBURST),
    .m_axi_gmem_k_ARCACHE(m_axi_gmem_k_ARCACHE),
    .m_axi_gmem_k_ARID(m_axi_gmem_k_ARID),
    .m_axi_gmem_k_ARLEN(m_axi_gmem_k_ARLEN),
    .m_axi_gmem_k_ARLOCK(m_axi_gmem_k_ARLOCK),
    .m_axi_gmem_k_ARPROT(m_axi_gmem_k_ARPROT),
    .m_axi_gmem_k_ARQOS(m_axi_gmem_k_ARQOS),
    .m_axi_gmem_k_ARREADY(m_axi_gmem_k_ARREADY),
    .m_axi_gmem_k_ARREGION(m_axi_gmem_k_ARREGION),
    .m_axi_gmem_k_ARSIZE(m_axi_gmem_k_ARSIZE),
    .m_axi_gmem_k_ARUSER(),
    .m_axi_gmem_k_ARVALID(m_axi_gmem_k_ARVALID),
    .m_axi_gmem_k_AWADDR(m_axi_gmem_k_AWADDR),
    .m_axi_gmem_k_AWBURST(m_axi_gmem_k_AWBURST),
    .m_axi_gmem_k_AWCACHE(m_axi_gmem_k_AWCACHE),
    .m_axi_gmem_k_AWID(m_axi_gmem_k_AWID),
    .m_axi_gmem_k_AWLEN(m_axi_gmem_k_AWLEN),
    .m_axi_gmem_k_AWLOCK(m_axi_gmem_k_AWLOCK),
    .m_axi_gmem_k_AWPROT(m_axi_gmem_k_AWPROT),
    .m_axi_gmem_k_AWQOS(m_axi_gmem_k_AWQOS),
    .m_axi_gmem_k_AWREADY(m_axi_gmem_k_AWREADY),
    .m_axi_gmem_k_AWREGION(m_axi_gmem_k_AWREGION),
    .m_axi_gmem_k_AWSIZE(m_axi_gmem_k_AWSIZE),
    .m_axi_gmem_k_AWUSER(),
    .m_axi_gmem_k_AWVALID(m_axi_gmem_k_AWVALID),
    .m_axi_gmem_k_BID(m_axi_gmem_k_BID),
    .m_axi_gmem_k_BREADY(m_axi_gmem_k_BREADY),
    .m_axi_gmem_k_BRESP(m_axi_gmem_k_BRESP),
    .m_axi_gmem_k_BUSER(1'B0),
    .m_axi_gmem_k_BVALID(m_axi_gmem_k_BVALID),
    .m_axi_gmem_k_RDATA(m_axi_gmem_k_RDATA),
    .m_axi_gmem_k_RID(m_axi_gmem_k_RID),
    .m_axi_gmem_k_RLAST(m_axi_gmem_k_RLAST),
    .m_axi_gmem_k_RREADY(m_axi_gmem_k_RREADY),
    .m_axi_gmem_k_RRESP(m_axi_gmem_k_RRESP),
    .m_axi_gmem_k_RUSER(1'B0),
    .m_axi_gmem_k_RVALID(m_axi_gmem_k_RVALID),
    .m_axi_gmem_k_WDATA(m_axi_gmem_k_WDATA),
    .m_axi_gmem_k_WID(m_axi_gmem_k_WID),
    .m_axi_gmem_k_WLAST(m_axi_gmem_k_WLAST),
    .m_axi_gmem_k_WREADY(m_axi_gmem_k_WREADY),
    .m_axi_gmem_k_WSTRB(m_axi_gmem_k_WSTRB),
    .m_axi_gmem_k_WUSER(),
    .m_axi_gmem_k_WVALID(m_axi_gmem_k_WVALID),
    .m_axi_gmem_v_ARADDR(m_axi_gmem_v_ARADDR),
    .m_axi_gmem_v_ARBURST(m_axi_gmem_v_ARBURST),
    .m_axi_gmem_v_ARCACHE(m_axi_gmem_v_ARCACHE),
    .m_axi_gmem_v_ARID(m_axi_gmem_v_ARID),
    .m_axi_gmem_v_ARLEN(m_axi_gmem_v_ARLEN),
    .m_axi_gmem_v_ARLOCK(m_axi_gmem_v_ARLOCK),
    .m_axi_gmem_v_ARPROT(m_axi_gmem_v_ARPROT),
    .m_axi_gmem_v_ARQOS(m_axi_gmem_v_ARQOS),
    .m_axi_gmem_v_ARREADY(m_axi_gmem_v_ARREADY),
    .m_axi_gmem_v_ARREGION(m_axi_gmem_v_ARREGION),
    .m_axi_gmem_v_ARSIZE(m_axi_gmem_v_ARSIZE),
    .m_axi_gmem_v_ARUSER(),
    .m_axi_gmem_v_ARVALID(m_axi_gmem_v_ARVALID),
    .m_axi_gmem_v_AWADDR(m_axi_gmem_v_AWADDR),
    .m_axi_gmem_v_AWBURST(m_axi_gmem_v_AWBURST),
    .m_axi_gmem_v_AWCACHE(m_axi_gmem_v_AWCACHE),
    .m_axi_gmem_v_AWID(m_axi_gmem_v_AWID),
    .m_axi_gmem_v_AWLEN(m_axi_gmem_v_AWLEN),
    .m_axi_gmem_v_AWLOCK(m_axi_gmem_v_AWLOCK),
    .m_axi_gmem_v_AWPROT(m_axi_gmem_v_AWPROT),
    .m_axi_gmem_v_AWQOS(m_axi_gmem_v_AWQOS),
    .m_axi_gmem_v_AWREADY(m_axi_gmem_v_AWREADY),
    .m_axi_gmem_v_AWREGION(m_axi_gmem_v_AWREGION),
    .m_axi_gmem_v_AWSIZE(m_axi_gmem_v_AWSIZE),
    .m_axi_gmem_v_AWUSER(),
    .m_axi_gmem_v_AWVALID(m_axi_gmem_v_AWVALID),
    .m_axi_gmem_v_BID(m_axi_gmem_v_BID),
    .m_axi_gmem_v_BREADY(m_axi_gmem_v_BREADY),
    .m_axi_gmem_v_BRESP(m_axi_gmem_v_BRESP),
    .m_axi_gmem_v_BUSER(1'B0),
    .m_axi_gmem_v_BVALID(m_axi_gmem_v_BVALID),
    .m_axi_gmem_v_RDATA(m_axi_gmem_v_RDATA),
    .m_axi_gmem_v_RID(m_axi_gmem_v_RID),
    .m_axi_gmem_v_RLAST(m_axi_gmem_v_RLAST),
    .m_axi_gmem_v_RREADY(m_axi_gmem_v_RREADY),
    .m_axi_gmem_v_RRESP(m_axi_gmem_v_RRESP),
    .m_axi_gmem_v_RUSER(1'B0),
    .m_axi_gmem_v_RVALID(m_axi_gmem_v_RVALID),
    .m_axi_gmem_v_WDATA(m_axi_gmem_v_WDATA),
    .m_axi_gmem_v_WID(m_axi_gmem_v_WID),
    .m_axi_gmem_v_WLAST(m_axi_gmem_v_WLAST),
    .m_axi_gmem_v_WREADY(m_axi_gmem_v_WREADY),
    .m_axi_gmem_v_WSTRB(m_axi_gmem_v_WSTRB),
    .m_axi_gmem_v_WUSER(),
    .m_axi_gmem_v_WVALID(m_axi_gmem_v_WVALID),
    .m_axi_gmem_o_ARADDR(m_axi_gmem_o_ARADDR),
    .m_axi_gmem_o_ARBURST(m_axi_gmem_o_ARBURST),
    .m_axi_gmem_o_ARCACHE(m_axi_gmem_o_ARCACHE),
    .m_axi_gmem_o_ARID(m_axi_gmem_o_ARID),
    .m_axi_gmem_o_ARLEN(m_axi_gmem_o_ARLEN),
    .m_axi_gmem_o_ARLOCK(m_axi_gmem_o_ARLOCK),
    .m_axi_gmem_o_ARPROT(m_axi_gmem_o_ARPROT),
    .m_axi_gmem_o_ARQOS(m_axi_gmem_o_ARQOS),
    .m_axi_gmem_o_ARREADY(m_axi_gmem_o_ARREADY),
    .m_axi_gmem_o_ARREGION(m_axi_gmem_o_ARREGION),
    .m_axi_gmem_o_ARSIZE(m_axi_gmem_o_ARSIZE),
    .m_axi_gmem_o_ARUSER(),
    .m_axi_gmem_o_ARVALID(m_axi_gmem_o_ARVALID),
    .m_axi_gmem_o_AWADDR(m_axi_gmem_o_AWADDR),
    .m_axi_gmem_o_AWBURST(m_axi_gmem_o_AWBURST),
    .m_axi_gmem_o_AWCACHE(m_axi_gmem_o_AWCACHE),
    .m_axi_gmem_o_AWID(m_axi_gmem_o_AWID),
    .m_axi_gmem_o_AWLEN(m_axi_gmem_o_AWLEN),
    .m_axi_gmem_o_AWLOCK(m_axi_gmem_o_AWLOCK),
    .m_axi_gmem_o_AWPROT(m_axi_gmem_o_AWPROT),
    .m_axi_gmem_o_AWQOS(m_axi_gmem_o_AWQOS),
    .m_axi_gmem_o_AWREADY(m_axi_gmem_o_AWREADY),
    .m_axi_gmem_o_AWREGION(m_axi_gmem_o_AWREGION),
    .m_axi_gmem_o_AWSIZE(m_axi_gmem_o_AWSIZE),
    .m_axi_gmem_o_AWUSER(),
    .m_axi_gmem_o_AWVALID(m_axi_gmem_o_AWVALID),
    .m_axi_gmem_o_BID(m_axi_gmem_o_BID),
    .m_axi_gmem_o_BREADY(m_axi_gmem_o_BREADY),
    .m_axi_gmem_o_BRESP(m_axi_gmem_o_BRESP),
    .m_axi_gmem_o_BUSER(1'B0),
    .m_axi_gmem_o_BVALID(m_axi_gmem_o_BVALID),
    .m_axi_gmem_o_RDATA(m_axi_gmem_o_RDATA),
    .m_axi_gmem_o_RID(m_axi_gmem_o_RID),
    .m_axi_gmem_o_RLAST(m_axi_gmem_o_RLAST),
    .m_axi_gmem_o_RREADY(m_axi_gmem_o_RREADY),
    .m_axi_gmem_o_RRESP(m_axi_gmem_o_RRESP),
    .m_axi_gmem_o_RUSER(1'B0),
    .m_axi_gmem_o_RVALID(m_axi_gmem_o_RVALID),
    .m_axi_gmem_o_WDATA(m_axi_gmem_o_WDATA),
    .m_axi_gmem_o_WID(m_axi_gmem_o_WID),
    .m_axi_gmem_o_WLAST(m_axi_gmem_o_WLAST),
    .m_axi_gmem_o_WREADY(m_axi_gmem_o_WREADY),
    .m_axi_gmem_o_WSTRB(m_axi_gmem_o_WSTRB),
    .m_axi_gmem_o_WUSER(),
    .m_axi_gmem_o_WVALID(m_axi_gmem_o_WVALID)
  );
endmodule

// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmhsa_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMhsa_top_CfgInitialize(XMhsa_top *InstancePtr, XMhsa_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMhsa_top_Start(XMhsa_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMhsa_top_IsDone(XMhsa_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMhsa_top_IsIdle(XMhsa_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMhsa_top_IsReady(XMhsa_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMhsa_top_EnableAutoRestart(XMhsa_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMhsa_top_DisableAutoRestart(XMhsa_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XMhsa_top_Set_Q(XMhsa_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_Q_DATA, (u32)(Data));
    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_Q_DATA + 4, (u32)(Data >> 32));
}

u64 XMhsa_top_Get_Q(XMhsa_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_Q_DATA);
    Data += (u64)XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_Q_DATA + 4) << 32;
    return Data;
}

void XMhsa_top_Set_K(XMhsa_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_K_DATA, (u32)(Data));
    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_K_DATA + 4, (u32)(Data >> 32));
}

u64 XMhsa_top_Get_K(XMhsa_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_K_DATA);
    Data += (u64)XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_K_DATA + 4) << 32;
    return Data;
}

void XMhsa_top_Set_V(XMhsa_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_V_DATA, (u32)(Data));
    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_V_DATA + 4, (u32)(Data >> 32));
}

u64 XMhsa_top_Get_V(XMhsa_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_V_DATA);
    Data += (u64)XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_V_DATA + 4) << 32;
    return Data;
}

void XMhsa_top_Set_O(XMhsa_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_O_DATA, (u32)(Data));
    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_O_DATA + 4, (u32)(Data >> 32));
}

u64 XMhsa_top_Get_O(XMhsa_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_O_DATA);
    Data += (u64)XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_O_DATA + 4) << 32;
    return Data;
}

void XMhsa_top_Set_scale(XMhsa_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_SCALE_DATA, Data);
}

u32 XMhsa_top_Get_scale(XMhsa_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_SCALE_DATA);
    return Data;
}

void XMhsa_top_InterruptGlobalEnable(XMhsa_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_GIE, 1);
}

void XMhsa_top_InterruptGlobalDisable(XMhsa_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_GIE, 0);
}

void XMhsa_top_InterruptEnable(XMhsa_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_IER);
    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XMhsa_top_InterruptDisable(XMhsa_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_IER);
    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMhsa_top_InterruptClear(XMhsa_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMhsa_top_WriteReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XMhsa_top_InterruptGetEnabled(XMhsa_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_IER);
}

u32 XMhsa_top_InterruptGetStatus(XMhsa_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMhsa_top_ReadReg(InstancePtr->Control_BaseAddress, XMHSA_TOP_CONTROL_ADDR_ISR);
}


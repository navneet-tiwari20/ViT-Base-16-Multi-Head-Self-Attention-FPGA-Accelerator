// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmhsa_top.h"

extern XMhsa_top_Config XMhsa_top_ConfigTable[];

#ifdef SDT
XMhsa_top_Config *XMhsa_top_LookupConfig(UINTPTR BaseAddress) {
	XMhsa_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMhsa_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMhsa_top_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMhsa_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMhsa_top_Initialize(XMhsa_top *InstancePtr, UINTPTR BaseAddress) {
	XMhsa_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMhsa_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMhsa_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMhsa_top_Config *XMhsa_top_LookupConfig(u16 DeviceId) {
	XMhsa_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMHSA_TOP_NUM_INSTANCES; Index++) {
		if (XMhsa_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMhsa_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMhsa_top_Initialize(XMhsa_top *InstancePtr, u16 DeviceId) {
	XMhsa_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMhsa_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMhsa_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif


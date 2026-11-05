# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint ObjectParams_CopyFirstExpandedResourceInstance(void * this, undefined4 * param_1)
Owned ranges: [[009361b0, 009361f5]]

009361b0  8b412c  MOV EAX,dword ptr [ECX + 0x2c]
009361b3  8b4930  MOV ECX,dword ptr [ECX + 0x30]
009361b6  3bc1  CMP EAX,ECX
009361b8  7412  JZ 0x009361cc
009361ba  b202  MOV DL,0x2
009361bc  8d642400  LEA ESP,[ESP]
009361c0  38503c  CMP byte ptr [EAX + 0x3c],DL
009361c3  741d  JZ 0x009361e2
009361c5  83c040  ADD EAX,0x40
009361c8  3bc1  CMP EAX,ECX
009361ca  75f4  JNZ 0x009361c0
009361cc  8b442404  MOV EAX,dword ptr [ESP + 0x4]
009361d0  c70000000000  MOV dword ptr [EAX],0x0
009361d6  c7400400000000  MOV dword ptr [EAX + 0x4],0x0
009361dd  32c0  XOR AL,AL
009361df  c20400  RET 0x4
009361e2  8b5028  MOV EDX,dword ptr [EAX + 0x28]
009361e5  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
009361e9  8911  MOV dword ptr [ECX],EDX
009361eb  8b402c  MOV EAX,dword ptr [EAX + 0x2c]
009361ee  894104  MOV dword ptr [ECX + 0x4],EAX
009361f1  b001  MOV AL,0x1
009361f3  c20400  RET 0x4

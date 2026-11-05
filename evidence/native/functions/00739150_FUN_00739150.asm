# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * FUN_00739150(void * this, short * param_1, short * param_2, short * param_3)
Owned ranges: [[00739150, 007391b3]]

00739150  56  PUSH ESI
00739151  57  PUSH EDI
00739152  6a00  PUSH 0x0
00739154  68bbdc7501  PUSH 0x175dcbb
00739159  8bf1  MOV ESI,ECX
0073915b  e86063e6ff  CALL 0x0059f4c0
00739160  c74610e42afe00  MOV dword ptr [ESI + 0x10],0xfe2ae4
00739167  8d7e18  LEA EDI,[ESI + 0x18]
0073916a  8bcf  MOV ECX,EDI
0073916c  c70680fbff00  MOV dword ptr [ESI],0xfffb80
00739172  c746107cfbff00  MOV dword ptr [ESI + 0x10],0xfffb7c
00739179  c7461405000000  MOV dword ptr [ESI + 0x14],0x5
00739180  e85bdcffff  CALL 0x00736de0
00739185  8bce  MOV ECX,ESI
00739187  e8a4f0ffff  CALL 0x00738230
0073918c  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00739190  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00739194  50  PUSH EAX
00739195  51  PUSH ECX
00739196  8bcf  MOV ECX,EDI
00739198  e853cdffff  CALL 0x00735ef0
0073919d  8b442414  MOV EAX,dword ptr [ESP + 0x14]
007391a1  85c0  TEST EAX,EAX
007391a3  7408  JZ 0x007391ad
007391a5  50  PUSH EAX
007391a6  8bcf  MOV ECX,EDI
007391a8  e8a3c9ffff  CALL 0x00735b50
007391ad  5f  POP EDI
007391ae  8bc6  MOV EAX,ESI
007391b0  5e  POP ESI
007391b1  c20c00  RET 0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004abf40, 004abf8e]]
Signature: undefined DbpfIndex_InitializeModifiable(void * this, undefined4 param_1)

004abf40  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
004abf48  8bc1  MOV EAX,ECX
004abf4a  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
004abf4e  c7002039fb00  MOV dword ptr [EAX],0xfb3920
004abf54  894804  MOV dword ptr [EAX + 0x4],ECX
004abf57  f30f114018  MOVSS dword ptr [EAX + 0x18],XMM0
004abf5c  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
004abf64  f30f11401c  MOVSS dword ptr [EAX + 0x1c],XMM0
004abf69  33d2  XOR EDX,EDX
004abf6b  894824  MOV dword ptr [EAX + 0x24],ECX
004abf6e  895028  MOV dword ptr [EAX + 0x28],EDX
004abf71  c7402cec38fb00  MOV dword ptr [EAX + 0x2c],0xfb38ec
004abf78  c7401001000000  MOV dword ptr [EAX + 0x10],0x1
004abf7f  c7400c00d91401  MOV dword ptr [EAX + 0xc],0x114d900
004abf86  895014  MOV dword ptr [EAX + 0x14],EDX
004abf89  895020  MOV dword ptr [EAX + 0x20],EDX
004abf8c  c20400  RET 0x4

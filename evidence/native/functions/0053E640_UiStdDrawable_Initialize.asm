# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0053E640_UiStdDrawable_Initialize.c
Owned ranges: [[0053e640, 0053e6fb]]

0053e640  8bc1  MOV EAX,ECX
0053e642  f30f100554e5fa00  MOVSS XMM0,dword ptr [0x00fae554]
0053e64a  c74004fcb1fb00  MOV dword ptr [EAX + 0x4],0xfbb1fc
0053e651  33c9  XOR ECX,ECX
0053e653  894808  MOV dword ptr [EAX + 0x8],ECX
0053e656  c7400c5807fc00  MOV dword ptr [EAX + 0xc],0xfc0758
0053e65d  c7004008fc00  MOV dword ptr [EAX],0xfc0840
0053e663  c740042808fc00  MOV dword ptr [EAX + 0x4],0xfc0828
0053e66a  c7400cc007fc00  MOV dword ptr [EAX + 0xc],0xfc07c0
0053e671  894850  MOV dword ptr [EAX + 0x50],ECX
0053e674  c7405401000000  MOV dword ptr [EAX + 0x54],0x1
0053e67b  894878  MOV dword ptr [EAX + 0x78],ECX
0053e67e  f30f114058  MOVSS dword ptr [EAX + 0x58],XMM0
0053e683  f30f11405c  MOVSS dword ptr [EAX + 0x5c],XMM0
0053e688  f30f114060  MOVSS dword ptr [EAX + 0x60],XMM0
0053e68d  f30f114064  MOVSS dword ptr [EAX + 0x64],XMM0
0053e692  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
0053e69a  f30f114068  MOVSS dword ptr [EAX + 0x68],XMM0
0053e69f  f30f11406c  MOVSS dword ptr [EAX + 0x6c],XMM0
0053e6a4  f30f114070  MOVSS dword ptr [EAX + 0x70],XMM0
0053e6a9  f30f114074  MOVSS dword ptr [EAX + 0x74],XMM0
0053e6ae  f30f1005783ffb00  MOVSS XMM0,dword ptr [0x00fb3f78]
0053e6b6  f30f11407c  MOVSS dword ptr [EAX + 0x7c],XMM0
0053e6bb  898880000000  MOV dword ptr [EAX + 0x80],ECX
0053e6c1  c78084000000ffffff80  MOV dword ptr [EAX + 0x84],0x80ffffff
0053e6cb  894810  MOV dword ptr [EAX + 0x10],ECX
0053e6ce  894830  MOV dword ptr [EAX + 0x30],ECX
0053e6d1  894814  MOV dword ptr [EAX + 0x14],ECX
0053e6d4  894834  MOV dword ptr [EAX + 0x34],ECX
0053e6d7  894818  MOV dword ptr [EAX + 0x18],ECX
0053e6da  894838  MOV dword ptr [EAX + 0x38],ECX
0053e6dd  89481c  MOV dword ptr [EAX + 0x1c],ECX
0053e6e0  89483c  MOV dword ptr [EAX + 0x3c],ECX
0053e6e3  894820  MOV dword ptr [EAX + 0x20],ECX
0053e6e6  894840  MOV dword ptr [EAX + 0x40],ECX
0053e6e9  894824  MOV dword ptr [EAX + 0x24],ECX
0053e6ec  894844  MOV dword ptr [EAX + 0x44],ECX
0053e6ef  894828  MOV dword ptr [EAX + 0x28],ECX
0053e6f2  894848  MOV dword ptr [EAX + 0x48],ECX
0053e6f5  89482c  MOV dword ptr [EAX + 0x2c],ECX
0053e6f8  89484c  MOV dword ptr [EAX + 0x4c],ECX
0053e6fb  c3  RET

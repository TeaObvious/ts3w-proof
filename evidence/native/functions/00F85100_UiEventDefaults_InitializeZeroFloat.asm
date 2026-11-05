# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00F85100_UiEventDefaults_InitializeZeroFloat.c
Owned ranges: [[00f85100, 00f85132]]

00f85100  0f57c0  XORPS XMM0,XMM0
00f85103  681032f900  PUSH 0xf93210
00f85108  c705f0791d01f4a6fb00  MOV dword ptr [0x011d79f0],0xfba6f4
00f85112  f30f1105007a1d01  MOVSS dword ptr [0x011d7a00],XMM0
00f8511a  66c705fa791d010d00  MOV word ptr [0x011d79fa],0xd
00f85123  66c705f8791d010000  MOV word ptr [0x011d79f8],0x0
00f8512c  e850a2ffff  CALL 0x00f7f381
00f85131  59  POP ECX
00f85132  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer PaintUndoable_Initialize(void * this)
Owned ranges: [[00d24190, 00d24229]]

00d24190  56  PUSH ESI
00d24191  8bf1  MOV ESI,ECX
00d24193  e8686dffff  CALL 0x00d1af00
00d24198  0f57c0  XORPS XMM0,XMM0
00d2419b  33c0  XOR EAX,EAX
00d2419d  894650  MOV dword ptr [ESI + 0x50],EAX
00d241a0  894654  MOV dword ptr [ESI + 0x54],EAX
00d241a3  c706f06a0801  MOV dword ptr [ESI],0x1086af0
00d241a9  c746088c700801  MOV dword ptr [ESI + 0x8],0x108708c
00d241b0  c74658ffffffff  MOV dword ptr [ESI + 0x58],0xffffffff
00d241b7  894668  MOV dword ptr [ESI + 0x68],EAX
00d241ba  89466c  MOV dword ptr [ESI + 0x6c],EAX
00d241bd  894670  MOV dword ptr [ESI + 0x70],EAX
00d241c0  894674  MOV dword ptr [ESI + 0x74],EAX
00d241c3  894678  MOV dword ptr [ESI + 0x78],EAX
00d241c6  89467c  MOV dword ptr [ESI + 0x7c],EAX
00d241c9  898680000000  MOV dword ptr [ESI + 0x80],EAX
00d241cf  898684000000  MOV dword ptr [ESI + 0x84],EAX
00d241d5  89868c000000  MOV dword ptr [ESI + 0x8c],EAX
00d241db  898690000000  MOV dword ptr [ESI + 0x90],EAX
00d241e1  898694000000  MOV dword ptr [ESI + 0x94],EAX
00d241e7  c78698000000b46a0801  MOV dword ptr [ESI + 0x98],0x1086ab4
00d241f1  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00d241f7  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00d241fd  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00d24203  c786ac000000846a0801  MOV dword ptr [ESI + 0xac],0x1086a84
00d2420d  8886b8000000  MOV byte ptr [ESI + 0xb8],AL
00d24213  894660  MOV dword ptr [ESI + 0x60],EAX
00d24216  f30f1186b0000000  MOVSS dword ptr [ESI + 0xb0],XMM0
00d2421e  f30f1186b4000000  MOVSS dword ptr [ESI + 0xb4],XMM0
00d24226  8bc6  MOV EAX,ESI
00d24228  5e  POP ESI
00d24229  c3  RET

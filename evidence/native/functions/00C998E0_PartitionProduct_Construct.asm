# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C998E0_PartitionProduct_Construct.c
Owned ranges: [[00c998e0, 00c99932]]

00c998e0  56  PUSH ESI
00c998e1  8bf1  MOV ESI,ECX
00c998e3  e83897ffff  CALL 0x00c93020
00c998e8  33c0  XOR EAX,EAX
00c998ea  83c9ff  OR ECX,0xffffffff
00c998ed  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c998f3  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c998f9  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c998ff  c706f0d10701  MOV dword ptr [ESI],0x107d1f0
00c99905  898e8c000000  MOV dword ptr [ESI + 0x8c],ECX
00c9990b  c78690000000ff1f0100  MOV dword ptr [ESI + 0x90],0x11fff
00c99915  898e94000000  MOV dword ptr [ESI + 0x94],ECX
00c9991b  c7869800000007000000  MOV dword ptr [ESI + 0x98],0x7
00c99925  c786a000000001000000  MOV dword ptr [ESI + 0xa0],0x1
00c9992f  8bc6  MOV EAX,ESI
00c99931  5e  POP ESI
00c99932  c3  RET

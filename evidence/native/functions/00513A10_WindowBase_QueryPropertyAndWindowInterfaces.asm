# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00513A10_WindowBase_QueryPropertyAndWindowInterfaces.c
Owned ranges: [[00513a10, 00513a3c]]

00513a10  8bc1  MOV EAX,ECX
00513a12  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00513a16  81f96e513fee  CMP ECX,0xee3f516e
00513a1c  7410  JZ 0x00513a2e
00513a1e  81f98283c5ee  CMP ECX,0xeec58382
00513a24  7414  JZ 0x00513a3a
00513a26  81f91882eeee  CMP ECX,0xeeee8218
00513a2c  750a  JNZ 0x00513a38
00513a2e  85c0  TEST EAX,EAX
00513a30  7406  JZ 0x00513a38
00513a32  83c004  ADD EAX,0x4
00513a35  c20400  RET 0x4
00513a38  33c0  XOR EAX,EAX
00513a3a  c20400  RET 0x4

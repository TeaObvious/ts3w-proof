# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00504FD0_UiDrawableBase_QueryInterface.c
Owned ranges: [[00504fd0, 00505000]]

00504fd0  8bc1  MOV EAX,ECX
00504fd2  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00504fd6  81f9fd81c56e  CMP ECX,0x6ec581fd
00504fdc  7420  JZ 0x00504ffe
00504fde  81f96e513fee  CMP ECX,0xee3f516e
00504fe4  7412  JZ 0x00504ff8
00504fe6  81f98283c5ee  CMP ECX,0xeec58382
00504fec  750e  JNZ 0x00504ffc
00504fee  85c0  TEST EAX,EAX
00504ff0  740a  JZ 0x00504ffc
00504ff2  83c004  ADD EAX,0x4
00504ff5  c20400  RET 0x4
00504ff8  85c0  TEST EAX,EAX
00504ffa  75f6  JNZ 0x00504ff2
00504ffc  33c0  XOR EAX,EAX
00504ffe  c20400  RET 0x4

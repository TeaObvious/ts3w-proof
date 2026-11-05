# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0053DAA0_StaticRotate_Create.c
Owned ranges: [[0053daa0, 0053dacb]]

0053daa0  8b442408  MOV EAX,dword ptr [ESP + 0x8]
0053daa4  50  PUSH EAX
0053daa5  68e806fc00  PUSH 0xfc06e8
0053daaa  6a10  PUSH 0x10
0053daac  68b0010000  PUSH 0x1b0
0053dab1  e8fa75fcff  CALL 0x005050b0
0053dab6  83c410  ADD ESP,0x10
0053dab9  85c0  TEST EAX,EAX
0053dabb  740a  JZ 0x0053dac7
0053dabd  8bc8  MOV ECX,EAX
0053dabf  e81cffffff  CALL 0x0053d9e0
0053dac4  c20800  RET 0x8
0053dac7  33c0  XOR EAX,EAX
0053dac9  c20800  RET 0x8

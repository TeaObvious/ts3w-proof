# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TreeTemplate_AllocateDefaultResourceOwner(void)
Owned ranges: [[00715ae0, 00715b13]]

00715ae0  6a00  PUSH 0x0
00715ae2  6a00  PUSH 0x0
00715ae4  6a00  PUSH 0x0
00715ae6  6a00  PUSH 0x0
00715ae8  6854ceff00  PUSH 0xffce54
00715aed  6a00  PUSH 0x0
00715aef  6a10  PUSH 0x10
00715af1  6880000000  PUSH 0x80
00715af6  e825eadcff  CALL 0x004e4520
00715afb  83c420  ADD ESP,0x20
00715afe  85c0  TEST EAX,EAX
00715b00  740f  JZ 0x00715b11
00715b02  8bc8  MOV ECX,EAX
00715b04  e8971b0a00  CALL 0x007b76a0
00715b09  85c0  TEST EAX,EAX
00715b0b  7404  JZ 0x00715b11
00715b0d  83c008  ADD EAX,0x8
00715b10  c3  RET
00715b11  33c0  XOR EAX,EAX
00715b13  c3  RET

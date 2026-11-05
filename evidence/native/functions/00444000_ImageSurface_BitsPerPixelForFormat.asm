# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint ImageSurface_BitsPerPixelForFormat(uint format)
Owned ranges: [[00444000, 0044403e]]

00444000  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00444004  83c0fe  ADD EAX,-0x2
00444007  83f80a  CMP EAX,0xa
0044400a  772e  JA 0x0044403a
0044400c  0fb68050404400  MOVZX EAX,byte ptr [EAX + 0x444050]
00444013  ff248540404400  JMP dword ptr [EAX*0x4 + 0x444040]
0044401a  b808000000  MOV EAX,0x8
0044401f  c20400  RET 0x4
00444022  b810000000  MOV EAX,0x10
00444027  c20400  RET 0x4
0044402a  b820000000  MOV EAX,0x20
0044402f  c20400  RET 0x4
00444032  b840000000  MOV EAX,0x40
00444037  c20400  RET 0x4
0044403a  33c0  XOR EAX,EAX
0044403c  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotLevels_ExpandBounds(pointer lot, int requestedLevel)
Owned ranges: [[00cd2da0, 00cd2e04]]

00cd2da0  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00cd2da4  85c9  TEST ECX,ECX
00cd2da6  7503  JNZ 0x00cd2dab
00cd2da8  32c0  XOR AL,AL
00cd2daa  c3  RET
00cd2dab  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00cd2daf  8b817c010000  MOV EAX,dword ptr [ECX + 0x17c]
00cd2db5  3bd0  CMP EDX,EAX
00cd2db7  56  PUSH ESI
00cd2db8  57  PUSH EDI
00cd2db9  8bb980010000  MOV EDI,dword ptr [ECX + 0x180]
00cd2dbf  8bf2  MOV ESI,EDX
00cd2dc1  7c02  JL 0x00cd2dc5
00cd2dc3  8bf0  MOV ESI,EAX
00cd2dc5  3bd7  CMP EDX,EDI
00cd2dc7  7f02  JG 0x00cd2dcb
00cd2dc9  8bd7  MOV EDX,EDI
00cd2dcb  3bf0  CMP ESI,EAX
00cd2dcd  7506  JNZ 0x00cd2dd5
00cd2dcf  3bfa  CMP EDI,EDX
00cd2dd1  7421  JZ 0x00cd2df4
00cd2dd3  3bf0  CMP ESI,EAX
00cd2dd5  7d14  JGE 0x00cd2deb
00cd2dd7  8a81bc040000  MOV AL,byte ptr [ECX + 0x4bc]
00cd2ddd  f6d8  NEG AL
00cd2ddf  1bc0  SBB EAX,EAX
00cd2de1  83e003  AND EAX,0x3
00cd2de4  83c0fc  ADD EAX,-0x4
00cd2de7  3bf0  CMP ESI,EAX
00cd2de9  7c09  JL 0x00cd2df4
00cd2deb  3bd7  CMP EDX,EDI
00cd2ded  7e0a  JLE 0x00cd2df9
00cd2def  83fa05  CMP EDX,0x5
00cd2df2  7e05  JLE 0x00cd2df9
00cd2df4  5f  POP EDI
00cd2df5  32c0  XOR AL,AL
00cd2df7  5e  POP ESI
00cd2df8  c3  RET
00cd2df9  52  PUSH EDX
00cd2dfa  56  PUSH ESI
00cd2dfb  e8e0b2dfff  CALL 0x00ace0e0
00cd2e00  5f  POP EDI
00cd2e01  b001  MOV AL,0x1
00cd2e03  5e  POP ESI
00cd2e04  c3  RET

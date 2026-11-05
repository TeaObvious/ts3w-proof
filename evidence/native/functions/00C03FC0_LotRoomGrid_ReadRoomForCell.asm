# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00c03fc0, 00c0405b]]
signature=short __thiscall LotRoomGrid_ReadRoomForCell(void * this, char * param_1, char param_2)
PLATE
Analyst: reads one of four 16-bit room values from the room grid for a four-byte encoded local cell key. MOVSX sign-extends key bytes 0, 1 and 2 into X, Z and level; byte 3 is a quadrant/flag mask. It adjusts level by -1 when bit 0x10 is set, checks signed X/Z/level against grid extents, fetches the eight-byte cell, and returns the first of four enabled 16-bit quadrant values in AX. No enabled quadrant returns 0xffff. For invalid/out-of-range input, NEG AL; SBB EAX,EAX returns 0 when the final flag is zero and 0xffffffff otherwise. The caller consumes AX; Ghidra's char types must not erase the MOVSX semantics.

00c03fc0  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00c03fc4  0fbe4202  MOVSX EAX,byte ptr [EDX + 0x2]
00c03fc8  2b4110  SUB EAX,dword ptr [ECX + 0x10]
00c03fcb  83ec08  SUB ESP,0x8
00c03fce  53  PUSH EBX
00c03fcf  8a5a03  MOV BL,byte ptr [EDX + 0x3]
00c03fd2  f6c310  TEST BL,0x10
00c03fd5  56  PUSH ESI
00c03fd6  0fbe32  MOVSX ESI,byte ptr [EDX]
00c03fd9  57  PUSH EDI
00c03fda  0fbe7a01  MOVSX EDI,byte ptr [EDX + 0x1]
00c03fde  7403  JZ 0x00c03fe3
00c03fe0  83e801  SUB EAX,0x1
00c03fe3  8b4914  MOV ECX,dword ptr [ECX + 0x14]
00c03fe6  85c9  TEST ECX,ECX
00c03fe8  7461  JZ 0x00c0404b
00c03fea  85f6  TEST ESI,ESI
00c03fec  7c5d  JL 0x00c0404b
00c03fee  3b7104  CMP ESI,dword ptr [ECX + 0x4]
00c03ff1  7d58  JGE 0x00c0404b
00c03ff3  85ff  TEST EDI,EDI
00c03ff5  7c54  JL 0x00c0404b
00c03ff7  3b7908  CMP EDI,dword ptr [ECX + 0x8]
00c03ffa  7d4f  JGE 0x00c0404b
00c03ffc  85c0  TEST EAX,EAX
00c03ffe  7c4b  JL 0x00c0404b
00c04000  3b410c  CMP EAX,dword ptr [ECX + 0xc]
00c04003  7d46  JGE 0x00c0404b
00c04005  50  PUSH EAX
00c04006  57  PUSH EDI
00c04007  56  PUSH ESI
00c04008  e80374e8ff  CALL 0x00a8b410
00c0400d  8b08  MOV ECX,dword ptr [EAX]
00c0400f  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c04012  894c240c  MOV dword ptr [ESP + 0xc],ECX
00c04016  89542410  MOV dword ptr [ESP + 0x10],EDX
00c0401a  33c9  XOR ECX,ECX
00c0401c  8d642400  LEA ESP,[ESP]
00c04020  b001  MOV AL,0x1
00c04022  d2e0  SHL AL,CL
00c04024  84c3  TEST BL,AL
00c04026  7515  JNZ 0x00c0403d
00c04028  83c101  ADD ECX,0x1
00c0402b  83f904  CMP ECX,0x4
00c0402e  7cf0  JL 0x00c04020
00c04030  5f  POP EDI
00c04031  5e  POP ESI
00c04032  660dffff  OR AX,0xffff
00c04036  5b  POP EBX
00c04037  83c408  ADD ESP,0x8
00c0403a  c20800  RET 0x8
00c0403d  668b444c0c  MOV AX,word ptr [ESP + ECX*0x2 + 0xc]
00c04042  5f  POP EDI
00c04043  5e  POP ESI
00c04044  5b  POP EBX
00c04045  83c408  ADD ESP,0x8
00c04048  c20800  RET 0x8
00c0404b  8a44241c  MOV AL,byte ptr [ESP + 0x1c]
00c0404f  f6d8  NEG AL
00c04051  5f  POP EDI
00c04052  5e  POP ESI
00c04053  5b  POP EBX
00c04054  1bc0  SBB EAX,EAX
00c04056  83c408  ADD ESP,0x8
00c04059  c20800  RET 0x8

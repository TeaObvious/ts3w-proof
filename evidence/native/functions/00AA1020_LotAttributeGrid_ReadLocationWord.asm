# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00aa1020, 00aa1050]]
signature=undefined2 __thiscall LotAttributeGrid_ReadLocationWord(void * this, char * param_1)
PLATE
Analyst PC1.67 static: ECX attribute-grid service plus location pointer, RET0x04; AX UInt16 result. If+7C storage exists call retained lookup with signed-byte X/Z and signed level minus stored minimum; otherwise return0. Attribute semantics are not established as room ID, PatternID or current material/proxy grouping. Child lookup/layout remains bounded. Descriptive role, not recovered symbol.

00aa1020  8b517c  MOV EDX,dword ptr [ECX + 0x7c]
00aa1023  85d2  TEST EDX,EDX
00aa1025  7424  JZ 0x00aa104b
00aa1027  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00aa102b  56  PUSH ESI
00aa102c  0fbe7002  MOVSX ESI,byte ptr [EAX + 0x2]
00aa1030  2b710c  SUB ESI,dword ptr [ECX + 0xc]
00aa1033  0fbe4801  MOVSX ECX,byte ptr [EAX + 0x1]
00aa1037  0fbe00  MOVSX EAX,byte ptr [EAX]
00aa103a  56  PUSH ESI
00aa103b  51  PUSH ECX
00aa103c  50  PUSH EAX
00aa103d  8bca  MOV ECX,EDX
00aa103f  e8cca3feff  CALL 0x00a8b410
00aa1044  668b00  MOV AX,word ptr [EAX]
00aa1047  5e  POP ESI
00aa1048  c20400  RET 0x4
00aa104b  6633c0  XOR AX,AX
00aa104e  c20400  RET 0x4

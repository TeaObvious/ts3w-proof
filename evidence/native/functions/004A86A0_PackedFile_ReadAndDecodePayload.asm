# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004a86a0, 004a8713]]
Signature: bool PackedFile_ReadAndDecodePayload(void * this, uint codecWord, uint payloadOffset, uint storedSize, uint memorySize, uint outputAddress)

004a86a0  53  PUSH EBX
004a86a1  32db  XOR BL,BL ; After PUSH EBX, [ESP+C] is physical argument2 (payload offset), not memory size or an external register input.
004a86a3  837c240c00  CMP dword ptr [ESP + 0xc],0x0
004a86a8  57  PUSH EDI
004a86a9  8bf9  MOV EDI,ECX
004a86ab  7460  JZ 0x004a870d
004a86ad  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
004a86b0  8b01  MOV EAX,dword ptr [ECX]
004a86b2  8b5008  MOV EDX,dword ptr [EAX + 0x8]
004a86b5  55  PUSH EBP
004a86b6  8b6c2418  MOV EBP,dword ptr [ESP + 0x18]
004a86ba  56  PUSH ESI
004a86bb  6a00  PUSH 0x0
004a86bd  68e435fb00  PUSH 0xfb35e4
004a86c2  55  PUSH EBP
004a86c3  ffd2  CALL EDX
004a86c5  8bf0  MOV ESI,EAX
004a86c7  85f6  TEST ESI,ESI
004a86c9  7439  JZ 0x004a8704
004a86cb  8b442418  MOV EAX,dword ptr [ESP + 0x18]
004a86cf  55  PUSH EBP
004a86d0  50  PUSH EAX
004a86d1  56  PUSH ESI
004a86d2  8bcf  MOV ECX,EDI
004a86d4  e827faffff  CALL 0x004a8100
004a86d9  84c0  TEST AL,AL
004a86db  741a  JZ 0x004a86f7
004a86dd  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
004a86e1  8b542420  MOV EDX,dword ptr [ESP + 0x20]
004a86e5  8b442414  MOV EAX,dword ptr [ESP + 0x14]
004a86e9  51  PUSH ECX
004a86ea  52  PUSH EDX
004a86eb  55  PUSH EBP
004a86ec  56  PUSH ESI
004a86ed  50  PUSH EAX
004a86ee  8bcf  MOV ECX,EDI
004a86f0  e83bf0ffff  CALL 0x004a7730
004a86f5  8ad8  MOV BL,AL
004a86f7  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
004a86fa  8b11  MOV EDX,dword ptr [ECX]
004a86fc  8b420c  MOV EAX,dword ptr [EDX + 0xc]
004a86ff  6a00  PUSH 0x0
004a8701  56  PUSH ESI
004a8702  ffd0  CALL EAX
004a8704  5e  POP ESI
004a8705  5d  POP EBP
004a8706  5f  POP EDI
004a8707  8ac3  MOV AL,BL
004a8709  5b  POP EBX
004a870a  c21400  RET 0x14
004a870d  5f  POP EDI
004a870e  8ac3  MOV AL,BL
004a8710  5b  POP EBX
004a8711  c21400  RET 0x14

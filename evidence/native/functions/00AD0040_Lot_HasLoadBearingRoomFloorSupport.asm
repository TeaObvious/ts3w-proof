# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Lot_HasLoadBearingRoomFloorSupport(pointer lot, char * cell)
Owned ranges: [[00ad0040, 00ad007c] [00ad0080, 00ad01c1]]

00ad0040  83ec2c  SUB ESP,0x2c
00ad0043  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00ad004b  53  PUSH EBX
00ad004c  55  PUSH EBP
00ad004d  8b6c2438  MOV EBP,dword ptr [ESP + 0x38]
00ad0051  8b8598020000  MOV EAX,dword ptr [EBP + 0x298]
00ad0057  56  PUSH ESI
00ad0058  57  PUSH EDI
00ad0059  8b7c2444  MOV EDI,dword ptr [ESP + 0x44]
00ad005d  668b0f  MOV CX,word ptr [EDI]
00ad0060  8a5702  MOV DL,byte ptr [EDI + 0x2]
00ad0063  80c2ff  ADD DL,0xff
00ad0066  66894c2440  MOV word ptr [ESP + 0x40],CX
00ad006b  33db  XOR EBX,EBX
00ad006d  33c9  XOR ECX,ECX
00ad006f  89442410  MOV dword ptr [ESP + 0x10],EAX
00ad0073  88542442  MOV byte ptr [ESP + 0x42],DL
00ad0077  894c2414  MOV dword ptr [ESP + 0x14],ECX
00ad007b  eb03  JMP 0x00ad0080
00ad007d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00ad0080  b001  MOV AL,0x1
00ad0082  d2e0  SHL AL,CL
00ad0084  844703  TEST byte ptr [EDI + 0x3],AL
00ad0087  0f8411010000  JZ 0x00ad019e
00ad008d  668b4c2440  MOV CX,word ptr [ESP + 0x40]
00ad0092  88542446  MOV byte ptr [ESP + 0x46],DL
00ad0096  8d542424  LEA EDX,[ESP + 0x24]
00ad009a  88442447  MOV byte ptr [ESP + 0x47],AL
00ad009e  52  PUSH EDX
00ad009f  8d442448  LEA EAX,[ESP + 0x48]
00ad00a3  50  PUSH EAX
00ad00a4  66894c244c  MOV word ptr [ESP + 0x4c],CX
00ad00a9  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00ad00af  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
00ad00b5  895c2434  MOV dword ptr [ESP + 0x34],EBX
00ad00b9  e8e2800200  CALL 0x00af81a0
00ad00be  83c408  ADD ESP,0x8
00ad00c1  53  PUSH EBX
00ad00c2  6a01  PUSH 0x1
00ad00c4  8d4c242c  LEA ECX,[ESP + 0x2c]
00ad00c8  51  PUSH ECX
00ad00c9  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00ad00cd  e8ee810700  CALL 0x00b482c0
00ad00d2  0fb7f0  MOVZX ESI,AX
00ad00d5  663bf3  CMP SI,BX
00ad00d8  0f84b0000000  JZ 0x00ad018e
00ad00de  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00ad00e6  8d542430  LEA EDX,[ESP + 0x30]
00ad00ea  52  PUSH EDX
00ad00eb  57  PUSH EDI
00ad00ec  f30f11442438  MOVSS dword ptr [ESP + 0x38],XMM0
00ad00f2  f30f1144243c  MOVSS dword ptr [ESP + 0x3c],XMM0
00ad00f8  895c2440  MOV dword ptr [ESP + 0x40],EBX
00ad00fc  e89f800200  CALL 0x00af81a0
00ad0101  8b8d90020000  MOV ECX,dword ptr [EBP + 0x290]
00ad0107  83c408  ADD ESP,0x8
00ad010a  8d442430  LEA EAX,[ESP + 0x30]
00ad010e  50  PUSH EAX
00ad010f  e87cc5fbff  CALL 0x00a8c690
00ad0114  d95c2418  FSTP float ptr [ESP + 0x18]
00ad0118  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00ad011c  8b4958  MOV ECX,dword ptr [ECX + 0x58]
00ad011f  8d54241c  LEA EDX,[ESP + 0x1c]
00ad0123  52  PUSH EDX
00ad0124  56  PUSH ESI
00ad0125  c6442424ff  MOV byte ptr [ESP + 0x24],0xff
00ad012a  c6442425ff  MOV byte ptr [ESP + 0x25],0xff
00ad012f  885c2426  MOV byte ptr [ESP + 0x26],BL
00ad0133  c6442427ff  MOV byte ptr [ESP + 0x27],0xff
00ad0138  c6442428ff  MOV byte ptr [ESP + 0x28],0xff
00ad013d  885c2429  MOV byte ptr [ESP + 0x29],BL
00ad0141  e84a031700  CALL 0x00c40490
00ad0146  84c0  TEST AL,AL
00ad0148  7444  JZ 0x00ad018e
00ad014a  8a5f02  MOV BL,byte ptr [EDI + 0x2]
00ad014d  8b8d90020000  MOV ECX,dword ptr [EBP + 0x290]
00ad0153  8b4124  MOV EAX,dword ptr [ECX + 0x24]
00ad0156  8a54241c  MOV DL,byte ptr [ESP + 0x1c]
00ad015a  0fbef3  MOVSX ESI,BL
00ad015d  2b7110  SUB ESI,dword ptr [ECX + 0x10]
00ad0160  0fbeca  MOVSX ECX,DL
00ad0163  0faf7004  IMUL ESI,dword ptr [EAX + 0x4]
00ad0167  0fbe54241d  MOVSX EDX,byte ptr [ESP + 0x1d]
00ad016c  03f1  ADD ESI,ECX
00ad016e  0faf7008  IMUL ESI,dword ptr [EAX + 0x8]
00ad0172  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00ad0175  03f2  ADD ESI,EDX
00ad0177  d904b0  FLD float ptr [EAX + ESI*0x4]
00ad017a  d8642418  FSUB float ptr [ESP + 0x18]
00ad017e  d9e1  FABS
00ad0180  d905246b0601  FLD float ptr [0x01066b24]
00ad0186  dff1  FCOMIP ST0,ST1
00ad0188  ddd8  FSTP ST0
00ad018a  772c  JA 0x00ad01b8
00ad018c  33db  XOR EBX,EBX
00ad018e  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00ad0196  8a542442  MOV DL,byte ptr [ESP + 0x42]
00ad019a  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ad019e  83c101  ADD ECX,0x1
00ad01a1  83f904  CMP ECX,0x4
00ad01a4  894c2414  MOV dword ptr [ESP + 0x14],ECX
00ad01a8  0f8cd2feffff  JL 0x00ad0080
00ad01ae  5f  POP EDI
00ad01af  5e  POP ESI
00ad01b0  5d  POP EBP
00ad01b1  32c0  XOR AL,AL
00ad01b3  5b  POP EBX
00ad01b4  83c42c  ADD ESP,0x2c
00ad01b7  c3  RET
00ad01b8  5f  POP EDI
00ad01b9  5e  POP ESI
00ad01ba  5d  POP EBP
00ad01bb  b001  MOV AL,0x1
00ad01bd  5b  POP EBX
00ad01be  83c42c  ADD ESP,0x2c
00ad01c1  c3  RET

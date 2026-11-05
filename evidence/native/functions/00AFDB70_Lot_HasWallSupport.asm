# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Lot_HasWallSupport(pointer lot, char * wallLocator)
Owned ranges: [[00afdb70, 00afdc39] [00afdc40, 00afdd0b]]

00afdb70  83ec20  SUB ESP,0x20
00afdb73  0cff  OR AL,0xff
00afdb75  55  PUSH EBP
00afdb76  56  PUSH ESI
00afdb77  8b742430  MOV ESI,dword ptr [ESP + 0x30]
00afdb7b  88442414  MOV byte ptr [ESP + 0x14],AL
00afdb7f  88442415  MOV byte ptr [ESP + 0x15],AL
00afdb83  88442417  MOV byte ptr [ESP + 0x17],AL
00afdb87  88442418  MOV byte ptr [ESP + 0x18],AL
00afdb8b  88442419  MOV byte ptr [ESP + 0x19],AL
00afdb8f  8844241b  MOV byte ptr [ESP + 0x1b],AL
00afdb93  57  PUSH EDI
00afdb94  8d442418  LEA EAX,[ESP + 0x18]
00afdb98  50  PUSH EAX
00afdb99  56  PUSH ESI
00afdb9a  c644242200  MOV byte ptr [ESP + 0x22],0x0
00afdb9f  c644242600  MOV byte ptr [ESP + 0x26],0x0
00afdba4  e877831400  CALL 0x00c45f20
00afdba9  8d4c2424  LEA ECX,[ESP + 0x24]
00afdbad  51  PUSH ECX
00afdbae  56  PUSH ESI
00afdbaf  e8fc831400  CALL 0x00c45fb0
00afdbb4  8b7c2440  MOV EDI,dword ptr [ESP + 0x40]
00afdbb8  8b97ac020000  MOV EDX,dword ptr [EDI + 0x2ac]
00afdbbe  8b8790020000  MOV EAX,dword ptr [EDI + 0x290]
00afdbc4  83c410  ADD ESP,0x10
00afdbc7  89542410  MOV dword ptr [ESP + 0x10],EDX
00afdbcb  89442414  MOV dword ptr [ESP + 0x14],EAX
00afdbcf  33ed  XOR EBP,EBP
00afdbd1  8d742418  LEA ESI,[ESP + 0x18]
00afdbd5  0fbe06  MOVSX EAX,byte ptr [ESI]
00afdbd8  85c0  TEST EAX,EAX
00afdbda  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00afdbde  0f8c10010000  JL 0x00afdcf4
00afdbe4  3b8774010000  CMP EAX,dword ptr [EDI + 0x174]
00afdbea  0f8d04010000  JGE 0x00afdcf4
00afdbf0  85c9  TEST ECX,ECX
00afdbf2  0f8cfc000000  JL 0x00afdcf4
00afdbf8  3b8f78010000  CMP ECX,dword ptr [EDI + 0x178]
00afdbfe  0f8df0000000  JGE 0x00afdcf4
00afdc04  0fbe4602  MOVSX EAX,byte ptr [ESI + 0x2]
00afdc08  3b877c010000  CMP EAX,dword ptr [EDI + 0x17c]
00afdc0e  0f8ce0000000  JL 0x00afdcf4
00afdc14  3b8780010000  CMP EAX,dword ptr [EDI + 0x180]
00afdc1a  0f8fd4000000  JG 0x00afdcf4
00afdc20  56  PUSH ESI
00afdc21  56  PUSH ESI
00afdc22  8d4c2428  LEA ECX,[ESP + 0x28]
00afdc26  e8c58fffff  CALL 0x00af6bf0
00afdc2b  8d4c2420  LEA ECX,[ESP + 0x20]
00afdc2f  e85c88ffff  CALL 0x00af6490
00afdc34  84c0  TEST AL,AL
00afdc36  7558  JNZ 0x00afdc90
00afdc38  eb06  JMP 0x00afdc40
00afdc3a  8d9b00000000  .byte 8d9b00000000 ; NONOWNED envelope gap bytes
00afdc40  8d4c2420  LEA ECX,[ESP + 0x20]
00afdc44  e89788ffff  CALL 0x00af64e0
00afdc49  668b08  MOV CX,word ptr [EAX]
00afdc4c  66894c2430  MOV word ptr [ESP + 0x30],CX
00afdc51  8a5002  MOV DL,byte ptr [EAX + 0x2]
00afdc54  88542432  MOV byte ptr [ESP + 0x32],DL
00afdc58  8a4003  MOV AL,byte ptr [EAX + 0x3]
00afdc5b  844603  TEST byte ptr [ESI + 0x3],AL
00afdc5e  88442433  MOV byte ptr [ESP + 0x33],AL
00afdc62  7416  JZ 0x00afdc7a
00afdc64  6a01  PUSH 0x1
00afdc66  6a00  PUSH 0x0
00afdc68  8d442438  LEA EAX,[ESP + 0x38]
00afdc6c  50  PUSH EAX
00afdc6d  57  PUSH EDI
00afdc6e  e86d4cfdff  CALL 0x00ad28e0
00afdc73  83c410  ADD ESP,0x10
00afdc76  84c0  TEST AL,AL
00afdc78  741f  JZ 0x00afdc99
00afdc7a  8d4c2420  LEA ECX,[ESP + 0x20]
00afdc7e  e81d88ffff  CALL 0x00af64a0
00afdc83  8d4c2420  LEA ECX,[ESP + 0x20]
00afdc87  e80488ffff  CALL 0x00af6490
00afdc8c  84c0  TEST AL,AL
00afdc8e  74b0  JZ 0x00afdc40
00afdc90  5f  POP EDI
00afdc91  5e  POP ESI
00afdc92  b001  MOV AL,0x1
00afdc94  5d  POP EBP
00afdc95  83c420  ADD ESP,0x20
00afdc98  c3  RET
00afdc99  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00afdc9d  85c9  TEST ECX,ECX
00afdc9f  740a  JZ 0x00afdcab
00afdca1  56  PUSH ESI
00afdca2  e889a80900  CALL 0x00b98530
00afdca7  84c0  TEST AL,AL
00afdca9  75e5  JNZ 0x00afdc90
00afdcab  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00afdcaf  85c9  TEST ECX,ECX
00afdcb1  7411  JZ 0x00afdcc4
00afdcb3  0fb65603  MOVZX EDX,byte ptr [ESI + 0x3]
00afdcb7  6a01  PUSH 0x1
00afdcb9  52  PUSH EDX
00afdcba  56  PUSH ESI
00afdcbb  e8d003f9ff  CALL 0x00a8e090
00afdcc0  84c0  TEST AL,AL
00afdcc2  75cc  JNZ 0x00afdc90
00afdcc4  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00afdcc8  80780200  CMP byte ptr [EAX + 0x2],0x0
00afdccc  7e26  JLE 0x00afdcf4
00afdcce  668b0e  MOV CX,word ptr [ESI]
00afdcd1  8a5602  MOV DL,byte ptr [ESI + 0x2]
00afdcd4  8d44240c  LEA EAX,[ESP + 0xc]
00afdcd8  50  PUSH EAX
00afdcd9  57  PUSH EDI
00afdcda  66894c2414  MOV word ptr [ESP + 0x14],CX
00afdcdf  88542416  MOV byte ptr [ESP + 0x16],DL
00afdce3  c64424170f  MOV byte ptr [ESP + 0x17],0xf
00afdce8  e8630ffdff  CALL 0x00acec50
00afdced  83c408  ADD ESP,0x8
00afdcf0  84c0  TEST AL,AL
00afdcf2  759c  JNZ 0x00afdc90
00afdcf4  83c501  ADD EBP,0x1
00afdcf7  83c604  ADD ESI,0x4
00afdcfa  83fd02  CMP EBP,0x2
00afdcfd  0f8cd2feffff  JL 0x00afdbd5
00afdd03  5f  POP EDI
00afdd04  5e  POP ESI
00afdd05  32c0  XOR AL,AL
00afdd07  5d  POP EBP
00afdd08  83c420  ADD ESP,0x20
00afdd0b  c3  RET

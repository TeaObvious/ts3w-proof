# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined BasementUndo_ApplyRequestedPartsAndPrice(void * this, pointer tileAndMask, uint stateWord)
Owned ranges: [[00d1c840, 00d1c98f]]

00d1c840  55  PUSH EBP
00d1c841  8be9  MOV EBP,ECX
00d1c843  837d5000  CMP dword ptr [EBP + 0x50],0x0
00d1c847  0f843f010000  JZ 0x00d1c98c
00d1c84d  56  PUSH ESI
00d1c84e  57  PUSH EDI
00d1c84f  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00d1c853  668b07  MOV AX,word ptr [EDI]
00d1c856  8a4f02  MOV CL,byte ptr [EDI + 0x2]
00d1c859  6689442410  MOV word ptr [ESP + 0x10],AX
00d1c85e  884c2412  MOV byte ptr [ESP + 0x12],CL
00d1c862  c644241300  MOV byte ptr [ESP + 0x13],0x0
00d1c867  33f6  XOR ESI,ESI
00d1c869  53  PUSH EBX
00d1c86a  8d9b00000000  LEA EBX,[EBX]
00d1c870  b301  MOV BL,0x1
00d1c872  8bce  MOV ECX,ESI
00d1c874  d2e3  SHL BL,CL
00d1c876  845f03  TEST byte ptr [EDI + 0x3],BL
00d1c879  7414  JZ 0x00d1c88f
00d1c87b  8b4d50  MOV ECX,dword ptr [EBP + 0x50]
00d1c87e  56  PUSH ESI
00d1c87f  57  PUSH EDI
00d1c880  e81ba4d9ff  CALL 0x00ab6ca0
00d1c885  3a442418  CMP AL,byte ptr [ESP + 0x18]
00d1c889  7404  JZ 0x00d1c88f
00d1c88b  085c2417  OR byte ptr [ESP + 0x17],BL
00d1c88f  83c601  ADD ESI,0x1
00d1c892  83fe04  CMP ESI,0x4
00d1c895  7cd9  JL 0x00d1c870
00d1c897  807c241700  CMP byte ptr [ESP + 0x17],0x0
00d1c89c  0f84e7000000  JZ 0x00d1c989
00d1c8a2  8b5c2418  MOV EBX,dword ptr [ESP + 0x18]
00d1c8a6  8b4d50  MOV ECX,dword ptr [EBP + 0x50]
00d1c8a9  53  PUSH EBX
00d1c8aa  8d542418  LEA EDX,[ESP + 0x18]
00d1c8ae  52  PUSH EDX
00d1c8af  e8fc7ddaff  CALL 0x00ac46b0
00d1c8b4  8b455c  MOV EAX,dword ptr [EBP + 0x5c]
00d1c8b7  3b4560  CMP EAX,dword ptr [EBP + 0x60]
00d1c8ba  8d4d58  LEA ECX,[EBP + 0x58]
00d1c8bd  7322  JNC 0x00d1c8e1
00d1c8bf  85c0  TEST EAX,EAX
00d1c8c1  8d5004  LEA EDX,[EAX + 0x4]
00d1c8c4  895104  MOV dword ptr [ECX + 0x4],EDX
00d1c8c7  7423  JZ 0x00d1c8ec
00d1c8c9  668b4c2414  MOV CX,word ptr [ESP + 0x14]
00d1c8ce  668908  MOV word ptr [EAX],CX
00d1c8d1  8a542416  MOV DL,byte ptr [ESP + 0x16]
00d1c8d5  885002  MOV byte ptr [EAX + 0x2],DL
00d1c8d8  8a4c2417  MOV CL,byte ptr [ESP + 0x17]
00d1c8dc  884803  MOV byte ptr [EAX + 0x3],CL
00d1c8df  eb0b  JMP 0x00d1c8ec
00d1c8e1  8d542414  LEA EDX,[ESP + 0x14]
00d1c8e5  52  PUSH EDX
00d1c8e6  50  PUSH EAX
00d1c8e7  e8c4ebd2ff  CALL 0x00a4b4b0
00d1c8ec  53  PUSH EBX
00d1c8ed  8d442418  LEA EAX,[ESP + 0x18]
00d1c8f1  50  PUSH EAX
00d1c8f2  8bcd  MOV ECX,EBP
00d1c8f4  e8d7fdffff  CALL 0x00d1c6d0
00d1c8f9  0fbe442417  MOVSX EAX,byte ptr [ESP + 0x17]
00d1c8fe  8bc8  MOV ECX,EAX
00d1c900  d1e9  SHR ECX,0x1
00d1c902  81e155555555  AND ECX,0x55555555
00d1c908  2bc1  SUB EAX,ECX
00d1c90a  8bf0  MOV ESI,EAX
00d1c90c  c1ee02  SHR ESI,0x2
00d1c90f  2533333333  AND EAX,0x33333333
00d1c914  81e633333333  AND ESI,0x33333333
00d1c91a  03f0  ADD ESI,EAX
00d1c91c  e80f35d9ff  CALL 0x00aafe30
00d1c921  8bc8  MOV ECX,EAX
00d1c923  e87843d9ff  CALL 0x00ab0ca0
00d1c928  8bd6  MOV EDX,ESI
00d1c92a  c1ea04  SHR EDX,0x4
00d1c92d  03d6  ADD EDX,ESI
00d1c92f  81e20f0f0f0f  AND EDX,0xf0f0f0f
00d1c935  69d201010101  IMUL EDX,EDX,0x1010101
00d1c93b  c1ea18  SHR EDX,0x18
00d1c93e  84db  TEST BL,BL
00d1c940  89542418  MOV dword ptr [ESP + 0x18],EDX
00d1c944  da4c2418  FIMUL dword ptr [ESP + 0x18]
00d1c948  d80dc8f80601  FMUL float ptr [0x0106f8c8]
00d1c94e  d95c2418  FSTP float ptr [ESP + 0x18]
00d1c952  7408  JZ 0x00d1c95c
00d1c954  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
00d1c95a  eb0e  JMP 0x00d1c96a
00d1c95c  f30f1005f098f900  MOVSS XMM0,dword ptr [0x00f998f0]
00d1c964  f30f5c442418  SUBSS XMM0,dword ptr [ESP + 0x18]
00d1c96a  8b7500  MOV ESI,dword ptr [EBP]
00d1c96d  8b4630  MOV EAX,dword ptr [ESI + 0x30]
00d1c970  8bcd  MOV ECX,EBP
00d1c972  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00d1c978  ffd0  CALL EAX
00d1c97a  d8442418  FADD float ptr [ESP + 0x18]
00d1c97e  8b562c  MOV EDX,dword ptr [ESI + 0x2c]
00d1c981  51  PUSH ECX
00d1c982  8bcd  MOV ECX,EBP
00d1c984  d91c24  FSTP float ptr [ESP]
00d1c987  ffd2  CALL EDX
00d1c989  5b  POP EBX
00d1c98a  5f  POP EDI
00d1c98b  5e  POP ESI
00d1c98c  5d  POP EBP
00d1c98d  c20800  RET 0x8

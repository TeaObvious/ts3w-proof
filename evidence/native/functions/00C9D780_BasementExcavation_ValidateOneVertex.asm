# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementExcavation_ValidateOneVertex(void * param_1, char * param_2, float param_3, uint * param_4, void * param_5)
Owned ranges: [[00c9d780, 00c9d8b6]]

00c9d780  51  PUSH ECX
00c9d781  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00c9d785  0fbe02  MOVSX EAX,byte ptr [EDX]
00c9d788  85c0  TEST EAX,EAX
00c9d78a  53  PUSH EBX
00c9d78b  55  PUSH EBP
00c9d78c  56  PUSH ESI
00c9d78d  57  PUSH EDI
00c9d78e  0fbe7a01  MOVSX EDI,byte ptr [EDX + 0x1]
00c9d792  7c30  JL 0x00c9d7c4
00c9d794  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00c9d798  8bae74010000  MOV EBP,dword ptr [ESI + 0x174]
00c9d79e  3bc5  CMP EAX,EBP
00c9d7a0  7f22  JG 0x00c9d7c4
00c9d7a2  85ff  TEST EDI,EDI
00c9d7a4  7c1e  JL 0x00c9d7c4
00c9d7a6  3bbe78010000  CMP EDI,dword ptr [ESI + 0x178]
00c9d7ac  7f16  JG 0x00c9d7c4
00c9d7ae  0fbe4a02  MOVSX ECX,byte ptr [EDX + 0x2]
00c9d7b2  3b8e7c010000  CMP ECX,dword ptr [ESI + 0x17c]
00c9d7b8  7c0a  JL 0x00c9d7c4
00c9d7ba  8b9e80010000  MOV EBX,dword ptr [ESI + 0x180]
00c9d7c0  3bcb  CMP ECX,EBX
00c9d7c2  7e08  JLE 0x00c9d7cc
00c9d7c4  5f  POP EDI
00c9d7c5  5e  POP ESI
00c9d7c6  5d  POP EBP
00c9d7c7  32c0  XOR AL,AL
00c9d7c9  5b  POP EBX
00c9d7ca  59  POP ECX
00c9d7cb  c3  RET
00c9d7cc  85c0  TEST EAX,EAX
00c9d7ce  74f4  JZ 0x00c9d7c4
00c9d7d0  3bc5  CMP EAX,EBP
00c9d7d2  74f0  JZ 0x00c9d7c4
00c9d7d4  85ff  TEST EDI,EDI
00c9d7d6  74ec  JZ 0x00c9d7c4
00c9d7d8  3bbe78010000  CMP EDI,dword ptr [ESI + 0x178]
00c9d7de  74e4  JZ 0x00c9d7c4
00c9d7e0  8d4101  LEA EAX,[ECX + 0x1]
00c9d7e3  8bcb  MOV ECX,EBX
00c9d7e5  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00c9d7e9  3bc1  CMP EAX,ECX
00c9d7eb  894c2410  MOV dword ptr [ESP + 0x10],ECX
00c9d7ef  8d44241c  LEA EAX,[ESP + 0x1c]
00c9d7f3  7c04  JL 0x00c9d7f9
00c9d7f5  8d442410  LEA EAX,[ESP + 0x10]
00c9d7f9  8b38  MOV EDI,dword ptr [EAX]
00c9d7fb  668b02  MOV AX,word ptr [EDX]
00c9d7fe  f30f10442420  MOVSS XMM0,dword ptr [ESP + 0x20]
00c9d804  668944241c  MOV word ptr [ESP + 0x1c],AX
00c9d809  8a4202  MOV AL,byte ptr [EDX + 0x2]
00c9d80c  0fbec8  MOVSX ECX,AL
00c9d80f  3bcf  CMP ECX,EDI
00c9d811  8844241e  MOV byte ptr [ESP + 0x1e],AL
00c9d815  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c9d81b  0f8f8e000000  JG 0x00c9d8af
00c9d821  8b5c2428  MOV EBX,dword ptr [ESP + 0x28]
00c9d825  8b6c2424  MOV EBP,dword ptr [ESP + 0x24]
00c9d829  8da42400000000  LEA ESP,[ESP]
00c9d830  84c0  TEST AL,AL
00c9d832  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00c9d838  8b5124  MOV EDX,dword ptr [ECX + 0x24]
00c9d83b  7526  JNZ 0x00c9d863
00c9d83d  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9d840  0faf4110  IMUL EAX,dword ptr [ECX + 0x10]
00c9d844  0fbe4c241c  MOVSX ECX,byte ptr [ESP + 0x1c]
00c9d849  2bc8  SUB ECX,EAX
00c9d84b  0faf4a08  IMUL ECX,dword ptr [EDX + 0x8]
00c9d84f  0fbe44241d  MOVSX EAX,byte ptr [ESP + 0x1d]
00c9d854  8b5210  MOV EDX,dword ptr [EDX + 0x10]
00c9d857  03c8  ADD ECX,EAX
00c9d859  f30f100c8a  MOVSS XMM1,dword ptr [EDX + ECX*0x4]
00c9d85e  0f2fc8  COMISS XMM1,XMM0
00c9d861  734c  JNC 0x00c9d8af
00c9d863  8b4500  MOV EAX,dword ptr [EBP]
00c9d866  d9442410  FLD float ptr [ESP + 0x10]
00c9d86a  6a00  PUSH 0x0
00c9d86c  6a00  PUSH 0x0
00c9d86e  53  PUSH EBX
00c9d86f  50  PUSH EAX
00c9d870  51  PUSH ECX
00c9d871  8d4c2430  LEA ECX,[ESP + 0x30]
00c9d875  d91c24  FSTP float ptr [ESP]
00c9d878  51  PUSH ECX
00c9d879  56  PUSH ESI
00c9d87a  e8912e0100  CALL 0x00cb0710
00c9d87f  83c41c  ADD ESP,0x1c
00c9d882  84c0  TEST AL,AL
00c9d884  0f843affffff  JZ 0x00c9d7c4
00c9d88a  8a44241e  MOV AL,byte ptr [ESP + 0x1e]
00c9d88e  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00c9d894  f30f5805f4d50701  ADDSS XMM0,dword ptr [0x0107d5f4]
00c9d89c  0401  ADD AL,0x1
00c9d89e  0fbed0  MOVSX EDX,AL
00c9d8a1  3bd7  CMP EDX,EDI
00c9d8a3  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c9d8a9  8844241e  MOV byte ptr [ESP + 0x1e],AL
00c9d8ad  7e81  JLE 0x00c9d830
00c9d8af  5f  POP EDI
00c9d8b0  5e  POP ESI
00c9d8b1  5d  POP EBP
00c9d8b2  b001  MOV AL,0x1
00c9d8b4  5b  POP EBX
00c9d8b5  59  POP ECX
00c9d8b6  c3  RET

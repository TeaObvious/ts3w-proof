# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool StairProduct_GetPresetByOrdinal(void * this, uint ordinal, pointer outputPreset)
Owned ranges: [[00c96bb0, 00c96cbc]]

00c96bb0  8b81fc000000  MOV EAX,dword ptr [ECX + 0xfc]
00c96bb6  2b81f8000000  SUB EAX,dword ptr [ECX + 0xf8]
00c96bbc  56  PUSH ESI
00c96bbd  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c96bc1  c1f803  SAR EAX,0x3
00c96bc4  3bf0  CMP ESI,EAX
00c96bc6  731b  JNC 0x00c96be3
00c96bc8  8b89f8000000  MOV ECX,dword ptr [ECX + 0xf8]
00c96bce  8b0cf1  MOV ECX,dword ptr [ECX + ESI*0x8]
00c96bd1  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00c96bd5  890a  MOV dword ptr [EDX],ECX
00c96bd7  8b01  MOV EAX,dword ptr [ECX]
00c96bd9  8b10  MOV EDX,dword ptr [EAX]
00c96bdb  ffd2  CALL EDX
00c96bdd  b001  MOV AL,0x1
00c96bdf  5e  POP ESI
00c96be0  c20800  RET 0x8
00c96be3  8b81fc000000  MOV EAX,dword ptr [ECX + 0xfc]
00c96be9  2b81f8000000  SUB EAX,dword ptr [ECX + 0xf8]
00c96bef  57  PUSH EDI
00c96bf0  6a00  PUSH 0x0
00c96bf2  8d542410  LEA EDX,[ESP + 0x10]
00c96bf6  52  PUSH EDX
00c96bf7  83c108  ADD ECX,0x8
00c96bfa  c1f803  SAR EAX,0x3
00c96bfd  51  PUSH ECX
00c96bfe  2bf0  SUB ESI,EAX
00c96c00  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
00c96c08  e89396e9ff  CALL 0x00b302a0
00c96c0d  8bc8  MOV ECX,EAX
00c96c0f  e81cace9ff  CALL 0x00b31830
00c96c14  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c96c18  85c9  TEST ECX,ECX
00c96c1a  0f8496000000  JZ 0x00c96cb6
00c96c20  56  PUSH ESI
00c96c21  6a05  PUSH 0x5
00c96c23  e8c83697ff  CALL 0x0060a2f0
00c96c28  8bf8  MOV EDI,EAX
00c96c2a  85ff  TEST EDI,EDI
00c96c2c  7479  JZ 0x00c96ca7
00c96c2e  6a00  PUSH 0x0
00c96c30  6a00  PUSH 0x0
00c96c32  6a00  PUSH 0x0
00c96c34  6a00  PUSH 0x0
00c96c36  68f8ca0701  PUSH 0x107caf8
00c96c3b  6a60  PUSH 0x60
00c96c3d  e8bed884ff  CALL 0x004e4500
00c96c42  83c418  ADD ESP,0x18
00c96c45  85c0  TEST EAX,EAX
00c96c47  742c  JZ 0x00c96c75
00c96c49  8bc8  MOV ECX,EAX
00c96c4b  e8708e92ff  CALL 0x005bfac0
00c96c50  8bf0  MOV ESI,EAX
00c96c52  85f6  TEST ESI,ESI
00c96c54  741f  JZ 0x00c96c75
00c96c56  8b06  MOV EAX,dword ptr [ESI]
00c96c58  8b10  MOV EDX,dword ptr [EAX]
00c96c5a  8bce  MOV ECX,ESI
00c96c5c  ffd2  CALL EDX
00c96c5e  8b3f  MOV EDI,dword ptr [EDI]
00c96c60  57  PUSH EDI
00c96c61  8bce  MOV ECX,ESI
00c96c63  e8f89392ff  CALL 0x005c0060
00c96c68  84c0  TEST AL,AL
00c96c6a  751f  JNZ 0x00c96c8b
00c96c6c  8b06  MOV EAX,dword ptr [ESI]
00c96c6e  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c96c71  8bce  MOV ECX,ESI
00c96c73  ffd2  CALL EDX
00c96c75  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c96c79  85c9  TEST ECX,ECX
00c96c7b  7439  JZ 0x00c96cb6
00c96c7d  8b01  MOV EAX,dword ptr [ECX]
00c96c7f  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c96c82  ffd2  CALL EDX
00c96c84  5f  POP EDI
00c96c85  32c0  XOR AL,AL
00c96c87  5e  POP ESI
00c96c88  c20800  RET 0x8
00c96c8b  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c96c8f  85c9  TEST ECX,ECX
00c96c91  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00c96c95  8930  MOV dword ptr [EAX],ESI
00c96c97  7407  JZ 0x00c96ca0
00c96c99  8b11  MOV EDX,dword ptr [ECX]
00c96c9b  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c96c9e  ffd0  CALL EAX
00c96ca0  5f  POP EDI
00c96ca1  b001  MOV AL,0x1
00c96ca3  5e  POP ESI
00c96ca4  c20800  RET 0x8
00c96ca7  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c96cab  85c9  TEST ECX,ECX
00c96cad  7407  JZ 0x00c96cb6
00c96caf  8b11  MOV EDX,dword ptr [ECX]
00c96cb1  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c96cb4  ffd0  CALL EAX
00c96cb6  5f  POP EDI
00c96cb7  32c0  XOR AL,AL
00c96cb9  5e  POP ESI
00c96cba  c20800  RET 0x8

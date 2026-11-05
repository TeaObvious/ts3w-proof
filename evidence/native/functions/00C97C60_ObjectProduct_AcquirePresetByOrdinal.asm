# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ObjectProduct_AcquirePresetByOrdinal
Paired actual annotated Ghidra pseudocode: 00C97C60_ObjectProduct_AcquirePresetByOrdinal.c
Owned ranges: [[00c97c60, 00c97d6c]]
Envelope bytes=269

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00c97c60  8b8108010000  MOV EAX,dword ptr [ECX + 0x108]
00c97c66  2b8104010000  SUB EAX,dword ptr [ECX + 0x104]
00c97c6c  56  PUSH ESI
00c97c6d  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c97c71  c1f803  SAR EAX,0x3
00c97c74  3bf0  CMP ESI,EAX
00c97c76  731b  JNC 0x00c97c93
00c97c78  8b8904010000  MOV ECX,dword ptr [ECX + 0x104]
00c97c7e  8b0cf1  MOV ECX,dword ptr [ECX + ESI*0x8]
00c97c81  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00c97c85  890a  MOV dword ptr [EDX],ECX
00c97c87  8b01  MOV EAX,dword ptr [ECX]
00c97c89  8b10  MOV EDX,dword ptr [EAX]
00c97c8b  ffd2  CALL EDX
00c97c8d  b001  MOV AL,0x1
00c97c8f  5e  POP ESI
00c97c90  c20800  RET 0x8
00c97c93  8b8108010000  MOV EAX,dword ptr [ECX + 0x108]
00c97c99  2b8104010000  SUB EAX,dword ptr [ECX + 0x104]
00c97c9f  57  PUSH EDI
00c97ca0  6a00  PUSH 0x0
00c97ca2  8d542410  LEA EDX,[ESP + 0x10]
00c97ca6  52  PUSH EDX
00c97ca7  83c108  ADD ECX,0x8
00c97caa  c1f803  SAR EAX,0x3
00c97cad  51  PUSH ECX
00c97cae  2bf0  SUB ESI,EAX
00c97cb0  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
00c97cb8  e8e385e9ff  CALL 0x00b302a0
00c97cbd  8bc8  MOV ECX,EAX
00c97cbf  e86c9be9ff  CALL 0x00b31830
00c97cc4  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c97cc8  85c9  TEST ECX,ECX
00c97cca  0f8496000000  JZ 0x00c97d66
00c97cd0  56  PUSH ESI
00c97cd1  6a01  PUSH 0x1
00c97cd3  e8182697ff  CALL 0x0060a2f0
00c97cd8  8bf8  MOV EDI,EAX
00c97cda  85ff  TEST EDI,EDI
00c97cdc  7479  JZ 0x00c97d57
00c97cde  6a00  PUSH 0x0
00c97ce0  6a00  PUSH 0x0
00c97ce2  6a00  PUSH 0x0
00c97ce4  6a00  PUSH 0x0
00c97ce6  68f8ca0701  PUSH 0x107caf8
00c97ceb  6a60  PUSH 0x60
00c97ced  e80ec884ff  CALL 0x004e4500
00c97cf2  83c418  ADD ESP,0x18
00c97cf5  85c0  TEST EAX,EAX
00c97cf7  742c  JZ 0x00c97d25
00c97cf9  8bc8  MOV ECX,EAX
00c97cfb  e8c07d92ff  CALL 0x005bfac0
00c97d00  8bf0  MOV ESI,EAX
00c97d02  85f6  TEST ESI,ESI
00c97d04  741f  JZ 0x00c97d25
00c97d06  8b06  MOV EAX,dword ptr [ESI]
00c97d08  8b10  MOV EDX,dword ptr [EAX]
00c97d0a  8bce  MOV ECX,ESI
00c97d0c  ffd2  CALL EDX
00c97d0e  8b3f  MOV EDI,dword ptr [EDI]
00c97d10  57  PUSH EDI
00c97d11  8bce  MOV ECX,ESI
00c97d13  e8488392ff  CALL 0x005c0060
00c97d18  84c0  TEST AL,AL
00c97d1a  751f  JNZ 0x00c97d3b
00c97d1c  8b06  MOV EAX,dword ptr [ESI]
00c97d1e  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c97d21  8bce  MOV ECX,ESI
00c97d23  ffd2  CALL EDX
00c97d25  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c97d29  85c9  TEST ECX,ECX
00c97d2b  7439  JZ 0x00c97d66
00c97d2d  8b01  MOV EAX,dword ptr [ECX]
00c97d2f  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c97d32  ffd2  CALL EDX
00c97d34  5f  POP EDI
00c97d35  32c0  XOR AL,AL
00c97d37  5e  POP ESI
00c97d38  c20800  RET 0x8
00c97d3b  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c97d3f  85c9  TEST ECX,ECX
00c97d41  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00c97d45  8930  MOV dword ptr [EAX],ESI
00c97d47  7407  JZ 0x00c97d50
00c97d49  8b11  MOV EDX,dword ptr [ECX]
00c97d4b  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c97d4e  ffd0  CALL EAX
00c97d50  5f  POP EDI
00c97d51  b001  MOV AL,0x1
00c97d53  5e  POP ESI
00c97d54  c20800  RET 0x8
00c97d57  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c97d5b  85c9  TEST ECX,ECX
00c97d5d  7407  JZ 0x00c97d66
00c97d5f  8b11  MOV EDX,dword ptr [ECX]
00c97d61  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c97d64  ffd0  CALL EAX
00c97d66  5f  POP EDI
00c97d67  32c0  XOR AL,AL
00c97d69  5e  POP ESI
00c97d6a  c20800  RET 0x8
Owned instructions=101 owned bytes=269 nonowned bytes=0

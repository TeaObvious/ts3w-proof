# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ProductCatalog_LoadCurvedPoolBank(void * this)
Owned ranges: [[00c92b10, 00c92c38]]

00c92b10  83ec28  SUB ESP,0x28
00c92b13  53  PUSH EBX
00c92b14  55  PUSH EBP
00c92b15  57  PUSH EDI
00c92b16  8db924010000  LEA EDI,[ECX + 0x124]
00c92b1c  8bcf  MOV ECX,EDI
00c92b1e  897c2418  MOV dword ptr [ESP + 0x18],EDI
00c92b22  e8e9aaffff  CALL 0x00c8d610
00c92b27  e854d381ff  CALL 0x004afe80
00c92b2c  33db  XOR EBX,EBX
00c92b2e  8be8  MOV EBP,EAX
00c92b30  53  PUSH EBX
00c92b31  8d4c2420  LEA ECX,[ESP + 0x20]
00c92b35  c7442420b092fd00  MOV dword ptr [ESP + 0x20],0xfd92b0
00c92b3d  c74424247af0360a  MOV dword ptr [ESP + 0x24],0xa36f07a
00c92b45  895c2428  MOV dword ptr [ESP + 0x28],EBX
00c92b49  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00c92b4d  895c2430  MOV dword ptr [ESP + 0x30],EBX
00c92b51  c744243400c60701  MOV dword ptr [ESP + 0x34],0x107c600
00c92b59  8b4500  MOV EAX,dword ptr [EBP]
00c92b5c  8b4020  MOV EAX,dword ptr [EAX + 0x20]
00c92b5f  51  PUSH ECX
00c92b60  8d54242c  LEA EDX,[ESP + 0x2c]
00c92b64  52  PUSH EDX
00c92b65  8bcd  MOV ECX,EBP
00c92b67  ffd0  CALL EAX
00c92b69  8d4c2424  LEA ECX,[ESP + 0x24]
00c92b6d  51  PUSH ECX
00c92b6e  e8bdd281ff  CALL 0x004afe30
00c92b73  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c92b77  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00c92b7b  2bc1  SUB EAX,ECX
00c92b7d  83c404  ADD ESP,0x4
00c92b80  c1f804  SAR EAX,0x4
00c92b83  0f849c000000  JZ 0x00c92c25
00c92b89  56  PUSH ESI
00c92b8a  895c2414  MOV dword ptr [ESP + 0x14],EBX
00c92b8e  89442418  MOV dword ptr [ESP + 0x18],EAX
00c92b92  eb04  JMP 0x00c92b98
00c92b94  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00c92b98  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00c92b9c  53  PUSH EBX
00c92b9d  53  PUSH EBX
00c92b9e  8d040a  LEA EAX,[EDX + ECX*0x1]
00c92ba1  8b5500  MOV EDX,dword ptr [EBP]
00c92ba4  8b520c  MOV EDX,dword ptr [EDX + 0xc]
00c92ba7  53  PUSH EBX
00c92ba8  53  PUSH EBX
00c92ba9  8d4c2420  LEA ECX,[ESP + 0x20]
00c92bad  51  PUSH ECX
00c92bae  50  PUSH EAX
00c92baf  8bcd  MOV ECX,EBP
00c92bb1  895c2428  MOV dword ptr [ESP + 0x28],EBX
00c92bb5  ffd2  CALL EDX
00c92bb7  84c0  TEST AL,AL
00c92bb9  7446  JZ 0x00c92c01
00c92bbb  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00c92bbf  3bcb  CMP ECX,EBX
00c92bc1  744d  JZ 0x00c92c10
00c92bc3  8b01  MOV EAX,dword ptr [ECX]
00c92bc5  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00c92bc8  687234370a  PUSH 0xa373472
00c92bcd  ffd2  CALL EDX
00c92bcf  8bf0  MOV ESI,EAX
00c92bd1  3bf3  CMP ESI,EBX
00c92bd3  742c  JZ 0x00c92c01
00c92bd5  8d4608  LEA EAX,[ESI + 0x8]
00c92bd8  50  PUSH EAX
00c92bd9  8bcf  MOV ECX,EDI
00c92bdb  e860ecffff  CALL 0x00c91840
00c92be0  8bd8  MOV EBX,EAX
00c92be2  8b3b  MOV EDI,dword ptr [EBX]
00c92be4  3bf7  CMP ESI,EDI
00c92be6  7417  JZ 0x00c92bff
00c92be8  8b16  MOV EDX,dword ptr [ESI]
00c92bea  8b02  MOV EAX,dword ptr [EDX]
00c92bec  8bce  MOV ECX,ESI
00c92bee  ffd0  CALL EAX
00c92bf0  85ff  TEST EDI,EDI
00c92bf2  8933  MOV dword ptr [EBX],ESI
00c92bf4  7409  JZ 0x00c92bff
00c92bf6  8b17  MOV EDX,dword ptr [EDI]
00c92bf8  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c92bfb  8bcf  MOV ECX,EDI
00c92bfd  ffd0  CALL EAX
00c92bff  33db  XOR EBX,EBX
00c92c01  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00c92c05  3bcb  CMP ECX,EBX
00c92c07  7407  JZ 0x00c92c10
00c92c09  8b11  MOV EDX,dword ptr [ECX]
00c92c0b  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c92c0e  ffd0  CALL EAX
00c92c10  8344241410  ADD dword ptr [ESP + 0x14],0x10
00c92c15  836c241801  SUB dword ptr [ESP + 0x18],0x1
00c92c1a  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00c92c1e  0f8570ffffff  JNZ 0x00c92b94
00c92c24  5e  POP ESI
00c92c25  5f  POP EDI
00c92c26  5d  POP EBP
00c92c27  3bcb  CMP ECX,EBX
00c92c29  5b  POP EBX
00c92c2a  7409  JZ 0x00c92c35
00c92c2c  51  PUSH ECX
00c92c2d  e8ae1885ff  CALL 0x004e44e0
00c92c32  83c404  ADD ESP,0x4
00c92c35  83c428  ADD ESP,0x28
00c92c38  c3  RET

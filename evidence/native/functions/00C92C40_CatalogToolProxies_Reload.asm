# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void CatalogToolProxies_Reload(void * this)
Owned ranges: [[00c92c40, 00c92d73]]

00c92c40  83ec2c  SUB ESP,0x2c
00c92c43  53  PUSH EBX
00c92c44  55  PUSH EBP
00c92c45  57  PUSH EDI
00c92c46  8db988010000  LEA EDI,[ECX + 0x188]
00c92c4c  8bcf  MOV ECX,EDI
00c92c4e  897c2418  MOV dword ptr [ESP + 0x18],EDI
00c92c52  e879a9ffff  CALL 0x00c8d5d0
00c92c57  e824d281ff  CALL 0x004afe80
00c92c5c  33db  XOR EBX,EBX
00c92c5e  8be8  MOV EBP,EAX
00c92c60  53  PUSH EBX
00c92c61  8d4c2424  LEA ECX,[ESP + 0x24]
00c92c65  c7442424b092fd00  MOV dword ptr [ESP + 0x24],0xfd92b0
00c92c6d  c7442428935dac04  MOV dword ptr [ESP + 0x28],0x4ac5d93
00c92c75  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00c92c79  895c2430  MOV dword ptr [ESP + 0x30],EBX
00c92c7d  895c2434  MOV dword ptr [ESP + 0x34],EBX
00c92c81  c744243828c60701  MOV dword ptr [ESP + 0x38],0x107c628
00c92c89  8b4500  MOV EAX,dword ptr [EBP]
00c92c8c  8b4020  MOV EAX,dword ptr [EAX + 0x20]
00c92c8f  51  PUSH ECX
00c92c90  8d542430  LEA EDX,[ESP + 0x30]
00c92c94  52  PUSH EDX
00c92c95  8bcd  MOV ECX,EBP
00c92c97  ffd0  CALL EAX
00c92c99  8d4c2428  LEA ECX,[ESP + 0x28]
00c92c9d  51  PUSH ECX
00c92c9e  e88dd181ff  CALL 0x004afe30
00c92ca3  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00c92ca7  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00c92cab  2bc1  SUB EAX,ECX
00c92cad  83c404  ADD ESP,0x4
00c92cb0  c1f804  SAR EAX,0x4
00c92cb3  0f84a7000000  JZ 0x00c92d60
00c92cb9  56  PUSH ESI
00c92cba  895c2414  MOV dword ptr [ESP + 0x14],EBX
00c92cbe  89442418  MOV dword ptr [ESP + 0x18],EAX
00c92cc2  eb04  JMP 0x00c92cc8
00c92cc4  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00c92cc8  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00c92ccc  53  PUSH EBX
00c92ccd  53  PUSH EBX
00c92cce  8d040a  LEA EAX,[EDX + ECX*0x1]
00c92cd1  8b5500  MOV EDX,dword ptr [EBP]
00c92cd4  8b520c  MOV EDX,dword ptr [EDX + 0xc]
00c92cd7  53  PUSH EBX
00c92cd8  53  PUSH EBX
00c92cd9  8d4c2420  LEA ECX,[ESP + 0x20]
00c92cdd  51  PUSH ECX
00c92cde  50  PUSH EAX
00c92cdf  8bcd  MOV ECX,EBP
00c92ce1  895c2428  MOV dword ptr [ESP + 0x28],EBX
00c92ce5  ffd2  CALL EDX
00c92ce7  84c0  TEST AL,AL
00c92ce9  7451  JZ 0x00c92d3c
00c92ceb  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00c92cef  3bcb  CMP ECX,EBX
00c92cf1  7458  JZ 0x00c92d4b
00c92cf3  8b01  MOV EAX,dword ptr [ECX]
00c92cf5  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00c92cf8  689e5dac04  PUSH 0x4ac5d9e
00c92cfd  ffd2  CALL EDX
00c92cff  8bf0  MOV ESI,EAX
00c92d01  3bf3  CMP ESI,EBX
00c92d03  7437  JZ 0x00c92d3c
00c92d05  8b8688000000  MOV EAX,dword ptr [ESI + 0x88]
00c92d0b  8d4c2420  LEA ECX,[ESP + 0x20]
00c92d0f  51  PUSH ECX
00c92d10  8bcf  MOV ECX,EDI
00c92d12  89442424  MOV dword ptr [ESP + 0x24],EAX
00c92d16  e885eaffff  CALL 0x00c917a0
00c92d1b  8bd8  MOV EBX,EAX
00c92d1d  8b3b  MOV EDI,dword ptr [EBX]
00c92d1f  3bf7  CMP ESI,EDI
00c92d21  7417  JZ 0x00c92d3a
00c92d23  8b16  MOV EDX,dword ptr [ESI]
00c92d25  8b02  MOV EAX,dword ptr [EDX]
00c92d27  8bce  MOV ECX,ESI
00c92d29  ffd0  CALL EAX
00c92d2b  85ff  TEST EDI,EDI
00c92d2d  8933  MOV dword ptr [EBX],ESI
00c92d2f  7409  JZ 0x00c92d3a
00c92d31  8b17  MOV EDX,dword ptr [EDI]
00c92d33  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c92d36  8bcf  MOV ECX,EDI
00c92d38  ffd0  CALL EAX
00c92d3a  33db  XOR EBX,EBX
00c92d3c  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00c92d40  3bcb  CMP ECX,EBX
00c92d42  7407  JZ 0x00c92d4b
00c92d44  8b11  MOV EDX,dword ptr [ECX]
00c92d46  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c92d49  ffd0  CALL EAX
00c92d4b  8344241410  ADD dword ptr [ESP + 0x14],0x10
00c92d50  836c241801  SUB dword ptr [ESP + 0x18],0x1
00c92d55  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00c92d59  0f8565ffffff  JNZ 0x00c92cc4
00c92d5f  5e  POP ESI
00c92d60  5f  POP EDI
00c92d61  5d  POP EBP
00c92d62  3bcb  CMP ECX,EBX
00c92d64  5b  POP EBX
00c92d65  7409  JZ 0x00c92d70
00c92d67  51  PUSH ECX
00c92d68  e8731785ff  CALL 0x004e44e0
00c92d6d  83c404  ADD ESP,0x4
00c92d70  83c42c  ADD ESP,0x2c
00c92d73  c3  RET

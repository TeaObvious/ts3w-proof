# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C8EA70_PatternCatalog_LookupBankProduct.c
Owned ranges: [[00c8ea70, 00c8eade]]

00c8ea70  83ec08  SUB ESP,0x8
00c8ea73  53  PUSH EBX
00c8ea74  55  PUSH EBP
00c8ea75  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00c8ea79  56  PUSH ESI
00c8ea7a  8bd9  MOV EBX,ECX
00c8ea7c  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00c8ea80  57  PUSH EDI
00c8ea81  8d44ad00  LEA EAX,[EBP + EBP*0x4]
00c8ea85  8d3c83  LEA EDI,[EBX + EAX*0x4]
00c8ea88  51  PUSH ECX
00c8ea89  8d542414  LEA EDX,[ESP + 0x14]
00c8ea8d  8d7730  LEA ESI,[EDI + 0x30]
00c8ea90  52  PUSH EDX
00c8ea91  8bce  MOV ECX,ESI
00c8ea93  e888f0ffff  CALL 0x00c8db20
00c8ea98  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00c8ea9c  3b442414  CMP EAX,dword ptr [ESP + 0x14]
00c8eaa0  7404  JZ 0x00c8eaa6
00c8eaa2  8bf0  MOV ESI,EAX
00c8eaa4  eb03  JMP 0x00c8eaa9
00c8eaa6  8b7604  MOV ESI,dword ptr [ESI + 0x4]
00c8eaa9  3b7734  CMP ESI,dword ptr [EDI + 0x34]
00c8eaac  740d  JZ 0x00c8eabb
00c8eaae  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c8eab1  5f  POP EDI
00c8eab2  5e  POP ESI
00c8eab3  5d  POP EBP
00c8eab4  5b  POP EBX
00c8eab5  83c408  ADD ESP,0x8
00c8eab8  c20c00  RET 0xc
00c8eabb  807c242400  CMP byte ptr [ESP + 0x24],0x0
00c8eac0  7411  JZ 0x00c8ead3
00c8eac2  8b84ab94000000  MOV EAX,dword ptr [EBX + EBP*0x4 + 0x94]
00c8eac9  5f  POP EDI
00c8eaca  5e  POP ESI
00c8eacb  5d  POP EBP
00c8eacc  5b  POP EBX
00c8eacd  83c408  ADD ESP,0x8
00c8ead0  c20c00  RET 0xc
00c8ead3  5f  POP EDI
00c8ead4  5e  POP ESI
00c8ead5  5d  POP EBP
00c8ead6  33c0  XOR EAX,EAX
00c8ead8  5b  POP EBX
00c8ead9  83c408  ADD ESP,0x8
00c8eadc  c20c00  RET 0xc

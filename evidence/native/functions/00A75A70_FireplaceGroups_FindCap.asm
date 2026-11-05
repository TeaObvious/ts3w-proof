# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: ulonglong FireplaceGroups_FindCap(void * this, ulonglong objectId)
Owned ranges: [[00a75a70, 00a75af8]]

00a75a70  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00a75a73  8b10  MOV EDX,dword ptr [EAX]
00a75a75  85d2  TEST EDX,EDX
00a75a77  7511  JNZ 0x00a75a8a
00a75a79  83c004  ADD EAX,0x4
00a75a7c  3910  CMP dword ptr [EAX],EDX
00a75a7e  7508  JNZ 0x00a75a88
00a75a80  83c004  ADD EAX,0x4
00a75a83  833800  CMP dword ptr [EAX],0x0
00a75a86  74f8  JZ 0x00a75a80
00a75a88  8b10  MOV EDX,dword ptr [EAX]
00a75a8a  53  PUSH EBX
00a75a8b  56  PUSH ESI
00a75a8c  8bf0  MOV ESI,EAX
00a75a8e  8b410c  MOV EAX,dword ptr [ECX + 0xc]
00a75a91  8b4908  MOV ECX,dword ptr [ECX + 0x8]
00a75a94  57  PUSH EDI
00a75a95  8b3c81  MOV EDI,dword ptr [ECX + EAX*0x4]
00a75a98  3bd7  CMP EDX,EDI
00a75a9a  7445  JZ 0x00a75ae1
00a75a9c  8d642400  LEA ESP,[ESP]
00a75aa0  8b4a08  MOV ECX,dword ptr [EDX + 0x8]
00a75aa3  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00a75aa6  3bc1  CMP EAX,ECX
00a75aa8  7422  JZ 0x00a75acc
00a75aaa  8d9b00000000  LEA EBX,[EBX]
00a75ab0  8b18  MOV EBX,dword ptr [EAX]
00a75ab2  3b5c2410  CMP EBX,dword ptr [ESP + 0x10]
00a75ab6  7509  JNZ 0x00a75ac1
00a75ab8  8b5804  MOV EBX,dword ptr [EAX + 0x4]
00a75abb  3b5c2414  CMP EBX,dword ptr [ESP + 0x14]
00a75abf  7407  JZ 0x00a75ac8
00a75ac1  83c008  ADD EAX,0x8
00a75ac4  3bc1  CMP EAX,ECX
00a75ac6  75e8  JNZ 0x00a75ab0
00a75ac8  3bc1  CMP EAX,ECX
00a75aca  751f  JNZ 0x00a75aeb
00a75acc  8b5214  MOV EDX,dword ptr [EDX + 0x14]
00a75acf  85d2  TEST EDX,EDX
00a75ad1  750a  JNZ 0x00a75add
00a75ad3  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00a75ad6  83c604  ADD ESI,0x4
00a75ad9  85d2  TEST EDX,EDX
00a75adb  74f6  JZ 0x00a75ad3
00a75add  3bd7  CMP EDX,EDI
00a75adf  75bf  JNZ 0x00a75aa0
00a75ae1  5f  POP EDI
00a75ae2  5e  POP ESI
00a75ae3  33c0  XOR EAX,EAX
00a75ae5  33d2  XOR EDX,EDX
00a75ae7  5b  POP EBX
00a75ae8  c20800  RET 0x8
00a75aeb  5f  POP EDI
00a75aec  8bd1  MOV EDX,ECX
00a75aee  8b42f8  MOV EAX,dword ptr [EDX + -0x8]
00a75af1  8b52fc  MOV EDX,dword ptr [EDX + -0x4]
00a75af4  5e  POP ESI
00a75af5  5b  POP EBX
00a75af6  c20800  RET 0x8

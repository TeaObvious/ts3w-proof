# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FireplaceGroups_AddIfAbsent(void * this, uint groupId, pointer objectIds)
Owned ranges: [[00a769f0, 00a76ab6]]

00a769f0  83ec28  SUB ESP,0x28
00a769f3  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00a769f7  53  PUSH EBX
00a769f8  55  PUSH EBP
00a769f9  56  PUSH ESI
00a769fa  57  PUSH EDI
00a769fb  8b7c2440  MOV EDI,dword ptr [ESP + 0x40]
00a769ff  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00a76a02  2b17  SUB EDX,dword ptr [EDI]
00a76a04  8be9  MOV EBP,ECX
00a76a06  8d4f0c  LEA ECX,[EDI + 0xc]
00a76a09  51  PUSH ECX
00a76a0a  c1fa03  SAR EDX,0x3
00a76a0d  52  PUSH EDX
00a76a0e  8d4c241c  LEA ECX,[ESP + 0x1c]
00a76a12  89442418  MOV dword ptr [ESP + 0x18],EAX
00a76a16  e8651ec6ff  CALL 0x006d8880
00a76a1b  8b7704  MOV ESI,dword ptr [EDI + 0x4]
00a76a1e  8b3f  MOV EDI,dword ptr [EDI]
00a76a20  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00a76a24  2bf7  SUB ESI,EDI
00a76a26  56  PUSH ESI
00a76a27  57  PUSH EDI
00a76a28  53  PUSH EBX
00a76a29  ff158866f900  CALL dword ptr [0x00f96688]
00a76a2f  c1fe03  SAR ESI,0x3
00a76a32  8d34f0  LEA ESI,[EAX + ESI*0x8]
00a76a35  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00a76a39  89742424  MOV dword ptr [ESP + 0x24],ESI
00a76a3d  83c40c  ADD ESP,0xc
00a76a40  2bf3  SUB ESI,EBX
00a76a42  8d4c2420  LEA ECX,[ESP + 0x20]
00a76a46  8bfe  MOV EDI,ESI
00a76a48  51  PUSH ECX
00a76a49  c1ff03  SAR EDI,0x3
00a76a4c  57  PUSH EDI
00a76a4d  8d4c2430  LEA ECX,[ESP + 0x30]
00a76a51  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00a76a55  e8261ec6ff  CALL 0x006d8880
00a76a5a  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00a76a5e  56  PUSH ESI
00a76a5f  53  PUSH EBX
00a76a60  52  PUSH EDX
00a76a61  ff158866f900  CALL dword ptr [0x00f96688]
00a76a67  83c40c  ADD ESP,0xc
00a76a6a  8d04f8  LEA EAX,[EAX + EDI*0x8]
00a76a6d  c644243c00  MOV byte ptr [ESP + 0x3c],0x0
00a76a72  8b4c243c  MOV ECX,dword ptr [ESP + 0x3c]
00a76a76  51  PUSH ECX
00a76a77  8d542428  LEA EDX,[ESP + 0x28]
00a76a7b  89442430  MOV dword ptr [ESP + 0x30],EAX
00a76a7f  52  PUSH EDX
00a76a80  8d442418  LEA EAX,[ESP + 0x18]
00a76a84  50  PUSH EAX
00a76a85  8d4d04  LEA ECX,[EBP + 0x4]
00a76a88  e8a3f9ffff  CALL 0x00a76430
00a76a8d  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00a76a91  85c0  TEST EAX,EAX
00a76a93  7409  JZ 0x00a76a9e
00a76a95  50  PUSH EAX
00a76a96  e845daa6ff  CALL 0x004e44e0
00a76a9b  83c404  ADD ESP,0x4
00a76a9e  85db  TEST EBX,EBX
00a76aa0  7409  JZ 0x00a76aab
00a76aa2  53  PUSH EBX
00a76aa3  e838daa6ff  CALL 0x004e44e0
00a76aa8  83c404  ADD ESP,0x4
00a76aab  5f  POP EDI
00a76aac  5e  POP ESI
00a76aad  5d  POP EBP
00a76aae  b001  MOV AL,0x1
00a76ab0  5b  POP EBX
00a76ab1  83c428  ADD ESP,0x28
00a76ab4  c20800  RET 0x8

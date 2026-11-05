# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotRooms_TestHeightExtensionMembership(void * this, dword roomWord)
Owned ranges: [[00a4abe0, 00a4ac17]]

00a4abe0  8b8180010000  MOV EAX,dword ptr [ECX + 0x180]
00a4abe6  8b917c010000  MOV EDX,dword ptr [ECX + 0x17c]
00a4abec  83ec08  SUB ESP,0x8
00a4abef  81c178010000  ADD ECX,0x178
00a4abf5  56  PUSH ESI
00a4abf6  8b3482  MOV ESI,dword ptr [EDX + EAX*0x4]
00a4abf9  8d442410  LEA EAX,[ESP + 0x10]
00a4abfd  50  PUSH EAX
00a4abfe  8d542408  LEA EDX,[ESP + 0x8]
00a4ac02  52  PUSH EDX
00a4ac03  e8b8970900  CALL 0x00ae43c0
00a4ac08  33c9  XOR ECX,ECX
00a4ac0a  3930  CMP dword ptr [EAX],ESI
00a4ac0c  5e  POP ESI
00a4ac0d  0f95c1  SETNZ CL
00a4ac10  8ac1  MOV AL,CL
00a4ac12  83c408  ADD ESP,0x8
00a4ac15  c20400  RET 0x4

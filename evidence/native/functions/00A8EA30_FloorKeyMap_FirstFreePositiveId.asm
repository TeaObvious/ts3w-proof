# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FloorKeyMap_FirstFreePositiveId(void * this)
Owned ranges: [[00a8ea30, 00a8ea9d]]

00a8ea30  55  PUSH EBP
00a8ea31  8bec  MOV EBP,ESP
00a8ea33  83e4f8  AND ESP,0xfffffff8
00a8ea36  83ec10  SUB ESP,0x10
00a8ea39  53  PUSH EBX
00a8ea3a  8b5924  MOV EBX,dword ptr [ECX + 0x24]
00a8ea3d  55  PUSH EBP
00a8ea3e  56  PUSH ESI
00a8ea3f  57  PUSH EDI
00a8ea40  8b7928  MOV EDI,dword ptr [ECX + 0x28]
00a8ea43  be01000000  MOV ESI,0x1
00a8ea48  8bc7  MOV EAX,EDI
00a8ea4a  8bd3  MOV EDX,EBX
00a8ea4c  8b2c82  MOV EBP,dword ptr [EDX + EAX*0x4]
00a8ea4f  33d2  XOR EDX,EDX
00a8ea51  8bc6  MOV EAX,ESI
00a8ea53  f7f7  DIV EDI
00a8ea55  8b0493  MOV EAX,dword ptr [EBX + EDX*0x4]
00a8ea58  85c0  TEST EAX,EAX
00a8ea5a  8d1493  LEA EDX,[EBX + EDX*0x4]
00a8ea5d  740c  JZ 0x00a8ea6b
00a8ea5f  90  NOP
00a8ea60  3b30  CMP ESI,dword ptr [EAX]
00a8ea62  7422  JZ 0x00a8ea86
00a8ea64  8b4048  MOV EAX,dword ptr [EAX + 0x48]
00a8ea67  85c0  TEST EAX,EAX
00a8ea69  75f5  JNZ 0x00a8ea60
00a8ea6b  8b14bb  MOV EDX,dword ptr [EBX + EDI*0x4]
00a8ea6e  8d04bb  LEA EAX,[EBX + EDI*0x4]
00a8ea71  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00a8ea75  89542418  MOV dword ptr [ESP + 0x18],EDX
00a8ea79  8d442418  LEA EAX,[ESP + 0x18]
00a8ea7d  3928  CMP dword ptr [EAX],EBP
00a8ea7f  7413  JZ 0x00a8ea94
00a8ea81  83c601  ADD ESI,0x1
00a8ea84  ebc2  JMP 0x00a8ea48
00a8ea86  89442410  MOV dword ptr [ESP + 0x10],EAX
00a8ea8a  89542414  MOV dword ptr [ESP + 0x14],EDX
00a8ea8e  8d442410  LEA EAX,[ESP + 0x10]
00a8ea92  ebe9  JMP 0x00a8ea7d
00a8ea94  5f  POP EDI
00a8ea95  8bc6  MOV EAX,ESI
00a8ea97  5e  POP ESI
00a8ea98  5d  POP EBP
00a8ea99  5b  POP EBX
00a8ea9a  8be5  MOV ESP,EBP
00a8ea9c  5d  POP EBP
00a8ea9d  c3  RET

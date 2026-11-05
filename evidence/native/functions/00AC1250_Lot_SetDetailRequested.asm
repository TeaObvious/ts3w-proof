# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00ac1250, 00ac12f2]]
Actual pseudocode: 00AC1250_Lot_SetDetailRequested.c
; Actual plate: Analyst: PC 1.67 map/lot detail contract. If requested byte differs from lot+c1 and lot+c9 iszero, store+c1 before submitting remote method work. True queues00ac01e0 via00abd400 with two zero flags; false queues00ab3310 via00abd490 with zero flag. Sends message0421fefd with the requested byte through lot manager after enqueue; it does not await resource completion or propagate the remote-call result. If message allocation returned null the original dereferences it; no graceful allocation-failure promise.

00ac1250  53  PUSH EBX
00ac1251  8a5c2408  MOV BL,byte ptr [ESP + 0x8]
00ac1255  56  PUSH ESI
00ac1256  8bf1  MOV ESI,ECX
00ac1258  8a86c1000000  MOV AL,byte ptr [ESI + 0xc1]
00ac125e  3ac3  CMP AL,BL
00ac1260  0f8484000000  JZ 0x00ac12ea
00ac1266  80bec900000000  CMP byte ptr [ESI + 0xc9],0x0
00ac126d  757b  JNZ 0x00ac12ea
00ac126f  33c9  XOR ECX,ECX
00ac1271  84db  TEST BL,BL
00ac1273  889ec1000000  MOV byte ptr [ESI + 0xc1],BL ; Analyst: store requested+c1 BEFORE remote method submission. This cannot prove resource completion.
00ac1279  51  PUSH ECX
00ac127a  7415  JZ 0x00ac1291
00ac127c  51  PUSH ECX
00ac127d  51  PUSH ECX
00ac127e  b8e001ac00  MOV EAX,0xac01e0
00ac1283  50  PUSH EAX
00ac1284  56  PUSH ESI
00ac1285  6a01  PUSH 0x1
00ac1287  e874c1ffff  CALL 0x00abd400
00ac128c  83c418  ADD ESP,0x18
00ac128f  eb12  JMP 0x00ac12a3
00ac1291  51  PUSH ECX
00ac1292  b81033ab00  MOV EAX,0xab3310
00ac1297  50  PUSH EAX
00ac1298  56  PUSH ESI
00ac1299  6a01  PUSH 0x1
00ac129b  e8f0c1ffff  CALL 0x00abd490
00ac12a0  83c414  ADD ESP,0x14
00ac12a3  57  PUSH EDI
00ac12a4  6a0c  PUSH 0xc
00ac12a6  e8a5de0100  CALL 0x00adf150
00ac12ab  83c404  ADD ESP,0x4
00ac12ae  85c0  TEST EAX,EAX
00ac12b0  743d  JZ 0x00ac12ef
00ac12b2  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00ac12b8  33c9  XOR ECX,ECX
00ac12ba  8d5004  LEA EDX,[EAX + 0x4]
00ac12bd  870a  XCHG dword ptr [EDX],ECX
00ac12bf  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00ac12c5  8b10  MOV EDX,dword ptr [EAX]
00ac12c7  8bf8  MOV EDI,EAX
00ac12c9  8bc8  MOV ECX,EAX
00ac12cb  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00ac12ce  ffd0  CALL EAX
00ac12d0  57  PUSH EDI
00ac12d1  68fdfe2104  PUSH 0x421fefd
00ac12d6  8bce  MOV ECX,ESI
00ac12d8  885f08  MOV byte ptr [EDI + 0x8],BL
00ac12db  e8f01fffff  CALL 0x00ab32d0
00ac12e0  8b17  MOV EDX,dword ptr [EDI]
00ac12e2  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00ac12e5  8bcf  MOV ECX,EDI
00ac12e7  ffd0  CALL EAX
00ac12e9  5f  POP EDI
00ac12ea  5e  POP ESI
00ac12eb  5b  POP EBX
00ac12ec  c20400  RET 0x4
00ac12ef  33ff  XOR EDI,EDI
00ac12f1  ebdd  JMP 0x00ac12d0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00d4c440, 00d4c54f]]
Signature: bool UIThumbnail_PublishObjectRequestKeys(uint objectIdLow, uint objectIdHigh, void * descriptor)

00d4c440  e82bb1beff  CALL 0x00937570
00d4c445  85c0  TEST EAX,EAX
00d4c447  7505  JNZ 0x00d4c44e
00d4c449  32c0  XOR AL,AL
00d4c44b  c20c00  RET 0xc
00d4c44e  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00d4c452  53  PUSH EBX
00d4c453  55  PUSH EBP
00d4c454  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00d4c458  55  PUSH EBP
00d4c459  51  PUSH ECX
00d4c45a  8bc8  MOV ECX,EAX
00d4c45c  e81fbbbeff  CALL 0x00937f80
00d4c461  8bd8  MOV EBX,EAX
00d4c463  85db  TEST EBX,EBX
00d4c465  7507  JNZ 0x00d4c46e
00d4c467  5d  POP EBP
00d4c468  32c0  XOR AL,AL
00d4c46a  5b  POP EBX
00d4c46b  c20c00  RET 0xc
00d4c46e  8b15fca01e01  MOV EDX,dword ptr [0x011ea0fc]
00d4c474  56  PUSH ESI
00d4c475  57  PUSH EDI
00d4c476  52  PUSH EDX
00d4c477  8bcb  MOV ECX,EBX
00d4c479  e8e27dbeff  CALL 0x00934260
00d4c47e  85c0  TEST EAX,EAX
00d4c480  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00d4c484  8d7e78  LEA EDI,[ESI + 0x78]
00d4c487  7446  JZ 0x00d4c4cf
00d4c489  8b4810  MOV ECX,dword ptr [EAX + 0x10]
00d4c48c  890f  MOV dword ptr [EDI],ECX
00d4c48e  8b5014  MOV EDX,dword ptr [EAX + 0x14]
00d4c491  895704  MOV dword ptr [EDI + 0x4],EDX
00d4c494  8b4818  MOV ECX,dword ptr [EAX + 0x18]
00d4c497  894f08  MOV dword ptr [EDI + 0x8],ECX
00d4c49a  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
00d4c49d  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d4c4a1  89570c  MOV dword ptr [EDI + 0xc],EDX
00d4c4a4  898e88000000  MOV dword ptr [ESI + 0x88],ECX
00d4c4aa  89ae8c000000  MOV dword ptr [ESI + 0x8c],EBP
00d4c4b0  8b5030  MOV EDX,dword ptr [EAX + 0x30]
00d4c4b3  f6c203  TEST DL,0x3
00d4c4b6  753c  JNZ 0x00d4c4f4
00d4c4b8  8b4030  MOV EAX,dword ptr [EAX + 0x30]
00d4c4bb  85c0  TEST EAX,EAX
00d4c4bd  7435  JZ 0x00d4c4f4
00d4c4bf  8b4038  MOV EAX,dword ptr [EAX + 0x38]
00d4c4c2  257fff0000  AND EAX,0xff7f
00d4c4c7  898608010000  MOV dword ptr [ESI + 0x108],EAX
00d4c4cd  eb25  JMP 0x00d4c4f4
00d4c4cf  8b4b18  MOV ECX,dword ptr [EBX + 0x18]
00d4c4d2  890f  MOV dword ptr [EDI],ECX
00d4c4d4  8b531c  MOV EDX,dword ptr [EBX + 0x1c]
00d4c4d7  895704  MOV dword ptr [EDI + 0x4],EDX
00d4c4da  8b4320  MOV EAX,dword ptr [EBX + 0x20]
00d4c4dd  894708  MOV dword ptr [EDI + 0x8],EAX
00d4c4e0  8b4b24  MOV ECX,dword ptr [EBX + 0x24]
00d4c4e3  33c0  XOR EAX,EAX
00d4c4e5  894f0c  MOV dword ptr [EDI + 0xc],ECX
00d4c4e8  898688000000  MOV dword ptr [ESI + 0x88],EAX
00d4c4ee  89868c000000  MOV dword ptr [ESI + 0x8c],EAX
00d4c4f4  8b1e  MOV EBX,dword ptr [ESI]
00d4c4f6  8b6e04  MOV EBP,dword ptr [ESI + 0x4]
00d4c4f9  3bdd  CMP EBX,EBP
00d4c4fb  744a  JZ 0x00d4c547
00d4c4fd  8d4900  LEA ECX,[ECX]
00d4c500  8b968c000000  MOV EDX,dword ptr [ESI + 0x8c]
00d4c506  8b8688000000  MOV EAX,dword ptr [ESI + 0x88]
00d4c50c  8b8e10010000  MOV ECX,dword ptr [ESI + 0x110]
00d4c512  52  PUSH EDX
00d4c513  8b960c010000  MOV EDX,dword ptr [ESI + 0x10c]
00d4c519  50  PUSH EAX
00d4c51a  0fb68614010000  MOVZX EAX,byte ptr [ESI + 0x114]
00d4c521  51  PUSH ECX
00d4c522  8b8e00010000  MOV ECX,dword ptr [ESI + 0x100]
00d4c528  52  PUSH EDX
00d4c529  8b96fc000000  MOV EDX,dword ptr [ESI + 0xfc]
00d4c52f  50  PUSH EAX
00d4c530  8b4310  MOV EAX,dword ptr [EBX + 0x10]
00d4c533  53  PUSH EBX
00d4c534  51  PUSH ECX
00d4c535  52  PUSH EDX
00d4c536  50  PUSH EAX
00d4c537  57  PUSH EDI
00d4c538  e863f6ffff  CALL 0x00d4bba0 ; Actual tenword key producer call; returnvoid, caller ADDESP28; agegender108 absent.
00d4c53d  83c318  ADD EBX,0x18
00d4c540  83c428  ADD ESP,0x28
00d4c543  3bdd  CMP EBX,EBP
00d4c545  75b9  JNZ 0x00d4c500
00d4c547  5f  POP EDI
00d4c548  5e  POP ESI
00d4c549  5d  POP EBP
00d4c54a  b001  MOV AL,0x1
00d4c54c  5b  POP EBX
00d4c54d  c20c00  RET 0xc

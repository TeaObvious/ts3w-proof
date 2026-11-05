# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 SimService_ReadLegacyOutfitCache(undefined1 * param_1, void * param_2)
Owned ranges: [[005efa30, 005efb92]]

005efa30  83ec38  SUB ESP,0x38
005efa33  56  PUSH ESI
005efa34  8b742440  MOV ESI,dword ptr [ESP + 0x40]
005efa38  894c2408  MOV dword ptr [ESP + 0x8],ECX
005efa3c  8bce  MOV ECX,ESI
005efa3e  e87d8b1e00  CALL 0x007d85c0
005efa43  8b4610  MOV EAX,dword ptr [ESI + 0x10]
005efa46  8b5608  MOV EDX,dword ptr [ESI + 0x8]
005efa49  50  PUSH EAX
005efa4a  8d4c2444  LEA ECX,[ESP + 0x44]
005efa4e  51  PUSH ECX
005efa4f  52  PUSH EDX
005efa50  e82bdfeeff  CALL 0x004dd980
005efa55  83c40c  ADD ESP,0xc
005efa58  8bce  MOV ECX,ESI
005efa5a  50  PUSH EAX
005efa5b  e8907f1e00  CALL 0x007d79f0
005efa60  8b442440  MOV EAX,dword ptr [ESP + 0x40]
005efa64  8d48ff  LEA ECX,[EAX + -0x1]
005efa67  83f906  CMP ECX,0x6
005efa6a  0f871a010000  JA 0x005efb8a
005efa70  83f806  CMP EAX,0x6
005efa73  53  PUSH EBX
005efa74  7249  JC 0x005efabf
005efa76  8b5610  MOV EDX,dword ptr [ESI + 0x10]
005efa79  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005efa7c  52  PUSH EDX
005efa7d  8d44240c  LEA EAX,[ESP + 0xc]
005efa81  50  PUSH EAX
005efa82  51  PUSH ECX
005efa83  e8f8deeeff  CALL 0x004dd980
005efa88  83c40c  ADD ESP,0xc
005efa8b  8bce  MOV ECX,ESI
005efa8d  50  PUSH EAX
005efa8e  e85d7f1e00  CALL 0x007d79f0
005efa93  807e1400  CMP byte ptr [ESI + 0x14],0x0
005efa97  750a  JNZ 0x005efaa3
005efa99  5b  POP EBX
005efa9a  32c0  XOR AL,AL
005efa9c  5e  POP ESI
005efa9d  83c438  ADD ESP,0x38
005efaa0  c20800  RET 0x8
005efaa3  8bce  MOV ECX,ESI
005efaa5  e8c6891e00  CALL 0x007d8470
005efaaa  8b542408  MOV EDX,dword ptr [ESP + 0x8]
005efaae  8bd8  MOV EBX,EAX
005efab0  6a00  PUSH 0x0
005efab2  8d0413  LEA EAX,[EBX + EDX*0x1]
005efab5  50  PUSH EAX
005efab6  8bce  MOV ECX,ESI
005efab8  e8d3891e00  CALL 0x007d8490
005efabd  eb04  JMP 0x005efac3
005efabf  8b5c2448  MOV EBX,dword ptr [ESP + 0x48]
005efac3  55  PUSH EBP
005efac4  57  PUSH EDI
005efac5  8d4c2418  LEA ECX,[ESP + 0x18]
005efac9  e842310100  CALL 0x00602c10
005eface  33ff  XOR EDI,EDI
005efad0  837c244c05  CMP dword ptr [ESP + 0x4c],0x5
005efad5  7240  JC 0x005efb17
005efad7  8bce  MOV ECX,ESI
005efad9  e892891e00  CALL 0x007d8470
005efade  8b4c2450  MOV ECX,dword ptr [ESP + 0x50]
005efae2  51  PUSH ECX
005efae3  56  PUSH ESI
005efae4  8d4c2420  LEA ECX,[ESP + 0x20]
005efae8  e853780100  CALL 0x00607340
005efaed  84c0  TEST AL,AL
005efaef  7445  JZ 0x005efb36
005efaf1  807e1400  CMP byte ptr [ESI + 0x14],0x0
005efaf5  743f  JZ 0x005efb36
005efaf7  8bce  MOV ECX,ESI
005efaf9  e872891e00  CALL 0x007d8470
005efafe  837c244c06  CMP dword ptr [ESP + 0x4c],0x6
005efb03  8be8  MOV EBP,EAX
005efb05  8d7c2418  LEA EDI,[ESP + 0x18]
005efb09  7210  JC 0x005efb1b
005efb0b  6a00  PUSH 0x0
005efb0d  53  PUSH EBX
005efb0e  8bce  MOV ECX,ESI
005efb10  e87b891e00  CALL 0x007d8490
005efb15  eb04  JMP 0x005efb1b
005efb17  8b6c2450  MOV EBP,dword ptr [ESP + 0x50]
005efb1b  8b54244c  MOV EDX,dword ptr [ESP + 0x4c]
005efb1f  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
005efb23  52  PUSH EDX
005efb24  57  PUSH EDI
005efb25  8b7c2458  MOV EDI,dword ptr [ESP + 0x58]
005efb29  57  PUSH EDI
005efb2a  56  PUSH ESI
005efb2b  8bcb  MOV ECX,EBX
005efb2d  e83efdffff  CALL 0x005ef870
005efb32  84c0  TEST AL,AL
005efb34  7515  JNZ 0x005efb4b
005efb36  8d4c2418  LEA ECX,[ESP + 0x18]
005efb3a  e8c1810100  CALL 0x00607d00
005efb3f  5f  POP EDI
005efb40  5d  POP EBP
005efb41  5b  POP EBX
005efb42  32c0  XOR AL,AL
005efb44  5e  POP ESI
005efb45  83c438  ADD ESP,0x38
005efb48  c20800  RET 0x8
005efb4b  837c244c06  CMP dword ptr [ESP + 0x4c],0x6
005efb50  720a  JC 0x005efb5c
005efb52  6a00  PUSH 0x0
005efb54  55  PUSH EBP
005efb55  8bce  MOV ECX,ESI
005efb57  e834891e00  CALL 0x007d8490
005efb5c  8bce  MOV ECX,ESI
005efb5e  e80d891e00  CALL 0x007d8470
005efb63  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
005efb67  50  PUSH EAX
005efb68  57  PUSH EDI
005efb69  56  PUSH ESI
005efb6a  8bcb  MOV ECX,EBX
005efb6c  e8cff5ffff  CALL 0x005ef140
005efb71  84c0  TEST AL,AL
005efb73  8d4c2418  LEA ECX,[ESP + 0x18]
005efb77  74c1  JZ 0x005efb3a
005efb79  e882810100  CALL 0x00607d00
005efb7e  5f  POP EDI
005efb7f  5d  POP EBP
005efb80  5b  POP EBX
005efb81  b001  MOV AL,0x1
005efb83  5e  POP ESI
005efb84  83c438  ADD ESP,0x38
005efb87  c20800  RET 0x8
005efb8a  32c0  XOR AL,AL
005efb8c  5e  POP ESI
005efb8d  83c438  ADD ESP,0x38
005efb90  c20800  RET 0x8

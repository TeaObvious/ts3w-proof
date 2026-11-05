# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: ulonglong FireplaceGroups_FindMantle(void * this, ulonglong objectId)
Owned ranges: [[00a75b00, 00a75b4e] [00a75b50, 00a75c49]]

00a75b00  83ec18  SUB ESP,0x18
00a75b03  53  PUSH EBX
00a75b04  8bd1  MOV EDX,ECX
00a75b06  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00a75b09  8b18  MOV EBX,dword ptr [EAX]
00a75b0b  85db  TEST EBX,EBX
00a75b0d  55  PUSH EBP
00a75b0e  56  PUSH ESI
00a75b0f  57  PUSH EDI
00a75b10  89542410  MOV dword ptr [ESP + 0x10],EDX
00a75b14  7514  JNZ 0x00a75b2a
00a75b16  83c004  ADD EAX,0x4
00a75b19  3918  CMP dword ptr [EAX],EBX
00a75b1b  750b  JNZ 0x00a75b28
00a75b1d  8d4900  LEA ECX,[ECX]
00a75b20  83c004  ADD EAX,0x4
00a75b23  833800  CMP dword ptr [EAX],0x0
00a75b26  74f8  JZ 0x00a75b20
00a75b28  8b18  MOV EBX,dword ptr [EAX]
00a75b2a  8b4a08  MOV ECX,dword ptr [EDX + 0x8]
00a75b2d  8be8  MOV EBP,EAX
00a75b2f  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00a75b32  8b0481  MOV EAX,dword ptr [ECX + EAX*0x4]
00a75b35  3bd8  CMP EBX,EAX
00a75b37  896c241c  MOV dword ptr [ESP + 0x1c],EBP
00a75b3b  89442420  MOV dword ptr [ESP + 0x20],EAX
00a75b3f  7513  JNZ 0x00a75b54
00a75b41  5f  POP EDI
00a75b42  5e  POP ESI
00a75b43  5d  POP EBP
00a75b44  33c0  XOR EAX,EAX
00a75b46  33d2  XOR EDX,EDX
00a75b48  5b  POP EBX
00a75b49  83c418  ADD ESP,0x18
00a75b4c  c20800  RET 0x8
00a75b4f  90  .byte 90 ; NONOWNED envelope gap bytes
00a75b50  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00a75b54  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00a75b57  8b4308  MOV EAX,dword ptr [EBX + 0x8]
00a75b5a  8bf1  MOV ESI,ECX
00a75b5c  3bf0  CMP ESI,EAX
00a75b5e  0f8481000000  JZ 0x00a75be5
00a75b64  8b3e  MOV EDI,dword ptr [ESI]
00a75b66  3b7c242c  CMP EDI,dword ptr [ESP + 0x2c]
00a75b6a  7509  JNZ 0x00a75b75
00a75b6c  8b7e04  MOV EDI,dword ptr [ESI + 0x4]
00a75b6f  3b7c2430  CMP EDI,dword ptr [ESP + 0x30]
00a75b73  7407  JZ 0x00a75b7c
00a75b75  83c608  ADD ESI,0x8
00a75b78  3bf0  CMP ESI,EAX
00a75b7a  75e8  JNZ 0x00a75b64
00a75b7c  3bf0  CMP ESI,EAX
00a75b7e  7465  JZ 0x00a75be5
00a75b80  3bf1  CMP ESI,ECX
00a75b82  7461  JZ 0x00a75be5
00a75b84  8b46fc  MOV EAX,dword ptr [ESI + -0x4]
00a75b87  8b4ef8  MOV ECX,dword ptr [ESI + -0x8]
00a75b8a  50  PUSH EAX
00a75b8b  51  PUSH ECX
00a75b8c  8b4a24  MOV ECX,dword ptr [EDX + 0x24]
00a75b8f  e8ec801f00  CALL 0x00c6dc80
00a75b94  8bf8  MOV EDI,EAX
00a75b96  85ff  TEST EDI,EDI
00a75b98  744b  JZ 0x00a75be5
00a75b9a  8d6f04  LEA EBP,[EDI + 0x4]
00a75b9d  8bd5  MOV EDX,EBP
00a75b9f  b801000000  MOV EAX,0x1
00a75ba4  f00fc102  XADD.LOCK dword ptr [EDX],EAX
00a75ba8  57  PUSH EDI
00a75ba9  e802a20800  CALL 0x00affdb0
00a75bae  83c404  ADD ESP,0x4
00a75bb1  85c0  TEST EAX,EAX
00a75bb3  740e  JZ 0x00a75bc3
00a75bb5  8b88d0000000  MOV ECX,dword ptr [EAX + 0xd0]
00a75bbb  c1e906  SHR ECX,0x6
00a75bbe  f6c101  TEST CL,0x1
00a75bc1  7553  JNZ 0x00a75c16
00a75bc3  8bd5  MOV EDX,EBP
00a75bc5  83c8ff  OR EAX,0xffffffff
00a75bc8  f00fc102  XADD.LOCK dword ptr [EDX],EAX
00a75bcc  48  DEC EAX
00a75bcd  7512  JNZ 0x00a75be1
00a75bcf  b901000000  MOV ECX,0x1
00a75bd4  874d00  XCHG dword ptr [EBP],ECX
00a75bd7  8b17  MOV EDX,dword ptr [EDI]
00a75bd9  8b02  MOV EAX,dword ptr [EDX]
00a75bdb  6a01  PUSH 0x1
00a75bdd  8bcf  MOV ECX,EDI
00a75bdf  ffd0  CALL EAX
00a75be1  8b6c241c  MOV EBP,dword ptr [ESP + 0x1c]
00a75be5  8b5b14  MOV EBX,dword ptr [EBX + 0x14]
00a75be8  85db  TEST EBX,EBX
00a75bea  7512  JNZ 0x00a75bfe
00a75bec  8d642400  LEA ESP,[ESP]
00a75bf0  8b5d04  MOV EBX,dword ptr [EBP + 0x4]
00a75bf3  83c504  ADD EBP,0x4
00a75bf6  85db  TEST EBX,EBX
00a75bf8  74f6  JZ 0x00a75bf0
00a75bfa  896c241c  MOV dword ptr [ESP + 0x1c],EBP
00a75bfe  3b5c2420  CMP EBX,dword ptr [ESP + 0x20]
00a75c02  0f8548ffffff  JNZ 0x00a75b50
00a75c08  5f  POP EDI
00a75c09  5e  POP ESI
00a75c0a  5d  POP EBP
00a75c0b  33c0  XOR EAX,EAX
00a75c0d  33d2  XOR EDX,EDX
00a75c0f  5b  POP EBX
00a75c10  83c418  ADD ESP,0x18
00a75c13  c20800  RET 0x8
00a75c16  8b5ef8  MOV EBX,dword ptr [ESI + -0x8]
00a75c19  8b76fc  MOV ESI,dword ptr [ESI + -0x4]
00a75c1c  8d4704  LEA EAX,[EDI + 0x4]
00a75c1f  8bc8  MOV ECX,EAX
00a75c21  83caff  OR EDX,0xffffffff
00a75c24  f00fc111  XADD.LOCK dword ptr [ECX],EDX
00a75c28  4a  DEC EDX
00a75c29  7511  JNZ 0x00a75c3c
00a75c2b  b901000000  MOV ECX,0x1
00a75c30  8708  XCHG dword ptr [EAX],ECX
00a75c32  8b17  MOV EDX,dword ptr [EDI]
00a75c34  8b02  MOV EAX,dword ptr [EDX]
00a75c36  6a01  PUSH 0x1
00a75c38  8bcf  MOV ECX,EDI
00a75c3a  ffd0  CALL EAX
00a75c3c  5f  POP EDI
00a75c3d  8bd6  MOV EDX,ESI
00a75c3f  5e  POP ESI
00a75c40  5d  POP EBP
00a75c41  8bc3  MOV EAX,EBX
00a75c43  5b  POP EBX
00a75c44  83c418  ADD ESP,0x18
00a75c47  c20800  RET 0x8

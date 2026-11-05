# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint LotQuarter_FailsFlatnessTolerance(void * lot, char * quarter)
Owned ranges: [[00ad0b00, 00ad0bff]]

00ad0b00  83ec18  SUB ESP,0x18
00ad0b03  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00ad0b0b  0cff  OR AL,0xff
00ad0b0d  56  PUSH ESI
00ad0b0e  88442404  MOV byte ptr [ESP + 0x4],AL
00ad0b12  88442405  MOV byte ptr [ESP + 0x5],AL
00ad0b16  88442408  MOV byte ptr [ESP + 0x8],AL
00ad0b1a  88442409  MOV byte ptr [ESP + 0x9],AL
00ad0b1e  8d442410  LEA EAX,[ESP + 0x10]
00ad0b22  50  PUSH EAX
00ad0b23  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00ad0b27  8d4c240c  LEA ECX,[ESP + 0xc]
00ad0b2b  51  PUSH ECX
00ad0b2c  8d54240c  LEA EDX,[ESP + 0xc]
00ad0b30  52  PUSH EDX
00ad0b31  50  PUSH EAX
00ad0b32  c644241600  MOV byte ptr [ESP + 0x16],0x0
00ad0b37  c644241a00  MOV byte ptr [ESP + 0x1a],0x0
00ad0b3c  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ad0b42  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00ad0b48  c744242800000000  MOV dword ptr [ESP + 0x28],0x0
00ad0b50  e8eb720200  CALL 0x00af7e40
00ad0b55  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00ad0b59  8b8990020000  MOV ECX,dword ptr [ECX + 0x290]
00ad0b5f  0fbe542416  MOVSX EDX,byte ptr [ESP + 0x16]
00ad0b64  2b5110  SUB EDX,dword ptr [ECX + 0x10]
00ad0b67  8b4124  MOV EAX,dword ptr [ECX + 0x24]
00ad0b6a  0faf5004  IMUL EDX,dword ptr [EAX + 0x4]
00ad0b6e  0fbe742414  MOVSX ESI,byte ptr [ESP + 0x14]
00ad0b73  03d6  ADD EDX,ESI
00ad0b75  0faf5008  IMUL EDX,dword ptr [EAX + 0x8]
00ad0b79  0fbe742415  MOVSX ESI,byte ptr [ESP + 0x15]
00ad0b7e  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00ad0b81  03d6  ADD EDX,ESI
00ad0b83  0fbe742418  MOVSX ESI,byte ptr [ESP + 0x18]
00ad0b88  d90490  FLD float ptr [EAX + EDX*0x4]
00ad0b8b  0fbe54241a  MOVSX EDX,byte ptr [ESP + 0x1a]
00ad0b90  d95c2430  FSTP float ptr [ESP + 0x30]
00ad0b94  2b5110  SUB EDX,dword ptr [ECX + 0x10]
00ad0b97  8b4124  MOV EAX,dword ptr [ECX + 0x24]
00ad0b9a  0faf5004  IMUL EDX,dword ptr [EAX + 0x4]
00ad0b9e  03d6  ADD EDX,ESI
00ad0ba0  0faf5008  IMUL EDX,dword ptr [EAX + 0x8]
00ad0ba4  0fbe742419  MOVSX ESI,byte ptr [ESP + 0x19]
00ad0ba9  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00ad0bac  03d6  ADD EDX,ESI
00ad0bae  83c410  ADD ESP,0x10
00ad0bb1  d90490  FLD float ptr [EAX + EDX*0x4]
00ad0bb4  8d542410  LEA EDX,[ESP + 0x10]
00ad0bb8  52  PUSH EDX
00ad0bb9  d95c2410  FSTP float ptr [ESP + 0x10]
00ad0bbd  e8cebafbff  CALL 0x00a8c690
00ad0bc2  d9442420  FLD float ptr [ESP + 0x20]
00ad0bc6  5e  POP ESI
00ad0bc7  d9442408  FLD float ptr [ESP + 0x8]
00ad0bcb  dce9  FSUB ST1,ST0
00ad0bcd  d9c9  FXCH
00ad0bcf  d9e1  FABS
00ad0bd1  d905246b0601  FLD float ptr [0x01066b24]
00ad0bd7  d9c9  FXCH
00ad0bd9  dff1  FCOMIP ST0,ST1
00ad0bdb  7714  JA 0x00ad0bf1
00ad0bdd  d9c9  FXCH
00ad0bdf  dee2  FSUBRP ST2,ST0
00ad0be1  d9c9  FXCH
00ad0be3  d9e1  FABS
00ad0be5  dff1  FCOMIP ST0,ST1
00ad0be7  ddd8  FSTP ST0
00ad0be9  770c  JA 0x00ad0bf7
00ad0beb  33c0  XOR EAX,EAX
00ad0bed  83c418  ADD ESP,0x18
00ad0bf0  c3  RET
00ad0bf1  ddd9  FSTP ST1
00ad0bf3  ddd9  FSTP ST1
00ad0bf5  ddd8  FSTP ST0
00ad0bf7  b801000000  MOV EAX,0x1
00ad0bfc  83c418  ADD ESP,0x18
00ad0bff  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function AppLoadingScreen_DispatchEvent Entry 00ec7c00
OWNED_RANGE 00ec7c00:00ec7d93
00ec7c00: 83ec20  SUB ESP,0x20
00ec7c03: 55  PUSH EBP
00ec7c04: 8b6c2428  MOV EBP,dword ptr [ESP + 0x28]
00ec7c08: 8b4508  MOV EAX,dword ptr [EBP + 0x8]
00ec7c0b: 3d64000100  CMP EAX,0x10064
00ec7c10: 56  PUSH ESI
00ec7c11: 57  PUSH EDI
00ec7c12: 8bf1  MOV ESI,ECX
00ec7c14: 7567  JNZ 0x00ec7c7d
00ec7c16: e875178aff  CALL 0x00769390
00ec7c1b: 85c0  TEST EAX,EAX
00ec7c1d: 7453  JZ 0x00ec7c72
00ec7c1f: 8b4d10  MOV ECX,dword ptr [EBP + 0x10]
00ec7c22: 8b750c  MOV ESI,dword ptr [EBP + 0xc]
00ec7c25: 8b28  MOV EBP,dword ptr [EAX]
00ec7c27: 33d2  XOR EDX,EDX
00ec7c29: 0bd1  OR EDX,ECX
00ec7c2b: 33ff  XOR EDI,EDI
00ec7c2d: 8d4c240c  LEA ECX,[ESP + 0xc]
00ec7c31: 51  PUSH ECX
00ec7c32: 0bf7  OR ESI,EDI
00ec7c34: 56  PUSH ESI
00ec7c35: 52  PUSH EDX
00ec7c36: 8b9524010000  MOV EDX,dword ptr [EBP + 0x124]
00ec7c3c: bff4a6fb00  MOV EDI,0xfba6f4
00ec7c41: 8bc8  MOV ECX,EAX
00ec7c43: 897c2418  MOV dword ptr [ESP + 0x18],EDI
00ec7c47: c644242801  MOV byte ptr [ESP + 0x28],0x1
00ec7c4c: 66c74424220100  MOV word ptr [ESP + 0x22],0x1
00ec7c53: 66c74424200000  MOV word ptr [ESP + 0x20],0x0
00ec7c5a: ffd2  CALL EDX
00ec7c5c: f644241404  TEST byte ptr [ESP + 0x14],0x4
00ec7c61: 897c240c  MOV dword ptr [ESP + 0xc],EDI
00ec7c65: 740b  JZ 0x00ec7c72
00ec7c67: 6a00  PUSH 0x0
00ec7c69: 8d4c2410  LEA ECX,[ESP + 0x10]
00ec7c6d: e8eeda62ff  CALL 0x004f5760
00ec7c72: 5f  POP EDI
00ec7c73: 5e  POP ESI
00ec7c74: b001  MOV AL,0x1
00ec7c76: 5d  POP EBP
00ec7c77: 83c420  ADD ESP,0x20
00ec7c7a: c20400  RET 0x4
00ec7c7d: 3d03000100  CMP EAX,0x10003
00ec7c82: 0f859b000000  JNZ 0x00ec7d23
00ec7c88: 8b8e68020000  MOV ECX,dword ptr [ESI + 0x268]
00ec7c8e: 85c9  TEST ECX,ECX
00ec7c90: 7428  JZ 0x00ec7cba
00ec7c92: 8b01  MOV EAX,dword ptr [ECX]
00ec7c94: 8b5010  MOV EDX,dword ptr [EAX + 0x10]
00ec7c97: ffd2  CALL EDX
00ec7c99: 8b10  MOV EDX,dword ptr [EAX]
00ec7c9b: 8b7d00  MOV EDI,dword ptr [EBP]
00ec7c9e: 8bc8  MOV ECX,EAX
00ec7ca0: 8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00ec7ca3: ffd0  CALL EAX
00ec7ca5: 8b17  MOV EDX,dword ptr [EDI]
00ec7ca7: 8b521c  MOV EDX,dword ptr [EDX + 0x1c]
00ec7caa: 8bcf  MOV ECX,EDI
00ec7cac: 89442430  MOV dword ptr [ESP + 0x30],EAX
00ec7cb0: ffd2  CALL EDX
00ec7cb2: 8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00ec7cb6: 3bc1  CMP EAX,ECX
00ec7cb8: 7432  JZ 0x00ec7cec
00ec7cba: 8b8e6c020000  MOV ECX,dword ptr [ESI + 0x26c]
00ec7cc0: 85c9  TEST ECX,ECX
00ec7cc2: 745f  JZ 0x00ec7d23
00ec7cc4: 8b01  MOV EAX,dword ptr [ECX]
00ec7cc6: 8b5010  MOV EDX,dword ptr [EAX + 0x10]
00ec7cc9: ffd2  CALL EDX
00ec7ccb: 8b4d00  MOV ECX,dword ptr [EBP]
00ec7cce: 8bf8  MOV EDI,EAX
00ec7cd0: 8b01  MOV EAX,dword ptr [ECX]
00ec7cd2: 8b501c  MOV EDX,dword ptr [EAX + 0x1c]
00ec7cd5: ffd2  CALL EDX
00ec7cd7: 8b17  MOV EDX,dword ptr [EDI]
00ec7cd9: 8b521c  MOV EDX,dword ptr [EDX + 0x1c]
00ec7cdc: 8bcf  MOV ECX,EDI
00ec7cde: 89442430  MOV dword ptr [ESP + 0x30],EAX
00ec7ce2: ffd2  CALL EDX
00ec7ce4: 8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00ec7ce8: 3bc8  CMP ECX,EAX
00ec7cea: 7537  JNZ 0x00ec7d23
00ec7cec: 80bee002000000  CMP byte ptr [ESI + 0x2e0],0x0
00ec7cf3: 0f848a000000  JZ 0x00ec7d83
00ec7cf9: 8bce  MOV ECX,ESI
00ec7cfb: c686e002000000  MOV byte ptr [ESI + 0x2e0],0x0
00ec7d02: e829fbffff  CALL 0x00ec7830
00ec7d07: 8d8ea8020000  LEA ECX,[ESI + 0x2a8]
00ec7d0d: e87ebb61ff  CALL 0x004e3890
00ec7d12: 55  PUSH EBP
00ec7d13: 8bce  MOV ECX,ESI
00ec7d15: e8f6ca63ff  CALL 0x00504810
00ec7d1a: 5f  POP EDI
00ec7d1b: 5e  POP ESI
00ec7d1c: 5d  POP EBP
00ec7d1d: 83c420  ADD ESP,0x20
00ec7d20: c20400  RET 0x4
00ec7d23: 837d080c  CMP dword ptr [EBP + 0x8],0xc
00ec7d27: 755a  JNZ 0x00ec7d83
00ec7d29: 8dbec0020000  LEA EDI,[ESI + 0x2c0]
00ec7d2f: 8bcf  MOV ECX,EDI
00ec7d31: e88aba62ff  CALL 0x004f37c0
00ec7d36: d95c2430  FSTP float ptr [ESP + 0x30]
00ec7d3a: 80bee202000000  CMP byte ptr [ESI + 0x2e2],0x0
00ec7d41: 7440  JZ 0x00ec7d83
00ec7d43: f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00ec7d49: f30f5c86d8020000  SUBSS XMM0,dword ptr [ESI + 0x2d8]
00ec7d51: 0f2f05ec580f01  COMISS XMM0,dword ptr [0x010f58ec]
00ec7d58: 7229  JC 0x00ec7d83
00ec7d5a: c686e202000000  MOV byte ptr [ESI + 0x2e2],0x0
00ec7d61: 8bce  MOV ECX,ESI
00ec7d63: c70700000000  MOV dword ptr [EDI],0x0
00ec7d69: c7470400000000  MOV dword ptr [EDI + 0x4],0x0
00ec7d70: c7470800000000  MOV dword ptr [EDI + 0x8],0x0
00ec7d77: c7470c00000000  MOV dword ptr [EDI + 0xc],0x0
00ec7d7e: e89dfdffff  CALL 0x00ec7b20
00ec7d83: 55  PUSH EBP
00ec7d84: 8bce  MOV ECX,ESI
00ec7d86: e885ca63ff  CALL 0x00504810
00ec7d8b: 5f  POP EDI
00ec7d8c: 5e  POP ESI
00ec7d8d: 5d  POP EBP
00ec7d8e: 83c420  ADD ESP,0x20
00ec7d91: c20400  RET 0x4
Total instructions: 125; owned bytes: 404

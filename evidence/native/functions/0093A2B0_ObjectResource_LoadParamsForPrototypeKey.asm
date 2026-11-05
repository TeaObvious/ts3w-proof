# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint ObjectResource_LoadParamsForPrototypeKey(uint * param_1, undefined4 param_2)
Owned ranges: [[0093a2b0, 0093a341]]

0093a2b0  83ec10  SUB ESP,0x10
0093a2b3  8b442414  MOV EAX,dword ptr [ESP + 0x14]
0093a2b7  8b08  MOV ECX,dword ptr [EAX]
0093a2b9  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0093a2bc  890c24  MOV dword ptr [ESP],ECX
0093a2bf  8b4808  MOV ECX,dword ptr [EAX + 0x8]
0093a2c2  81f93f34dc02  CMP ECX,0x2dc343f
0093a2c8  89542404  MOV dword ptr [ESP + 0x4],EDX
0093a2cc  8b500c  MOV EDX,dword ptr [EAX + 0xc]
0093a2cf  894c2408  MOV dword ptr [ESP + 0x8],ECX
0093a2d3  8954240c  MOV dword ptr [ESP + 0xc],EDX
0093a2d7  7449  JZ 0x0093a322
0093a2d9  81f91d4f9e31  CMP ECX,0x319e4f1d
0093a2df  7514  JNZ 0x0093a2f5
0093a2e1  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
0093a2e7  85c9  TEST ECX,ECX
0093a2e9  740a  JZ 0x0093a2f5
0093a2eb  50  PUSH EAX
0093a2ec  e8bf483500  CALL 0x00c8ebb0
0093a2f1  85c0  TEST EAX,EAX
0093a2f3  7506  JNZ 0x0093a2fb
0093a2f5  32c0  XOR AL,AL
0093a2f7  83c410  ADD ESP,0x10
0093a2fa  c3  RET
0093a2fb  8b8888000000  MOV ECX,dword ptr [EAX + 0x88]
0093a301  890c24  MOV dword ptr [ESP],ECX
0093a304  8b908c000000  MOV EDX,dword ptr [EAX + 0x8c]
0093a30a  89542404  MOV dword ptr [ESP + 0x4],EDX
0093a30e  8b8890000000  MOV ECX,dword ptr [EAX + 0x90]
0093a314  894c2408  MOV dword ptr [ESP + 0x8],ECX
0093a318  8b9094000000  MOV EDX,dword ptr [EAX + 0x94]
0093a31e  8954240c  MOV dword ptr [ESP + 0xc],EDX
0093a322  e8194edfff  CALL 0x0072f140
0093a327  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
0093a32b  8b10  MOV EDX,dword ptr [EAX]
0093a32d  8b12  MOV EDX,dword ptr [EDX]
0093a32f  51  PUSH ECX
0093a330  685034dc02  PUSH 0x2dc3450
0093a335  8d4c2408  LEA ECX,[ESP + 0x8]
0093a339  51  PUSH ECX
0093a33a  8bc8  MOV ECX,EAX
0093a33c  ffd2  CALL EDX
0093a33e  83c410  ADD ESP,0x10
0093a341  c3  RET

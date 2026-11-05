# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00B15A60_FUN_00b15a60.c
Body [[00b15a60, 00b15c10]]; envelope exclusive end 00b15c11

GHIDRA LISTING (original bytes)
00b15a60  83ec0c  SUB ESP,0xc
00b15a63  56  PUSH ESI
00b15a64  8bf1  MOV ESI,ECX
00b15a66  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00b15a6c  6a01  PUSH 0x1
00b15a6e  56  PUSH ESI
00b15a6f  e85c8d1700  CALL 0x00c8e7d0
00b15a74  85c0  TEST EAX,EAX
00b15a76  0f848c010000  JZ 0x00b15c08
00b15a7c  8bc8  MOV ECX,EAX
00b15a7e  e85d0f1800  CALL 0x00c969e0
00b15a83  84c0  TEST AL,AL
00b15a85  0f847d010000  JZ 0x00b15c08
00b15a8b  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00b15a8f  d902  FLD float ptr [EDX]
00b15a91  83ec08  SUB ESP,0x8
00b15a94  d954241c  FST float ptr [ESP + 0x1c]
00b15a98  8bce  MOV ECX,ESI
00b15a9a  d94204  FLD float ptr [EDX + 0x4]
00b15a9d  d95c2404  FSTP float ptr [ESP + 0x4]
00b15aa1  d91c24  FSTP float ptr [ESP]
00b15aa4  e8d7f1ffff  CALL 0x00b14c80
00b15aa9  84c0  TEST AL,AL
00b15aab  0f8457010000  JZ 0x00b15c08
00b15ab1  8b4658  MOV EAX,dword ptr [ESI + 0x58]
00b15ab4  394208  CMP dword ptr [EDX + 0x8],EAX
00b15ab7  0f854b010000  JNZ 0x00b15c08
00b15abd  8b4e4c  MOV ECX,dword ptr [ESI + 0x4c]
00b15ac0  2bc8  SUB ECX,EAX
00b15ac2  83f901  CMP ECX,0x1
00b15ac5  0f853d010000  JNZ 0x00b15c08
00b15acb  f30f104c2414  MOVSS XMM1,dword ptr [ESP + 0x14]
00b15ad1  0f28c1  MOVAPS XMM0,XMM1
00b15ad4  f30f5c4644  SUBSS XMM0,dword ptr [ESI + 0x44]
00b15ad9  f30f5c4e50  SUBSS XMM1,dword ptr [ESI + 0x50]
00b15ade  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00b15ae4  f30f104204  MOVSS XMM0,dword ptr [EDX + 0x4]
00b15ae9  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00b15aed  25ffffff7f  AND EAX,0x7fffffff
00b15af2  f30f114c2408  MOVSS dword ptr [ESP + 0x8],XMM1
00b15af8  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00b15afc  0f28d0  MOVAPS XMM2,XMM0
00b15aff  f30f5c5648  SUBSS XMM2,dword ptr [ESI + 0x48]
00b15b04  f30f5c4654  SUBSS XMM0,dword ptr [ESI + 0x54]
00b15b09  8b7640  MOV ESI,dword ptr [ESI + 0x40]
00b15b0c  f30f11542404  MOVSS dword ptr [ESP + 0x4],XMM2
00b15b12  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00b15b16  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00b15b1c  89442414  MOV dword ptr [ESP + 0x14],EAX
00b15b20  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00b15b24  81e1ffffff7f  AND ECX,0x7fffffff
00b15b2a  81e2ffffff7f  AND EDX,0x7fffffff
00b15b30  25ffffff7f  AND EAX,0x7fffffff
00b15b35  83fe06  CMP ESI,0x6
00b15b38  894c2404  MOV dword ptr [ESP + 0x4],ECX
00b15b3c  8954240c  MOV dword ptr [ESP + 0xc],EDX
00b15b40  89442408  MOV dword ptr [ESP + 0x8],EAX
00b15b44  0f87be000000  JA 0x00b15c08
00b15b4a  0fb68e205cb100  MOVZX ECX,byte ptr [ESI + 0xb15c20]
00b15b51  ff248d145cb100  JMP dword ptr [ECX*0x4 + 0xb15c14]
00b15b58  d9ee  FLDZ
00b15b5a  83ec08  SUB ESP,0x8
00b15b5d  d95c2404  FSTP float ptr [ESP + 0x4]
00b15b61  d9442410  FLD float ptr [ESP + 0x10]
00b15b65  d91c24  FSTP float ptr [ESP]
00b15b68  e853f0ffff  CALL 0x00b14bc0
00b15b6d  83c408  ADD ESP,0x8
00b15b70  84c0  TEST AL,AL
00b15b72  7541  JNZ 0x00b15bb5
00b15b74  d9ee  FLDZ
00b15b76  83ec08  SUB ESP,0x8
00b15b79  d95c2404  FSTP float ptr [ESP + 0x4]
00b15b7d  d944240c  FLD float ptr [ESP + 0xc]
00b15b81  d91c24  FSTP float ptr [ESP]
00b15b84  e837f0ffff  CALL 0x00b14bc0
00b15b89  83c408  ADD ESP,0x8
00b15b8c  84c0  TEST AL,AL
00b15b8e  7525  JNZ 0x00b15bb5
00b15b90  d9ee  FLDZ
00b15b92  83ec08  SUB ESP,0x8
00b15b95  d95c2404  FSTP float ptr [ESP + 0x4]
00b15b99  d944241c  FLD float ptr [ESP + 0x1c]
00b15b9d  d91c24  FSTP float ptr [ESP]
00b15ba0  e81bf0ffff  CALL 0x00b14bc0
00b15ba5  83c408  ADD ESP,0x8
00b15ba8  84c0  TEST AL,AL
00b15baa  7509  JNZ 0x00b15bb5
00b15bac  33c0  XOR EAX,EAX
00b15bae  5e  POP ESI
00b15baf  83c40c  ADD ESP,0xc
00b15bb2  c20400  RET 0x4
00b15bb5  b801000000  MOV EAX,0x1
00b15bba  5e  POP ESI
00b15bbb  83c40c  ADD ESP,0xc
00b15bbe  c20400  RET 0x4
00b15bc1  d9ee  FLDZ
00b15bc3  83ec08  SUB ESP,0x8
00b15bc6  d95c2404  FSTP float ptr [ESP + 0x4]
00b15bca  d9442414  FLD float ptr [ESP + 0x14]
00b15bce  d91c24  FSTP float ptr [ESP]
00b15bd1  e8eaefffff  CALL 0x00b14bc0
00b15bd6  83c408  ADD ESP,0x8
00b15bd9  84c0  TEST AL,AL
00b15bdb  75d8  JNZ 0x00b15bb5
00b15bdd  d9ee  FLDZ
00b15bdf  83ec08  SUB ESP,0x8
00b15be2  d95c2404  FSTP float ptr [ESP + 0x4]
00b15be6  d944241c  FLD float ptr [ESP + 0x1c]
00b15bea  d91c24  FSTP float ptr [ESP]
00b15bed  e8ceefffff  CALL 0x00b14bc0
00b15bf2  83c408  ADD ESP,0x8
00b15bf5  84c0  TEST AL,AL
00b15bf7  75bc  JNZ 0x00b15bb5
00b15bf9  d9ee  FLDZ
00b15bfb  83ec08  SUB ESP,0x8
00b15bfe  d95c2404  FSTP float ptr [ESP + 0x4]
00b15c02  d944240c  FLD float ptr [ESP + 0xc]
00b15c06  eb95  JMP 0x00b15b9d
00b15c08  32c0  XOR AL,AL
00b15c0a  5e  POP ESI
00b15c0b  83c40c  ADD ESP,0xc
00b15c0e  c20400  RET 0x4

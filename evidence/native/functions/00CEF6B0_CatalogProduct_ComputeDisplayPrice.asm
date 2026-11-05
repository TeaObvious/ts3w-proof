# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: float10 CatalogProduct_ComputeDisplayPrice(pointer product)
Owned ranges: [[00cef6b0, 00cef7a4]]

00cef6b0  51  PUSH ECX
00cef6b1  0f57c0  XORPS XMM0,XMM0
00cef6b4  56  PUSH ESI
00cef6b5  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00cef6b9  85f6  TEST ESI,ESI
00cef6bb  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00cef6c1  0f84d7000000  JZ 0x00cef79e
00cef6c7  833d80e71e0100  CMP dword ptr [0x011ee780],0x0
00cef6ce  f30f104658  MOVSS XMM0,dword ptr [ESI + 0x58]
00cef6d3  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00cef6d9  0f84bf000000  JZ 0x00cef79e
00cef6df  8b06  MOV EAX,dword ptr [ESI]
00cef6e1  8b5020  MOV EDX,dword ptr [EAX + 0x20]
00cef6e4  8bce  MOV ECX,ESI
00cef6e6  ffd2  CALL EDX
00cef6e8  84c0  TEST AL,AL
00cef6ea  a180e71e01  MOV EAX,[0x011ee780]
00cef6ef  7445  JZ 0x00cef736
00cef6f1  f30f10806c010000  MOVSS XMM0,dword ptr [EAX + 0x16c]
00cef6f9  8b16  MOV EDX,dword ptr [ESI]
00cef6fb  f30f59442404  MULSS XMM0,dword ptr [ESP + 0x4]
00cef701  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00cef704  689348ed04  PUSH 0x4ed4893
00cef709  8bce  MOV ECX,ESI
00cef70b  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00cef711  ffd0  CALL EAX
00cef713  d9442404  FLD float ptr [ESP + 0x4]
00cef717  85c0  TEST EAX,EAX
00cef719  0f8583000000  JNZ 0x00cef7a2
00cef71f  d805b4b5f900  FADD float ptr [0x00f9b5b4]
00cef725  83ec08  SUB ESP,0x8
00cef728  dd1c24  FSTP double ptr [ESP]
00cef72b  e8a0002900  CALL 0x00f7f7d0
00cef730  83c408  ADD ESP,0x8
00cef733  5e  POP ESI
00cef734  59  POP ECX
00cef735  c3  RET
00cef736  85c0  TEST EAX,EAX
00cef738  7464  JZ 0x00cef79e
00cef73a  f30f108070010000  MOVSS XMM0,dword ptr [EAX + 0x170]
00cef742  8b16  MOV EDX,dword ptr [ESI]
00cef744  f30f59442404  MULSS XMM0,dword ptr [ESP + 0x4]
00cef74a  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00cef74d  68254f9e51  PUSH 0x519e4f25
00cef752  8bce  MOV ECX,ESI
00cef754  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00cef75a  ffd0  CALL EAX
00cef75c  85c0  TEST EAX,EAX
00cef75e  7423  JZ 0x00cef783
00cef760  f680b000000004  TEST byte ptr [EAX + 0xb0],0x4
00cef767  741a  JZ 0x00cef783
00cef769  8b0d80e71e01  MOV ECX,dword ptr [0x011ee780]
00cef76f  f30f108174010000  MOVSS XMM0,dword ptr [ECX + 0x174]
00cef777  f30f59442404  MULSS XMM0,dword ptr [ESP + 0x4]
00cef77d  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00cef783  d9442404  FLD float ptr [ESP + 0x4]
00cef787  83ec08  SUB ESP,0x8
00cef78a  d805b4b5f900  FADD float ptr [0x00f9b5b4]
00cef790  dd1c24  FSTP double ptr [ESP]
00cef793  e838002900  CALL 0x00f7f7d0
00cef798  83c408  ADD ESP,0x8
00cef79b  5e  POP ESI
00cef79c  59  POP ECX
00cef79d  c3  RET
00cef79e  d9442404  FLD float ptr [ESP + 0x4]
00cef7a2  5e  POP ESI
00cef7a3  59  POP ECX
00cef7a4  c3  RET

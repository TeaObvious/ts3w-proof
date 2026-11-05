# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LotTerrain_RemovePaintLayer
Paired actual annotated Ghidra pseudocode: 00AF0930_LotTerrain_RemovePaintLayer.c
Owned ranges: [[00af0930, 00af0a69]]
Envelope bytes=314

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00af0930  83ec10  SUB ESP,0x10
00af0933  56  PUSH ESI
00af0934  8bf1  MOV ESI,ECX
00af0936  8b4630  MOV EAX,dword ptr [ESI + 0x30]
00af0939  3b4634  CMP EAX,dword ptr [ESI + 0x34]
00af093c  0f8421010000  JZ 0x00af0a63
00af0942  53  PUSH EBX
00af0943  55  PUSH EBP
00af0944  8b6c2420  MOV EBP,dword ptr [ESP + 0x20]
00af0948  57  PUSH EDI
00af0949  8d7c6d00  LEA EDI,[EBP + EBP*0x2]
00af094d  03ff  ADD EDI,EDI
00af094f  03ff  ADD EDI,EDI
00af0951  03ff  ADD EDI,EDI
00af0953  8b0c38  MOV ECX,dword ptr [EAX + EDI*0x1]
00af0956  8b543804  MOV EDX,dword ptr [EAX + EDI*0x1 + 0x4]
00af095a  03c7  ADD EAX,EDI
00af095c  894c2410  MOV dword ptr [ESP + 0x10],ECX
00af0960  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00af0963  894c2418  MOV dword ptr [ESP + 0x18],ECX
00af0967  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00af096a  2b4e30  SUB ECX,dword ptr [ESI + 0x30]
00af096d  89542414  MOV dword ptr [ESP + 0x14],EDX
00af0971  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00af0974  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00af0978  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af097d  f7e9  IMUL ECX
00af097f  c1fa02  SAR EDX,0x2
00af0982  8bc2  MOV EAX,EDX
00af0984  c1e81f  SHR EAX,0x1f
00af0987  8d5c02ff  LEA EBX,[EDX + EAX*0x1 + -0x1]
00af098b  3beb  CMP EBP,EBX
00af098d  7347  JNC 0x00af09d6
00af098f  55  PUSH EBP
00af0990  53  PUSH EBX
00af0991  8bce  MOV ECX,ESI
00af0993  e878efffff  CALL 0x00aef910
00af0998  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
00af099b  8d145b  LEA EDX,[EBX + EBX*0x2]
00af099e  8d04d1  LEA EAX,[ECX + EDX*0x8]
00af09a1  8b10  MOV EDX,dword ptr [EAX]
00af09a3  891439  MOV dword ptr [ECX + EDI*0x1],EDX
00af09a6  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00af09a9  03cf  ADD ECX,EDI
00af09ab  895104  MOV dword ptr [ECX + 0x4],EDX
00af09ae  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00af09b1  895108  MOV dword ptr [ECX + 0x8],EDX
00af09b4  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00af09b7  89510c  MOV dword ptr [ECX + 0xc],EDX
00af09ba  8b5010  MOV EDX,dword ptr [EAX + 0x10]
00af09bd  895110  MOV dword ptr [ECX + 0x10],EDX
00af09c0  8b4014  MOV EAX,dword ptr [EAX + 0x14]
00af09c3  894114  MOV dword ptr [ECX + 0x14],EAX
00af09c6  8b4630  MOV EAX,dword ptr [ESI + 0x30]
00af09c9  03c7  ADD EAX,EDI
00af09cb  50  PUSH EAX
00af09cc  8d4e40  LEA ECX,[ESI + 0x40]
00af09cf  e85cadffff  CALL 0x00aeb730
00af09d4  8928  MOV dword ptr [EAX],EBP
00af09d6  8d4c2410  LEA ECX,[ESP + 0x10]
00af09da  51  PUSH ECX
00af09db  8d4e40  LEA ECX,[ESI + 0x40]
00af09de  e8bda9ffff  CALL 0x00aeb3a0
00af09e3  834634e8  ADD dword ptr [ESI + 0x34],-0x18
00af09e7  8b5664  MOV EDX,dword ptr [ESI + 0x64]
00af09ea  8b7afc  MOV EDI,dword ptr [EDX + -0x4]
00af09ed  33db  XOR EBX,EBX
00af09ef  3bfb  CMP EDI,EBX
00af09f1  7439  JZ 0x00af0a2c
00af09f3  8b4730  MOV EAX,dword ptr [EDI + 0x30]
00af09f6  3bc3  CMP EAX,EBX
00af09f8  7409  JZ 0x00af0a03
00af09fa  50  PUSH EAX
00af09fb  e8e03a9fff  CALL 0x004e44e0
00af0a00  83c404  ADD ESP,0x4
00af0a03  8b4720  MOV EAX,dword ptr [EDI + 0x20]
00af0a06  3bc3  CMP EAX,EBX
00af0a08  7409  JZ 0x00af0a13
00af0a0a  50  PUSH EAX
00af0a0b  e8d03a9fff  CALL 0x004e44e0
00af0a10  83c404  ADD ESP,0x4
00af0a13  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00af0a16  3bc3  CMP EAX,EBX
00af0a18  7409  JZ 0x00af0a23
00af0a1a  50  PUSH EAX
00af0a1b  e8c03a9fff  CALL 0x004e44e0
00af0a20  83c404  ADD ESP,0x4
00af0a23  57  PUSH EDI
00af0a24  e8b73a9fff  CALL 0x004e44e0
00af0a29  83c404  ADD ESP,0x4
00af0a2c  834664fc  ADD dword ptr [ESI + 0x64],-0x4
00af0a30  8bce  MOV ECX,ESI
00af0a32  e84996ffff  CALL 0x00aea080
00af0a37  8b4e28  MOV ECX,dword ptr [ESI + 0x28]
00af0a3a  8b4624  MOV EAX,dword ptr [ESI + 0x24]
00af0a3d  8d542410  LEA EDX,[ESP + 0x10]
00af0a41  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00af0a45  52  PUSH EDX
00af0a46  8bce  MOV ECX,ESI
00af0a48  895c2414  MOV dword ptr [ESP + 0x14],EBX
00af0a4c  895c2418  MOV dword ptr [ESP + 0x18],EBX
00af0a50  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00af0a54  e877faffff  CALL 0x00af04d0
00af0a59  5f  POP EDI
00af0a5a  5d  POP EBP
00af0a5b  c686c400000001  MOV byte ptr [ESI + 0xc4],0x1
00af0a62  5b  POP EBX
00af0a63  5e  POP ESI
00af0a64  83c410  ADD ESP,0x10
00af0a67  c20400  RET 0x4
Owned instructions=110 owned bytes=314 gap/nonowned bytes=0

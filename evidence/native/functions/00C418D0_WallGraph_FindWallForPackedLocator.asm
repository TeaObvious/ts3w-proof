# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: WallGraph_FindWallForPackedLocator
; Owned ranges: [[00c418d0, 00c41984]]
; Actual entry PLATE: Static PC1.67: ECX graph, stack+4 six-byte locator, RET4, EAX wall pointer or0. Signextends locator X/Z/level bytes into two Float32XZ+Int32level tuples; C41860 resolves each vertex. Walks first vertex+8 adjacency until null or back at first; C36010 opposite vertex equal second vertex returns current node+0C wall value immediately. No nearest/epsilon, same-pair union or global uniqueness count. Identical endpoint vertices are not rejected by this body; graph insertion validity/order remains separate.

00c418d0  83ec18  SUB ESP,0x18
00c418d3  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c418d7  0fbe5001  MOVSX EDX,byte ptr [EAX + 0x1]
00c418db  56  PUSH ESI
00c418dc  8bf1  MOV ESI,ECX
00c418de  0fbe08  MOVSX ECX,byte ptr [EAX]
00c418e1  f30f2ac1  CVTSI2SS XMM0,ECX
00c418e5  0fbe4802  MOVSX ECX,byte ptr [EAX + 0x2]
00c418e9  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00c418ef  f30f2ac2  CVTSI2SS XMM0,EDX
00c418f3  0fbe5003  MOVSX EDX,byte ptr [EAX + 0x3]
00c418f7  894c240c  MOV dword ptr [ESP + 0xc],ECX
00c418fb  0fbe4804  MOVSX ECX,byte ptr [EAX + 0x4]
00c418ff  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00c41905  f30f2ac2  CVTSI2SS XMM0,EDX
00c41909  0fbe5005  MOVSX EDX,byte ptr [EAX + 0x5]
00c4190d  57  PUSH EDI
00c4190e  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00c41914  f30f2ac1  CVTSI2SS XMM0,ECX
00c41918  8d442408  LEA EAX,[ESP + 0x8]
00c4191c  50  PUSH EAX
00c4191d  8bce  MOV ECX,ESI
00c4191f  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00c41925  89542420  MOV dword ptr [ESP + 0x20],EDX
00c41929  e832ffffff  CALL 0x00c41860
00c4192e  8bf8  MOV EDI,EAX
00c41930  85ff  TEST EDI,EDI
00c41932  7508  JNZ 0x00c4193c
00c41934  5f  POP EDI
00c41935  5e  POP ESI
00c41936  83c418  ADD ESP,0x18
00c41939  c20400  RET 0x4
00c4193c  53  PUSH EBX
00c4193d  8d4c2418  LEA ECX,[ESP + 0x18]
00c41941  51  PUSH ECX
00c41942  8bce  MOV ECX,ESI
00c41944  e817ffffff  CALL 0x00c41860
00c41949  8bd8  MOV EBX,EAX
00c4194b  85db  TEST EBX,EBX
00c4194d  741f  JZ 0x00c4196e
00c4194f  8b7f08  MOV EDI,dword ptr [EDI + 0x8]
00c41952  85ff  TEST EDI,EDI
00c41954  7418  JZ 0x00c4196e
00c41956  8bf7  MOV ESI,EDI
00c41958  8bce  MOV ECX,ESI
00c4195a  e8b146ffff  CALL 0x00c36010
00c4195f  3bc3  CMP EAX,EBX
00c41961  7416  JZ 0x00c41979
00c41963  8b7604  MOV ESI,dword ptr [ESI + 0x4]
00c41966  85f6  TEST ESI,ESI
00c41968  7404  JZ 0x00c4196e
00c4196a  3bf7  CMP ESI,EDI
00c4196c  75ea  JNZ 0x00c41958
00c4196e  5b  POP EBX
00c4196f  5f  POP EDI
00c41970  33c0  XOR EAX,EAX
00c41972  5e  POP ESI
00c41973  83c418  ADD ESP,0x18
00c41976  c20400  RET 0x4
00c41979  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00c4197c  5b  POP EBX
00c4197d  5f  POP EDI
00c4197e  5e  POP ESI
00c4197f  83c418  ADD ESP,0x18
00c41982  c20400  RET 0x4

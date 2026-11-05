# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: WallGraph_FindVertexForCompactLocation
; Owned ranges: [[00c41860, 00c418c4]]
; Actual entry PLATE: Static PC1.67: ECX graph, stack+4 Float32X/Z+Int32level tuple, RET4; EAX vertex pointer or0. C5D530 constructs compact key, C41540 queries existing index. Sentinel or mismatch of any exact vertex bytes+4/+5/+6 returns0. Generic tree internals and current section-array ordering are not recovered by this role name.

00c41860  83ec10  SUB ESP,0x10
00c41863  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00c41867  56  PUSH ESI
00c41868  57  PUSH EDI
00c41869  8bf1  MOV ESI,ECX
00c4186b  50  PUSH EAX
00c4186c  8d4c240c  LEA ECX,[ESP + 0xc]
00c41870  e8bbbc0100  CALL 0x00c5d530
00c41875  0fb61580da1e01  MOVZX EDX,byte ptr [0x011eda80]
00c4187c  8b7e10  MOV EDI,dword ptr [ESI + 0x10]
00c4187f  52  PUSH EDX
00c41880  8d442420  LEA EAX,[ESP + 0x20]
00c41884  8d4c240c  LEA ECX,[ESP + 0xc]
00c41888  50  PUSH EAX
00c41889  894c2424  MOV dword ptr [ESP + 0x24],ECX
00c4188d  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c41890  57  PUSH EDI
00c41891  51  PUSH ECX
00c41892  e8a9fcffff  CALL 0x00c41540
00c41897  83c410  ADD ESP,0x10
00c4189a  3bc7  CMP EAX,EDI
00c4189c  5f  POP EDI
00c4189d  5e  POP ESI
00c4189e  741d  JZ 0x00c418bd
00c418a0  8b00  MOV EAX,dword ptr [EAX]
00c418a2  8a5006  MOV DL,byte ptr [EAX + 0x6]
00c418a5  3a542406  CMP DL,byte ptr [ESP + 0x6]
00c418a9  7512  JNZ 0x00c418bd
00c418ab  8a4804  MOV CL,byte ptr [EAX + 0x4]
00c418ae  3a4c2404  CMP CL,byte ptr [ESP + 0x4]
00c418b2  7509  JNZ 0x00c418bd
00c418b4  8a5005  MOV DL,byte ptr [EAX + 0x5]
00c418b7  3a542405  CMP DL,byte ptr [ESP + 0x5]
00c418bb  7402  JZ 0x00c418bf
00c418bd  33c0  XOR EAX,EAX
00c418bf  83c410  ADD ESP,0x10
00c418c2  c20400  RET 0x4

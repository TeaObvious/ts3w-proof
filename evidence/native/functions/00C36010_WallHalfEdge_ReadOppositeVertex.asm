# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: WallHalfEdge_ReadOppositeVertex
; Owned ranges: [[00c36010, 00c3601f]]
; Actual entry PLATE: Static PC1.67: ECX half-edge pointer, plain RET, EAX pointer. Low two bits at node+0 select node+28 when value<2, otherwise node-18. Physical unsigned mask values0..3 make signed JGE equivalent in this branch. No search, allocation or mutation.

00c36010  8a01  MOV AL,byte ptr [ECX]
00c36012  2403  AND AL,0x3
00c36014  3c02  CMP AL,0x2
00c36016  7d04  JGE 0x00c3601c
00c36018  8b4128  MOV EAX,dword ptr [ECX + 0x28]
00c3601b  c3  RET
00c3601c  8b41e8  MOV EAX,dword ptr [ECX + -0x18]
00c3601f  c3  RET

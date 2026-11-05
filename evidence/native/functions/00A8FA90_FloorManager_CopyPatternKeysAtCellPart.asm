# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: FloorManager_CopyPatternKeysAtCellPart
; Owned ranges: [[00a8fa90, 00a8faaf]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. Physical ECX floor manager plus packed cell-part pointer and64-byte output pointer stack slots, RET8; no returnvalue contract. Preserve owner inESI, queue outputpointer on stack, callA8D1C0 with cell-part pointer, restore ownerECX and PUSH EAX as cellID intoA8EE40. Its first MOVZX consumes only low16bits of that ID, so inferred ushort adapter agrees without claiming upperEAX is normalized. A8EE40 selects default/reverse-map/nullquad and copies16DWORDs. GroundAD0E20 and FloorAD0EE0 call this exact wrapper. Grid indexing/part-mask selection insideA8D1C0 remains a separate producer contract; no new wire-layout guess. Complete32ownedbytes/13instructions; current ABI/types/bytes unchanged.

00a8fa90  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a8fa94  56  PUSH ESI
00a8fa95  8bf1  MOV ESI,ECX
00a8fa97  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00a8fa9b  50  PUSH EAX
00a8fa9c  51  PUSH ECX
00a8fa9d  8bce  MOV ECX,ESI
00a8fa9f  e81cd7ffff  CALL 0x00a8d1c0
00a8faa4  8bce  MOV ECX,ESI
00a8faa6  50  PUSH EAX
00a8faa7  e894f3ffff  CALL 0x00a8ee40
00a8faac  5e  POP ESI
00a8faad  c20800  RET 0x8

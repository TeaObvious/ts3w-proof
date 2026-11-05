# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: WallProduct_ExistsInCatalog
; Owned ranges: [[00c5b640, 00c5b658]]
; Actual entry PLATE: PC1.67 complete9instructions/25ownedbytes. One stackDWORD product-key pointer, cdecl/plainRET, no incoming ECX receiver. Loads catalog global011EE034 and callsC8FA20 with default-enabled argument1. NEG/SBB/NEG normalizes returned pointer presence into fullEAX0or1. Used by B471C0 to select all6graphs on missing product; this differs from testing only a caller product-type enum. No new catalog parser or lookup implementation, ABI/types unchanged.

00c5b640  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c5b644  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c5b64a  6a01  PUSH 0x1
00c5b64c  50  PUSH EAX
00c5b64d  e8ce430300  CALL 0x00c8fa20
00c5b652  f7d8  NEG EAX
00c5b654  1bc0  SBB EAX,EAX
00c5b656  f7d8  NEG EAX
00c5b658  c3  RET

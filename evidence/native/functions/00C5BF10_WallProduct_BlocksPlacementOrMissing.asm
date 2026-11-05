# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: WallProduct_BlocksPlacementOrMissing
; Owned ranges: [[00c5bf10, 00c5bf34]]
; Actual entry PLATE: PC1.67 complete13instructions/37ownedbytes. One stackDWORD product-key pointer, cdecl/plainRET. CatalogC8FA20 uses default-enabled1. Missing returnsAL1; found reads rawDWORD+90, logicalSHR8 then AND AL1, testing partition flag100hex. Present upperEAX retains shifted flag bits and is not a full-width Boolean; B471C0 consumes onlyTEST AL. Graph consumer dispatches section to owner+5C(slot2). No collision/rendering visibility inference; existing stored types preserved.

00c5bf10  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c5bf14  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c5bf1a  6a01  PUSH 0x1
00c5bf1c  50  PUSH EAX
00c5bf1d  e8fe3a0300  CALL 0x00c8fa20
00c5bf22  85c0  TEST EAX,EAX
00c5bf24  740c  JZ 0x00c5bf32
00c5bf26  8b8090000000  MOV EAX,dword ptr [EAX + 0x90]
00c5bf2c  c1e808  SHR EAX,0x8
00c5bf2f  2401  AND AL,0x1
00c5bf31  c3  RET
00c5bf32  b001  MOV AL,0x1
00c5bf34  c3  RET

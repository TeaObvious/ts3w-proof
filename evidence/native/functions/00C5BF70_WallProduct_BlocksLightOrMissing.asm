# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: WallProduct_BlocksLightOrMissing
; Owned ranges: [[00c5bf70, 00c5bf94]]
; Actual entry PLATE: PC1.67 complete13instructions/37ownedbytes. One stackDWORD product-key pointer, cdecl/plainRET. CatalogC8FA20 uses default-enabled1. Missing returnsAL1; found reads rawDWORD+90, logicalSHR10 then AND AL1, testing partition flag400hex. Present upperEAX retains shifted flag bits and is not a full-width Boolean; B471C0 consumes onlyTEST AL. Graph consumer dispatches section to owner+54(slot0). Distinct from the BearsLoad200 and BlocksPlacement100 flags; existing stored types preserved.

00c5bf70  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c5bf74  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c5bf7a  6a01  PUSH 0x1
00c5bf7c  50  PUSH EAX
00c5bf7d  e89e3a0300  CALL 0x00c8fa20
00c5bf82  85c0  TEST EAX,EAX
00c5bf84  740c  JZ 0x00c5bf92
00c5bf86  8b8090000000  MOV EAX,dword ptr [EAX + 0x90]
00c5bf8c  c1e80a  SHR EAX,0xa
00c5bf8f  2401  AND AL,0x1
00c5bf91  c3  RET
00c5bf92  b001  MOV AL,0x1
00c5bf94  c3  RET

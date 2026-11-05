# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00c62810, 00c62844]]
Actual pseudocode: 00C62810_WorldObjects_FindLotByGuid.c
; Actual plate: Analyst note (PC1.67 supplied lot identity/import counterpart): Analyst typed-lot role from concrete AD4180 consumer and virtual type1 gate, not recovered C++ name. ECX manager plus GUIDlow/GUIDhigh/optional visit-counter pointer, RET0C; EAX borrowed object/null. Call C60740, require nonnull and virtual+40 result exactly1; otherwise return null. This full exact-identity/type admission is separate from current preview/resource-signature similarity. Concrete virtual implementations and full object model remain unproven by this adapter.

00c62810  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c62814  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c62818  56  PUSH ESI
00c62819  50  PUSH EAX
00c6281a  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c6281e  52  PUSH EDX
00c6281f  50  PUSH EAX
00c62820  e81bdfffff  CALL 0x00c60740
00c62825  8bf0  MOV ESI,EAX
00c62827  85f6  TEST ESI,ESI
00c62829  7414  JZ 0x00c6283f
00c6282b  8b16  MOV EDX,dword ptr [ESI]
00c6282d  8b4240  MOV EAX,dword ptr [EDX + 0x40]
00c62830  8bce  MOV ECX,ESI
00c62832  ffd0  CALL EAX
00c62834  83f801  CMP EAX,0x1
00c62837  7506  JNZ 0x00c6283f
00c62839  8bc6  MOV EAX,ESI
00c6283b  5e  POP ESI
00c6283c  c20c00  RET 0xc
00c6283f  33c0  XOR EAX,EAX
00c62841  5e  POP ESI
00c62842  c20c00  RET 0xc

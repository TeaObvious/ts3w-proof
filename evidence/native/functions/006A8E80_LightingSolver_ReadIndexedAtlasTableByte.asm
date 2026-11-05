# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LightingSolver_ReadIndexedAtlasTableByte
; Owned ranges: [[006a8e80, 006a8e89]]
; Actual entry PLATE: Static PC1.67: ECX owner input, plain RET. Reads DWORD index at owner+8 then byte at FF4720+index into AL. The high24 EAX bits retain the index; no full-EAX Boolean normalization, bounds check, table-content claim, allocator initialization or child call. Analysis ABI/return metadata remains unchanged.

006a8e80  8b4108  MOV EAX,dword ptr [ECX + 0x8]
006a8e83  8a802047ff00  MOV AL,byte ptr [EAX + 0xff4720]
006a8e89  c3  RET

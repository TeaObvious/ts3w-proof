# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: FloorAtlas_ResetWrappedSlotCounters
; Owned ranges: [[006a90c0, 006a90c8]]
; Actual entry PLATE: Static PC1.67: ECX wrapper, plain RET. Clears DWORD wrapper+8 then+4 only, corresponding to y/x counters in the selected wrapper+4 allocator. Does not write allocator offsets, limits or strides. No stack argument, child call, capacity check or semantic return contract inferred; analysis ABI metadata unchanged.

006a90c0  33c0  XOR EAX,EAX
006a90c2  894108  MOV dword ptr [ECX + 0x8],EAX
006a90c5  894104  MOV dword ptr [ECX + 0x4],EAX
006a90c8  c3  RET

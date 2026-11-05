# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00aafef0, 00aafef6]]
Actual pseudocode: 00AAFEF0_Lot_GetDetailRequested.c
; Actual plate: Analyst: PC 1.67 map/lot detail contract. Returns AL=lot+c1, the requested detail byte written before remote work is submitted; this is not a completed-residency predicate.

00aafef0  8a81c1000000  MOV AL,byte ptr [ECX + 0xc1]
00aafef6  c3  RET

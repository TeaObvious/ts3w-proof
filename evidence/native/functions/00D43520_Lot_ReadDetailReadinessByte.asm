# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00d43520, 00d43526]]
Actual pseudocode: 00D43520_Lot_ReadDetailReadinessByte.c
; Actual plate: Analyst: PC 1.67 map/lot detail contract. Returns AL=this+c2. The selected WorldManager reader passes a lot and treats zero as pending when detail is requested. This tiny offset getter has other class/virtual consumers too; its name describes the reviewed lot context, not a universal type identity or full residency proof.

00d43520  8a81c2000000  MOV AL,byte ptr [ECX + 0xc2]
00d43526  c3  RET

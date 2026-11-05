# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: CatalogProduct_SetStatusByte
Paired actual annotated Ghidra pseudocode: 00C92FB0_CatalogProduct_SetStatusByte.c
Owned ranges: [[00c92fb0, 00c92fb9]]
Envelope bytes=10

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00c92fb0  8a442404  MOV AL,byte ptr [ESP + 0x4]
00c92fb4  884164  MOV byte ptr [ECX + 0x64],AL
00c92fb7  c20400  RET 0x4
Owned instructions=3 owned bytes=10 nonowned bytes=0

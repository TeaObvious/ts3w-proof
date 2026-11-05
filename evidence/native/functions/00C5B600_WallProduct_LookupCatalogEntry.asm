# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c5b600 (WallProduct_LookupCatalogEntry)
Paired actual Ghidra pseudocode: 00C5B600_WallProduct_LookupCatalogEntry.c
Envelope [0x00c5b600,0x00c5b613); 19 bytes; exact owned ranges: [0x00c5b600,0x00c5b613)
Owned: 19 original bytes / 6 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c5b600 <original>:
  c5b600:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  c5b604:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  c5b60a:	6a 01                                           	push   0x1
  c5b60c:	50                                              	push   eax
  c5b60d:	e8 0e 44 03 00                                  	call   0xc8fa20
  c5b612:	c3                                              	ret

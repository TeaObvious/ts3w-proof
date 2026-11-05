# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00588bd0 (ByteFlag011CEBC4_WriteLowByte)
Paired actual Ghidra pseudocode: 00588BD0_ByteFlag011CEBC4_WriteLowByte.c
Envelope [0x00588bd0,0x00588bda); 10 bytes; exact owned ranges: [0x00588bd0,0x00588bda)
Owned: 10 original bytes / 3 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00588bd0 <original>:
  588bd0:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
  588bd4:	a2 c4 eb 1c 01       	mov    ds:0x11cebc4,al
  588bd9:	c3                   	ret

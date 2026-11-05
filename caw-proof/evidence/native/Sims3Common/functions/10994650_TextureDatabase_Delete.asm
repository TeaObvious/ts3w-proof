# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994650 (TextureDatabase_Delete)
Paired Ghidra pseudocode: 10994650_TextureDatabase_Delete.c
Window: [0x10994650, 0x10994660) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994650: 8b 4c 24 04 8d 44 24 08 50 e8 82 ff ff ff c3 cc

LINEAR DISASSEMBLY
10994650 <.text+0x993650>:
10994650:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10994654:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10994658:	50                                              	push   eax
10994659:	e8 82 ff ff ff                                  	call   0x109945e0
1099465e:	c3                                              	ret
1099465f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992670 (Sims3PackFile_IsThumbnail)
Paired Ghidra pseudocode: 10992670_Sims3PackFile_IsThumbnail.c
Window: [0x10992670, 0x10992690) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992670: 8b 44 24 08 8b 4c 24 04 50 e8 e2 1b e2 ff 85 c0
10992680: 74 0b 83 b8 5c 08 00 00 00 0f 95 c0 c3 32 c0 c3

LINEAR DISASSEMBLY
10992670 <.text+0x991670>:
10992670:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10992674:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10992678:	50                                              	push   eax
10992679:	e8 e2 1b e2 ff                                  	call   0x107b4260
1099267e:	85 c0                                           	test   eax,eax
10992680:	74 0b                                           	je     0x1099268d
10992682:	83 b8 5c 08 00 00 00                            	cmp    DWORD PTR [eax+0x85c],0x0
10992689:	0f 95 c0                                        	setne  al
1099268c:	c3                                              	ret
1099268d:	32 c0                                           	xor    al,al
1099268f:	c3                                              	ret

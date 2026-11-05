# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a8880 (CASUtils_TextSearchCreateImpl)
Paired Ghidra pseudocode: 103A8880_CASUtils_TextSearchCreateImpl.c
Window: [0x103a8880, 0x103a88b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a88b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a8880: 6a 00 6a 00 6a 00 6a 00 68 64 a9 af 10 68 90 00
103a8890: 00 00 e8 19 06 57 00 83 c4 18 85 c0 74 0a 8b c8
103a88a0: e8 8b fd ff ff 8b 00 c3 33 c0 8b 00 c3 cc cc cc

LINEAR DISASSEMBLY
103a8880 <.text+0x3a7880>:
103a8880:	6a 00                                           	push   0x0
103a8882:	6a 00                                           	push   0x0
103a8884:	6a 00                                           	push   0x0
103a8886:	6a 00                                           	push   0x0
103a8888:	68 64 a9 af 10                                  	push   0x10afa964
103a888d:	68 90 00 00 00                                  	push   0x90
103a8892:	e8 19 06 57 00                                  	call   0x10918eb0
103a8897:	83 c4 18                                        	add    esp,0x18
103a889a:	85 c0                                           	test   eax,eax
103a889c:	74 0a                                           	je     0x103a88a8
103a889e:	8b c8                                           	mov    ecx,eax
103a88a0:	e8 8b fd ff ff                                  	call   0x103a8630
103a88a5:	8b 00                                           	mov    eax,DWORD PTR [eax]
103a88a7:	c3                                              	ret
103a88a8:	33 c0                                           	xor    eax,eax
103a88aa:	8b 00                                           	mov    eax,DWORD PTR [eax]
103a88ac:	c3                                              	ret
103a88ad:	cc                                              	int3
103a88ae:	cc                                              	int3
103a88af:	cc                                              	int3

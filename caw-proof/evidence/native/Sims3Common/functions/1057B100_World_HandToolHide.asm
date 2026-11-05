# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b100 (World_HandToolHide)
Paired Ghidra pseudocode: 1057B100_World_HandToolHide.c
Window: [0x1057b100, 0x1057b120) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b100: e8 2b 00 fe ff 8b 10 6a 00 6a 00 8b c8 8b 42 18
1057b110: 68 c3 10 69 04 ff d0 b0 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b100 <.text+0x57a100>:
1057b100:	e8 2b 00 fe ff                                  	call   0x1055b130
1057b105:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057b107:	6a 00                                           	push   0x0
1057b109:	6a 00                                           	push   0x0
1057b10b:	8b c8                                           	mov    ecx,eax
1057b10d:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1057b110:	68 c3 10 69 04                                  	push   0x46910c3
1057b115:	ff d0                                           	call   eax
1057b117:	b0 01                                           	mov    al,0x1
1057b119:	c3                                              	ret
1057b11a:	cc                                              	int3
1057b11b:	cc                                              	int3
1057b11c:	cc                                              	int3
1057b11d:	cc                                              	int3
1057b11e:	cc                                              	int3
1057b11f:	cc                                              	int3

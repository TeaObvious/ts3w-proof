# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b330 (World_ObjectDesigner_GetCurrentObjectImpl)
Paired Ghidra pseudocode: 1057B330_World_ObjectDesigner_GetCurrentObjectImpl.c
Window: [0x1057b330, 0x1057b340) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b330: e8 2b d1 b7 ff 8b c8 8b 41 70 8b 51 74 c3 cc cc

LINEAR DISASSEMBLY
1057b330 <.text+0x57a330>:
1057b330:	e8 2b d1 b7 ff                                  	call   0x100f8460
1057b335:	8b c8                                           	mov    ecx,eax
1057b337:	8b 41 70                                        	mov    eax,DWORD PTR [ecx+0x70]
1057b33a:	8b 51 74                                        	mov    edx,DWORD PTR [ecx+0x74]
1057b33d:	c3                                              	ret
1057b33e:	cc                                              	int3
1057b33f:	cc                                              	int3

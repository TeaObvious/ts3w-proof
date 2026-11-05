# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057cdd0 (World_ForceMoonCycleImpl)
Paired Ghidra pseudocode: 1057CDD0_World_ForceMoonCycleImpl.c
Window: [0x1057cdd0, 0x1057cdf0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057cdf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057cdd0: a1 c4 00 c7 10 85 c0 74 11 8b 48 64 85 c9 74 0a
1057cde0: 8b 44 24 04 50 e8 f6 1b c6 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1057cdd0 <.text+0x57bdd0>:
1057cdd0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1057cdd5:	85 c0                                           	test   eax,eax
1057cdd7:	74 11                                           	je     0x1057cdea
1057cdd9:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1057cddc:	85 c9                                           	test   ecx,ecx
1057cdde:	74 0a                                           	je     0x1057cdea
1057cde0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057cde4:	50                                              	push   eax
1057cde5:	e8 f6 1b c6 ff                                  	call   0x101de9e0
1057cdea:	c3                                              	ret
1057cdeb:	cc                                              	int3
1057cdec:	cc                                              	int3
1057cded:	cc                                              	int3
1057cdee:	cc                                              	int3
1057cdef:	cc                                              	int3

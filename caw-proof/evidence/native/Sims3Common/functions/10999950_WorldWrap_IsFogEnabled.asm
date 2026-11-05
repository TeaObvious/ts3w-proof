# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999950 (WorldWrap_IsFogEnabled)
Paired Ghidra pseudocode: 10999950_WorldWrap_IsFogEnabled.c
Window: [0x10999950, 0x10999970) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999950: 8b 44 24 04 85 c0 74 15 8b 40 64 85 c0 74 0e 33
10999960: c9 38 88 82 09 00 00 0f 95 c1 8b c1 c3 33 c0 c3

LINEAR DISASSEMBLY
10999950 <.text+0x998950>:
10999950:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10999954:	85 c0                                           	test   eax,eax
10999956:	74 15                                           	je     0x1099996d
10999958:	8b 40 64                                        	mov    eax,DWORD PTR [eax+0x64]
1099995b:	85 c0                                           	test   eax,eax
1099995d:	74 0e                                           	je     0x1099996d
1099995f:	33 c9                                           	xor    ecx,ecx
10999961:	38 88 82 09 00 00                               	cmp    BYTE PTR [eax+0x982],cl
10999967:	0f 95 c1                                        	setne  cl
1099996a:	8b c1                                           	mov    eax,ecx
1099996c:	c3                                              	ret
1099996d:	33 c0                                           	xor    eax,eax
1099996f:	c3                                              	ret

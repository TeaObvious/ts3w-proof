# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a7b0 (Query_GetObjects)
Paired Ghidra pseudocode: 1053A7B0_Query_GetObjects.c
Window: [0x1053a7b0, 0x1053a7d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a7d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a7b0: e8 6b 09 02 00 8b 4c 24 04 8b 10 8b 92 c0 00 00
1053a7c0: 00 6a 00 6a 00 51 8b c8 ff d2 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1053a7b0 <.text+0x5397b0>:
1053a7b0:	e8 6b 09 02 00                                  	call   0x1055b120
1053a7b5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1053a7b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053a7bb:	8b 92 c0 00 00 00                               	mov    edx,DWORD PTR [edx+0xc0]
1053a7c1:	6a 00                                           	push   0x0
1053a7c3:	6a 00                                           	push   0x0
1053a7c5:	51                                              	push   ecx
1053a7c6:	8b c8                                           	mov    ecx,eax
1053a7c8:	ff d2                                           	call   edx
1053a7ca:	c3                                              	ret
1053a7cb:	cc                                              	int3
1053a7cc:	cc                                              	int3
1053a7cd:	cc                                              	int3
1053a7ce:	cc                                              	int3
1053a7cf:	cc                                              	int3

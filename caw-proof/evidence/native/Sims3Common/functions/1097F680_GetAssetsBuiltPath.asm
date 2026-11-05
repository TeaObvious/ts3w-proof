# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f680 (GetAssetsBuiltPath)
Paired Ghidra pseudocode: 1097F680_GetAssetsBuiltPath.c
Window: [0x1097f680, 0x1097f690) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f680: b9 c0 26 c7 10 e8 56 f9 a0 ff 8b 00 c3 cc cc cc

LINEAR DISASSEMBLY
1097f680 <.text+0x97e680>:
1097f680:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097f685:	e8 56 f9 a0 ff                                  	call   0x1038efe0
1097f68a:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f68c:	c3                                              	ret
1097f68d:	cc                                              	int3
1097f68e:	cc                                              	int3
1097f68f:	cc                                              	int3

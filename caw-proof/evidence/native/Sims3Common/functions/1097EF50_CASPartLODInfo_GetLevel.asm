# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ef50 (CASPartLODInfo_GetLevel)
Paired Ghidra pseudocode: 1097EF50_CASPartLODInfo_GetLevel.c
Window: [0x1097ef50, 0x1097ef60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ef60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ef50: 8b 44 24 04 8a 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ef50 <.text+0x97df50>:
1097ef50:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097ef54:	8a 00                                           	mov    al,BYTE PTR [eax]
1097ef56:	c3                                              	ret
1097ef57:	cc                                              	int3
1097ef58:	cc                                              	int3
1097ef59:	cc                                              	int3
1097ef5a:	cc                                              	int3
1097ef5b:	cc                                              	int3
1097ef5c:	cc                                              	int3
1097ef5d:	cc                                              	int3
1097ef5e:	cc                                              	int3
1097ef5f:	cc                                              	int3

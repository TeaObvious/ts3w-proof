# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ef60 (CASPartLODAsset_GetCastShadow)
Paired Ghidra pseudocode: 1097EF60_CASPartLODAsset_GetCastShadow.c
Window: [0x1097ef60, 0x1097ef70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ef70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ef60: 8b 44 24 04 8b 40 08 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ef60 <.text+0x97df60>:
1097ef60:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097ef64:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
1097ef67:	c3                                              	ret
1097ef68:	cc                                              	int3
1097ef69:	cc                                              	int3
1097ef6a:	cc                                              	int3
1097ef6b:	cc                                              	int3
1097ef6c:	cc                                              	int3
1097ef6d:	cc                                              	int3
1097ef6e:	cc                                              	int3
1097ef6f:	cc                                              	int3

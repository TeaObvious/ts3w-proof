# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d740 (App3D_SetGameTimeScale)
Paired Ghidra pseudocode: 1097D740_App3D_SetGameTimeScale.c
Window: [0x1097d740, 0x1097d760) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d740: d9 44 24 04 51 b9 38 26 c7 10 d9 1c 24 e8 2e 0c
1097d750: a1 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d740 <.text+0x97c740>:
1097d740:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1097d744:	51                                              	push   ecx
1097d745:	b9 38 26 c7 10                                  	mov    ecx,0x10c72638
1097d74a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097d74d:	e8 2e 0c a1 ff                                  	call   0x1038e380
1097d752:	c3                                              	ret
1097d753:	cc                                              	int3
1097d754:	cc                                              	int3
1097d755:	cc                                              	int3
1097d756:	cc                                              	int3
1097d757:	cc                                              	int3
1097d758:	cc                                              	int3
1097d759:	cc                                              	int3
1097d75a:	cc                                              	int3
1097d75b:	cc                                              	int3
1097d75c:	cc                                              	int3
1097d75d:	cc                                              	int3
1097d75e:	cc                                              	int3
1097d75f:	cc                                              	int3

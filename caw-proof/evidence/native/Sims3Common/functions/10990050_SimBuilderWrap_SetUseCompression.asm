# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990050 (SimBuilderWrap_SetUseCompression)
Paired Ghidra pseudocode: 10990050_SimBuilderWrap_SetUseCompression.c
Window: [0x10990050, 0x10990080) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990050: 8b 44 24 04 8a 4c 24 08 3a 48 69 74 15 81 48 1c
10990060: 00 4f 00 00 88 48 69 b9 1f 00 00 00 89 48 14 89
10990070: 48 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990050 <.text+0x98f050>:
10990050:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990054:	8a 4c 24 08                                     	mov    cl,BYTE PTR [esp+0x8]
10990058:	3a 48 69                                        	cmp    cl,BYTE PTR [eax+0x69]
1099005b:	74 15                                           	je     0x10990072
1099005d:	81 48 1c 00 4f 00 00                            	or     DWORD PTR [eax+0x1c],0x4f00
10990064:	88 48 69                                        	mov    BYTE PTR [eax+0x69],cl
10990067:	b9 1f 00 00 00                                  	mov    ecx,0x1f
1099006c:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
1099006f:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
10990072:	c3                                              	ret
10990073:	cc                                              	int3
10990074:	cc                                              	int3
10990075:	cc                                              	int3
10990076:	cc                                              	int3
10990077:	cc                                              	int3
10990078:	cc                                              	int3
10990079:	cc                                              	int3
1099007a:	cc                                              	int3
1099007b:	cc                                              	int3
1099007c:	cc                                              	int3
1099007d:	cc                                              	int3
1099007e:	cc                                              	int3
1099007f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f040 (CASPartLODInfo_GetNumAssets)
Paired Ghidra pseudocode: 1097F040_CASPartLODInfo_GetNumAssets.c
Window: [0x1097f040, 0x1097f060) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f040: 8b 44 24 04 8b 48 0c 2b 48 08 b8 93 24 49 92 f7
1097f050: e9 03 d1 c1 fa 04 8b c2 c1 e8 1f 03 c2 c3 cc cc

LINEAR DISASSEMBLY
1097f040 <.text+0x97e040>:
1097f040:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f044:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
1097f047:	2b 48 08                                        	sub    ecx,DWORD PTR [eax+0x8]
1097f04a:	b8 93 24 49 92                                  	mov    eax,0x92492493
1097f04f:	f7 e9                                           	imul   ecx
1097f051:	03 d1                                           	add    edx,ecx
1097f053:	c1 fa 04                                        	sar    edx,0x4
1097f056:	8b c2                                           	mov    eax,edx
1097f058:	c1 e8 1f                                        	shr    eax,0x1f
1097f05b:	03 c2                                           	add    eax,edx
1097f05d:	c3                                              	ret
1097f05e:	cc                                              	int3
1097f05f:	cc                                              	int3

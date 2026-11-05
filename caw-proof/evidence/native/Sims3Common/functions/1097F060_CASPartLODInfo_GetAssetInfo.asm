# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f060 (CASPartLODInfo_GetAssetInfo)
Paired Ghidra pseudocode: 1097F060_CASPartLODInfo_GetAssetInfo.c
Window: [0x1097f060, 0x1097f080) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f060: 8b 44 24 08 8b 54 24 04 8d 0c c5 00 00 00 00 2b
1097f070: c8 8b 42 08 8d 04 88 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f060 <.text+0x97e060>:
1097f060:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f064:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1097f068:	8d 0c c5 00 00 00 00                            	lea    ecx,[eax*8+0x0]
1097f06f:	2b c8                                           	sub    ecx,eax
1097f071:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1097f074:	8d 04 88                                        	lea    eax,[eax+ecx*4]
1097f077:	c3                                              	ret
1097f078:	cc                                              	int3
1097f079:	cc                                              	int3
1097f07a:	cc                                              	int3
1097f07b:	cc                                              	int3
1097f07c:	cc                                              	int3
1097f07d:	cc                                              	int3
1097f07e:	cc                                              	int3
1097f07f:	cc                                              	int3

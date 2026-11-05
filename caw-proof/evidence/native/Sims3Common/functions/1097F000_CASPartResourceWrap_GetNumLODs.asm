# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f000 (CASPartResourceWrap_GetNumLODs)
Paired Ghidra pseudocode: 1097F000_CASPartResourceWrap_GetNumLODs.c
Window: [0x1097f000, 0x1097f020) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f000: 8b 44 24 04 8b 48 70 2b 48 6c b8 ab aa aa 2a f7
1097f010: e9 c1 fa 02 8b c2 c1 e8 1f 03 c2 c3 cc cc cc cc

LINEAR DISASSEMBLY
1097f000 <.text+0x97e000>:
1097f000:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f004:	8b 48 70                                        	mov    ecx,DWORD PTR [eax+0x70]
1097f007:	2b 48 6c                                        	sub    ecx,DWORD PTR [eax+0x6c]
1097f00a:	b8 ab aa aa 2a                                  	mov    eax,0x2aaaaaab
1097f00f:	f7 e9                                           	imul   ecx
1097f011:	c1 fa 02                                        	sar    edx,0x2
1097f014:	8b c2                                           	mov    eax,edx
1097f016:	c1 e8 1f                                        	shr    eax,0x1f
1097f019:	03 c2                                           	add    eax,edx
1097f01b:	c3                                              	ret
1097f01c:	cc                                              	int3
1097f01d:	cc                                              	int3
1097f01e:	cc                                              	int3
1097f01f:	cc                                              	int3

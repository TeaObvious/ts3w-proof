# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f020 (CASPartResourceWrap_GetLODInfo)
Paired Ghidra pseudocode: 1097F020_CASPartResourceWrap_GetLODInfo.c
Window: [0x1097f020, 0x1097f040) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f020: 8b 44 24 08 8b 4c 24 04 8b 51 6c 8d 04 40 8d 04
1097f030: c2 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f020 <.text+0x97e020>:
1097f020:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f024:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f028:	8b 51 6c                                        	mov    edx,DWORD PTR [ecx+0x6c]
1097f02b:	8d 04 40                                        	lea    eax,[eax+eax*2]
1097f02e:	8d 04 c2                                        	lea    eax,[edx+eax*8]
1097f031:	c3                                              	ret
1097f032:	cc                                              	int3
1097f033:	cc                                              	int3
1097f034:	cc                                              	int3
1097f035:	cc                                              	int3
1097f036:	cc                                              	int3
1097f037:	cc                                              	int3
1097f038:	cc                                              	int3
1097f039:	cc                                              	int3
1097f03a:	cc                                              	int3
1097f03b:	cc                                              	int3
1097f03c:	cc                                              	int3
1097f03d:	cc                                              	int3
1097f03e:	cc                                              	int3
1097f03f:	cc                                              	int3

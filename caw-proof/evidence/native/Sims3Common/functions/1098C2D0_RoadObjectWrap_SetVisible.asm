# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c2d0 (RoadObjectWrap_SetVisible)
Paired Ghidra pseudocode: 1098C2D0_RoadObjectWrap_SetVisible.c
Window: [0x1098c2d0, 0x1098c2f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c2f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c2d0: 83 7c 24 08 00 8b 4c 24 04 8b 01 8b 40 10 0f 95
1098c2e0: c2 52 ff d0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c2d0 <.text+0x98b2d0>:
1098c2d0:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098c2d5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c2d9:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c2db:	8b 40 10                                        	mov    eax,DWORD PTR [eax+0x10]
1098c2de:	0f 95 c2                                        	setne  dl
1098c2e1:	52                                              	push   edx
1098c2e2:	ff d0                                           	call   eax
1098c2e4:	c3                                              	ret
1098c2e5:	cc                                              	int3
1098c2e6:	cc                                              	int3
1098c2e7:	cc                                              	int3
1098c2e8:	cc                                              	int3
1098c2e9:	cc                                              	int3
1098c2ea:	cc                                              	int3
1098c2eb:	cc                                              	int3
1098c2ec:	cc                                              	int3
1098c2ed:	cc                                              	int3
1098c2ee:	cc                                              	int3
1098c2ef:	cc                                              	int3

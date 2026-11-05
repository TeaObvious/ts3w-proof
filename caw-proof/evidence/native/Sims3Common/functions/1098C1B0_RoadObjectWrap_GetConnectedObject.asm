# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c1b0 (RoadObjectWrap_GetConnectedObject)
Paired Ghidra pseudocode: 1098C1B0_RoadObjectWrap_GetConnectedObject.c
Window: [0x1098c1b0, 0x1098c1f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c1f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c1b0: 8b 4c 24 04 8b 01 8b 54 24 08 8b 40 2c 52 ff d0
1098c1c0: 85 c0 8b 4c 24 10 89 01 74 15 8b 10 8b c8 8b 42
1098c1d0: 0c ff d0 8b 4c 24 0c 89 01 b8 01 00 00 00 c3 8b
1098c1e0: 54 24 0c c7 02 00 00 00 00 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
1098c1b0 <.text+0x98b1b0>:
1098c1b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c1b4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c1b6:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098c1ba:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
1098c1bd:	52                                              	push   edx
1098c1be:	ff d0                                           	call   eax
1098c1c0:	85 c0                                           	test   eax,eax
1098c1c2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098c1c6:	89 01                                           	mov    DWORD PTR [ecx],eax
1098c1c8:	74 15                                           	je     0x1098c1df
1098c1ca:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098c1cc:	8b c8                                           	mov    ecx,eax
1098c1ce:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1098c1d1:	ff d0                                           	call   eax
1098c1d3:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098c1d7:	89 01                                           	mov    DWORD PTR [ecx],eax
1098c1d9:	b8 01 00 00 00                                  	mov    eax,0x1
1098c1de:	c3                                              	ret
1098c1df:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098c1e3:	c7 02 00 00 00 00                               	mov    DWORD PTR [edx],0x0
1098c1e9:	33 c0                                           	xor    eax,eax
1098c1eb:	c3                                              	ret
1098c1ec:	cc                                              	int3
1098c1ed:	cc                                              	int3
1098c1ee:	cc                                              	int3
1098c1ef:	cc                                              	int3

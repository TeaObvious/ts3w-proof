# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109865f0 (LotWrap_GetLotType)
Paired Ghidra pseudocode: 109865F0_LotWrap_GetLotType.c
Window: [0x109865f0, 0x10986620) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109865f0: 8b 4c 24 04 85 c9 8b 44 24 08 c7 00 00 00 00 00
10986600: 74 0e 8b 89 08 04 00 00 89 08 b8 01 00 00 00 c3
10986610: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109865f0 <.text+0x9855f0>:
109865f0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109865f4:	85 c9                                           	test   ecx,ecx
109865f6:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109865fa:	c7 00 00 00 00 00                               	mov    DWORD PTR [eax],0x0
10986600:	74 0e                                           	je     0x10986610
10986602:	8b 89 08 04 00 00                               	mov    ecx,DWORD PTR [ecx+0x408]
10986608:	89 08                                           	mov    DWORD PTR [eax],ecx
1098660a:	b8 01 00 00 00                                  	mov    eax,0x1
1098660f:	c3                                              	ret
10986610:	33 c0                                           	xor    eax,eax
10986612:	c3                                              	ret
10986613:	cc                                              	int3
10986614:	cc                                              	int3
10986615:	cc                                              	int3
10986616:	cc                                              	int3
10986617:	cc                                              	int3
10986618:	cc                                              	int3
10986619:	cc                                              	int3
1098661a:	cc                                              	int3
1098661b:	cc                                              	int3
1098661c:	cc                                              	int3
1098661d:	cc                                              	int3
1098661e:	cc                                              	int3
1098661f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b630 (World_GetLotIsPartiallyInSea)
Paired Ghidra pseudocode: 1057B630_World_GetLotIsPartiallyInSea.c
Window: [0x1057b630, 0x1057b660) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b630: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
1057b640: 24 04 6a 00 50 52 e8 c5 b9 cb ff 85 c0 74 07 8a
1057b650: 80 b0 04 00 00 c3 b0 01 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b630 <.text+0x57a630>:
1057b630:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b636:	85 c9                                           	test   ecx,ecx
1057b638:	74 1c                                           	je     0x1057b656
1057b63a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b63e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b642:	6a 00                                           	push   0x0
1057b644:	50                                              	push   eax
1057b645:	52                                              	push   edx
1057b646:	e8 c5 b9 cb ff                                  	call   0x10237010
1057b64b:	85 c0                                           	test   eax,eax
1057b64d:	74 07                                           	je     0x1057b656
1057b64f:	8a 80 b0 04 00 00                               	mov    al,BYTE PTR [eax+0x4b0]
1057b655:	c3                                              	ret
1057b656:	b0 01                                           	mov    al,0x1
1057b658:	c3                                              	ret
1057b659:	cc                                              	int3
1057b65a:	cc                                              	int3
1057b65b:	cc                                              	int3
1057b65c:	cc                                              	int3
1057b65d:	cc                                              	int3
1057b65e:	cc                                              	int3
1057b65f:	cc                                              	int3

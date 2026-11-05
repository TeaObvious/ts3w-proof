# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577630 (World_SetDarkLotRendering)
Paired Ghidra pseudocode: 10577630_World_SetDarkLotRendering.c
Window: [0x10577630, 0x10577660) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577630: 8b 0d c4 00 c7 10 85 c9 74 1f 8b 44 24 08 8b 54
10577640: 24 04 6a 00 50 52 e8 c5 f9 cb ff 85 c0 74 0a 8a
10577650: 4c 24 0c 88 88 30 04 00 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577630 <.text+0x576630>:
10577630:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577636:	85 c9                                           	test   ecx,ecx
10577638:	74 1f                                           	je     0x10577659
1057763a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057763e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577642:	6a 00                                           	push   0x0
10577644:	50                                              	push   eax
10577645:	52                                              	push   edx
10577646:	e8 c5 f9 cb ff                                  	call   0x10237010
1057764b:	85 c0                                           	test   eax,eax
1057764d:	74 0a                                           	je     0x10577659
1057764f:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
10577653:	88 88 30 04 00 00                               	mov    BYTE PTR [eax+0x430],cl
10577659:	c3                                              	ret
1057765a:	cc                                              	int3
1057765b:	cc                                              	int3
1057765c:	cc                                              	int3
1057765d:	cc                                              	int3
1057765e:	cc                                              	int3
1057765f:	cc                                              	int3

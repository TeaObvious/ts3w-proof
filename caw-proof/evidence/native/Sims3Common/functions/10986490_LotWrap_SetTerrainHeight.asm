# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986490 (LotWrap_SetTerrainHeight)
Paired Ghidra pseudocode: 10986490_LotWrap_SetTerrainHeight.c
Window: [0x10986490, 0x109864c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109864c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986490: 8b 4c 24 04 85 c9 74 22 8b 44 24 10 d9 44 24 08
109864a0: 8b 54 24 0c 6a 01 6a 01 50 52 51 d9 1c 24 e8 7d
109864b0: 01 6f ff f6 d8 1b c0 f7 d8 c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
10986490 <.text+0x985490>:
10986490:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986494:	85 c9                                           	test   ecx,ecx
10986496:	74 22                                           	je     0x109864ba
10986498:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098649c:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
109864a0:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
109864a4:	6a 01                                           	push   0x1
109864a6:	6a 01                                           	push   0x1
109864a8:	50                                              	push   eax
109864a9:	52                                              	push   edx
109864aa:	51                                              	push   ecx
109864ab:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109864ae:	e8 7d 01 6f ff                                  	call   0x10076630
109864b3:	f6 d8                                           	neg    al
109864b5:	1b c0                                           	sbb    eax,eax
109864b7:	f7 d8                                           	neg    eax
109864b9:	c3                                              	ret
109864ba:	33 c0                                           	xor    eax,eax
109864bc:	c3                                              	ret
109864bd:	cc                                              	int3
109864be:	cc                                              	int3
109864bf:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579770 (World_SetLotBuildBuyEnabledFlag)
Paired Ghidra pseudocode: 10579770_World_SetLotBuildBuyEnabledFlag.c
Window: [0x10579770, 0x105797a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105797a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579770: 8b 0d c4 00 c7 10 85 c9 74 21 8b 44 24 08 8b 54
10579780: 24 04 6a 00 50 52 e8 85 d8 cb ff 85 c0 74 0c 8b
10579790: 4c 24 0c 51 8b c8 e8 45 d6 af ff c3 cc cc cc cc

LINEAR DISASSEMBLY
10579770 <.text+0x578770>:
10579770:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10579776:	85 c9                                           	test   ecx,ecx
10579778:	74 21                                           	je     0x1057979b
1057977a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057977e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10579782:	6a 00                                           	push   0x0
10579784:	50                                              	push   eax
10579785:	52                                              	push   edx
10579786:	e8 85 d8 cb ff                                  	call   0x10237010
1057978b:	85 c0                                           	test   eax,eax
1057978d:	74 0c                                           	je     0x1057979b
1057978f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10579793:	51                                              	push   ecx
10579794:	8b c8                                           	mov    ecx,eax
10579796:	e8 45 d6 af ff                                  	call   0x10076de0
1057979b:	c3                                              	ret
1057979c:	cc                                              	int3
1057979d:	cc                                              	int3
1057979e:	cc                                              	int3
1057979f:	cc                                              	int3

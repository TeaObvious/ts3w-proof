# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057f0e0 (World_ObjectSetNeverFade)
Paired Ghidra pseudocode: 1057F0E0_World_ObjectSetNeverFade.c
Window: [0x1057f0e0, 0x1057f120) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057f120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057f0e0: e8 bb b0 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
1057f0f0: 04 51 52 8b c8 e8 b6 ba 1a 00 85 c0 74 1e 8b 0d
1057f100: e8 da c8 10 51 8b c8 e8 94 7c 1a 00 85 c0 74 0c
1057f110: 8b 54 24 0c 52 8b c8 e8 34 17 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
1057f0e0 <.text+0x57e0e0>:
1057f0e0:	e8 bb b0 1a 00                                  	call   0x1072a1a0
1057f0e5:	85 c0                                           	test   eax,eax
1057f0e7:	74 33                                           	je     0x1057f11c
1057f0e9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057f0ed:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057f0f1:	51                                              	push   ecx
1057f0f2:	52                                              	push   edx
1057f0f3:	8b c8                                           	mov    ecx,eax
1057f0f5:	e8 b6 ba 1a 00                                  	call   0x1072abb0
1057f0fa:	85 c0                                           	test   eax,eax
1057f0fc:	74 1e                                           	je     0x1057f11c
1057f0fe:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
1057f104:	51                                              	push   ecx
1057f105:	8b c8                                           	mov    ecx,eax
1057f107:	e8 94 7c 1a 00                                  	call   0x10726da0
1057f10c:	85 c0                                           	test   eax,eax
1057f10e:	74 0c                                           	je     0x1057f11c
1057f110:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057f114:	52                                              	push   edx
1057f115:	8b c8                                           	mov    ecx,eax
1057f117:	e8 34 17 1d 00                                  	call   0x10750850
1057f11c:	c3                                              	ret
1057f11d:	cc                                              	int3
1057f11e:	cc                                              	int3
1057f11f:	cc                                              	int3

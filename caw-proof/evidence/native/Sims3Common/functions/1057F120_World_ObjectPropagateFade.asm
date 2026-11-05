# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057f120 (World_ObjectPropagateFade)
Paired Ghidra pseudocode: 1057F120_World_ObjectPropagateFade.c
Window: [0x1057f120, 0x1057f160) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057f160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057f120: e8 7b b0 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
1057f130: 04 51 52 8b c8 e8 76 ba 1a 00 85 c0 74 1e 8b 0d
1057f140: e8 da c8 10 51 8b c8 e8 54 7c 1a 00 85 c0 74 0c
1057f150: 8b 54 24 0c 52 8b c8 e8 a4 16 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
1057f120 <.text+0x57e120>:
1057f120:	e8 7b b0 1a 00                                  	call   0x1072a1a0
1057f125:	85 c0                                           	test   eax,eax
1057f127:	74 33                                           	je     0x1057f15c
1057f129:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057f12d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057f131:	51                                              	push   ecx
1057f132:	52                                              	push   edx
1057f133:	8b c8                                           	mov    ecx,eax
1057f135:	e8 76 ba 1a 00                                  	call   0x1072abb0
1057f13a:	85 c0                                           	test   eax,eax
1057f13c:	74 1e                                           	je     0x1057f15c
1057f13e:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
1057f144:	51                                              	push   ecx
1057f145:	8b c8                                           	mov    ecx,eax
1057f147:	e8 54 7c 1a 00                                  	call   0x10726da0
1057f14c:	85 c0                                           	test   eax,eax
1057f14e:	74 0c                                           	je     0x1057f15c
1057f150:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057f154:	52                                              	push   edx
1057f155:	8b c8                                           	mov    ecx,eax
1057f157:	e8 a4 16 1d 00                                  	call   0x10750800
1057f15c:	c3                                              	ret
1057f15d:	cc                                              	int3
1057f15e:	cc                                              	int3
1057f15f:	cc                                              	int3

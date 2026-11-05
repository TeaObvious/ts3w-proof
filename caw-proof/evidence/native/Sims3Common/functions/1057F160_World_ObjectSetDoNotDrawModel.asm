# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057f160 (World_ObjectSetDoNotDrawModel)
Paired Ghidra pseudocode: 1057F160_World_ObjectSetDoNotDrawModel.c
Window: [0x1057f160, 0x1057f1a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057f1a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057f160: e8 3b b0 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
1057f170: 04 51 52 8b c8 e8 36 ba 1a 00 85 c0 74 1e 8b 0d
1057f180: e8 da c8 10 51 8b c8 e8 14 7c 1a 00 85 c0 74 0c
1057f190: 8b 54 24 0c 52 8b c8 e8 f4 19 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
1057f160 <.text+0x57e160>:
1057f160:	e8 3b b0 1a 00                                  	call   0x1072a1a0
1057f165:	85 c0                                           	test   eax,eax
1057f167:	74 33                                           	je     0x1057f19c
1057f169:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057f16d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057f171:	51                                              	push   ecx
1057f172:	52                                              	push   edx
1057f173:	8b c8                                           	mov    ecx,eax
1057f175:	e8 36 ba 1a 00                                  	call   0x1072abb0
1057f17a:	85 c0                                           	test   eax,eax
1057f17c:	74 1e                                           	je     0x1057f19c
1057f17e:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
1057f184:	51                                              	push   ecx
1057f185:	8b c8                                           	mov    ecx,eax
1057f187:	e8 14 7c 1a 00                                  	call   0x10726da0
1057f18c:	85 c0                                           	test   eax,eax
1057f18e:	74 0c                                           	je     0x1057f19c
1057f190:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057f194:	52                                              	push   edx
1057f195:	8b c8                                           	mov    ecx,eax
1057f197:	e8 f4 19 1d 00                                  	call   0x10750b90
1057f19c:	c3                                              	ret
1057f19d:	cc                                              	int3
1057f19e:	cc                                              	int3
1057f19f:	cc                                              	int3

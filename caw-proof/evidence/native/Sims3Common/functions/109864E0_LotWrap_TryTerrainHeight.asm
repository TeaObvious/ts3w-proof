# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109864e0 (LotWrap_TryTerrainHeight)
Paired Ghidra pseudocode: 109864E0_LotWrap_TryTerrainHeight.c
Window: [0x109864e0, 0x10986510) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109864e0: 8b 4c 24 04 85 c9 74 1b 8b 44 24 10 8b 54 24 0c
109864f0: 50 8b 44 24 0c 52 50 e8 b4 4b 6f ff f6 d8 1b c0
10986500: f7 d8 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109864e0 <.text+0x9854e0>:
109864e0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109864e4:	85 c9                                           	test   ecx,ecx
109864e6:	74 1b                                           	je     0x10986503
109864e8:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
109864ec:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
109864f0:	50                                              	push   eax
109864f1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109864f5:	52                                              	push   edx
109864f6:	50                                              	push   eax
109864f7:	e8 b4 4b 6f ff                                  	call   0x1007b0b0
109864fc:	f6 d8                                           	neg    al
109864fe:	1b c0                                           	sbb    eax,eax
10986500:	f7 d8                                           	neg    eax
10986502:	c3                                              	ret
10986503:	33 c0                                           	xor    eax,eax
10986505:	c3                                              	ret
10986506:	cc                                              	int3
10986507:	cc                                              	int3
10986508:	cc                                              	int3
10986509:	cc                                              	int3
1098650a:	cc                                              	int3
1098650b:	cc                                              	int3
1098650c:	cc                                              	int3
1098650d:	cc                                              	int3
1098650e:	cc                                              	int3
1098650f:	cc                                              	int3

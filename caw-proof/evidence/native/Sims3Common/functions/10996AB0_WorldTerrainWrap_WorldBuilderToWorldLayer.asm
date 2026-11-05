# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996ab0 (WorldTerrainWrap_WorldBuilderToWorldLayer)
Paired Ghidra pseudocode: 10996AB0_WorldTerrainWrap_WorldBuilderToWorldLayer.c
Window: [0x10996ab0, 0x10996af0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996ab0: 8b 44 24 04 85 c0 74 28 8b 48 64 85 c9 74 21 e8
10996ac0: 8c ff d1 ff 85 c0 74 18 8b 4c 24 0c 8b 54 24 08
10996ad0: 51 52 8b c8 e8 07 b5 85 ff f6 d8 1b c0 f7 d8 c3
10996ae0: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996ab0 <.text+0x995ab0>:
10996ab0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996ab4:	85 c0                                           	test   eax,eax
10996ab6:	74 28                                           	je     0x10996ae0
10996ab8:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10996abb:	85 c9                                           	test   ecx,ecx
10996abd:	74 21                                           	je     0x10996ae0
10996abf:	e8 8c ff d1 ff                                  	call   0x106b6a50
10996ac4:	85 c0                                           	test   eax,eax
10996ac6:	74 18                                           	je     0x10996ae0
10996ac8:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10996acc:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10996ad0:	51                                              	push   ecx
10996ad1:	52                                              	push   edx
10996ad2:	8b c8                                           	mov    ecx,eax
10996ad4:	e8 07 b5 85 ff                                  	call   0x101f1fe0
10996ad9:	f6 d8                                           	neg    al
10996adb:	1b c0                                           	sbb    eax,eax
10996add:	f7 d8                                           	neg    eax
10996adf:	c3                                              	ret
10996ae0:	33 c0                                           	xor    eax,eax
10996ae2:	c3                                              	ret
10996ae3:	cc                                              	int3
10996ae4:	cc                                              	int3
10996ae5:	cc                                              	int3
10996ae6:	cc                                              	int3
10996ae7:	cc                                              	int3
10996ae8:	cc                                              	int3
10996ae9:	cc                                              	int3
10996aea:	cc                                              	int3
10996aeb:	cc                                              	int3
10996aec:	cc                                              	int3
10996aed:	cc                                              	int3
10996aee:	cc                                              	int3
10996aef:	cc                                              	int3

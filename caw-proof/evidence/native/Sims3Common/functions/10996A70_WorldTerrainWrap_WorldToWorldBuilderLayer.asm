# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996a70 (WorldTerrainWrap_WorldToWorldBuilderLayer)
Paired Ghidra pseudocode: 10996A70_WorldTerrainWrap_WorldToWorldBuilderLayer.c
Window: [0x10996a70, 0x10996ab0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996a70: 8b 44 24 04 85 c0 74 28 8b 48 64 85 c9 74 21 e8
10996a80: cc ff d1 ff 85 c0 74 18 8b 4c 24 0c 8b 54 24 08
10996a90: 51 52 8b c8 e8 f7 b4 85 ff f6 d8 1b c0 f7 d8 c3
10996aa0: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996a70 <.text+0x995a70>:
10996a70:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996a74:	85 c0                                           	test   eax,eax
10996a76:	74 28                                           	je     0x10996aa0
10996a78:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10996a7b:	85 c9                                           	test   ecx,ecx
10996a7d:	74 21                                           	je     0x10996aa0
10996a7f:	e8 cc ff d1 ff                                  	call   0x106b6a50
10996a84:	85 c0                                           	test   eax,eax
10996a86:	74 18                                           	je     0x10996aa0
10996a88:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10996a8c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10996a90:	51                                              	push   ecx
10996a91:	52                                              	push   edx
10996a92:	8b c8                                           	mov    ecx,eax
10996a94:	e8 f7 b4 85 ff                                  	call   0x101f1f90
10996a99:	f6 d8                                           	neg    al
10996a9b:	1b c0                                           	sbb    eax,eax
10996a9d:	f7 d8                                           	neg    eax
10996a9f:	c3                                              	ret
10996aa0:	33 c0                                           	xor    eax,eax
10996aa2:	c3                                              	ret
10996aa3:	cc                                              	int3
10996aa4:	cc                                              	int3
10996aa5:	cc                                              	int3
10996aa6:	cc                                              	int3
10996aa7:	cc                                              	int3
10996aa8:	cc                                              	int3
10996aa9:	cc                                              	int3
10996aaa:	cc                                              	int3
10996aab:	cc                                              	int3
10996aac:	cc                                              	int3
10996aad:	cc                                              	int3
10996aae:	cc                                              	int3
10996aaf:	cc                                              	int3

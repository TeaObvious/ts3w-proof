# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c1a0 (UIManager_CullMapTagByPositionImpl)
Paired Ghidra pseudocode: 1056C1A0_UIManager_CullMapTagByPositionImpl.c
Window: [0x1056c1a0, 0x1056c1d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c1d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c1a0: e8 db eb 06 00 85 c0 74 21 8b 4c 24 04 83 ec 0c
1056c1b0: 8b d4 89 0a 8b 4c 24 14 89 4a 04 8b 4c 24 18 89
1056c1c0: 4a 08 8b c8 e8 67 eb 06 00 c3 32 c0 c3 cc cc cc

LINEAR DISASSEMBLY
1056c1a0 <.text+0x56b1a0>:
1056c1a0:	e8 db eb 06 00                                  	call   0x105dad80
1056c1a5:	85 c0                                           	test   eax,eax
1056c1a7:	74 21                                           	je     0x1056c1ca
1056c1a9:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056c1ad:	83 ec 0c                                        	sub    esp,0xc
1056c1b0:	8b d4                                           	mov    edx,esp
1056c1b2:	89 0a                                           	mov    DWORD PTR [edx],ecx
1056c1b4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056c1b8:	89 4a 04                                        	mov    DWORD PTR [edx+0x4],ecx
1056c1bb:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1056c1bf:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
1056c1c2:	8b c8                                           	mov    ecx,eax
1056c1c4:	e8 67 eb 06 00                                  	call   0x105dad30
1056c1c9:	c3                                              	ret
1056c1ca:	32 c0                                           	xor    al,al
1056c1cc:	c3                                              	ret
1056c1cd:	cc                                              	int3
1056c1ce:	cc                                              	int3
1056c1cf:	cc                                              	int3

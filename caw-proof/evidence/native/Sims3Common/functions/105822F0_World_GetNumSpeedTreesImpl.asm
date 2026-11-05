# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105822f0 (World_GetNumSpeedTreesImpl)
Paired Ghidra pseudocode: 105822F0_World_GetNumSpeedTreesImpl.c
Window: [0x105822f0, 0x10582330) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10582330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105822f0: e8 ab 7e 1a 00 85 c0 74 34 8b 4c 24 08 8b 54 24
10582300: 04 51 52 8b c8 e8 a6 88 1a 00 85 c0 74 1f 8b 0d
10582310: d0 da c8 10 51 8b c8 e8 84 4a 1a 00 85 c0 74 07
10582320: 8b c8 e9 69 ab 1c 00 b8 01 00 00 00 c3 33 c0 c3

LINEAR DISASSEMBLY
105822f0 <.text+0x5812f0>:
105822f0:	e8 ab 7e 1a 00                                  	call   0x1072a1a0
105822f5:	85 c0                                           	test   eax,eax
105822f7:	74 34                                           	je     0x1058232d
105822f9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105822fd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10582301:	51                                              	push   ecx
10582302:	52                                              	push   edx
10582303:	8b c8                                           	mov    ecx,eax
10582305:	e8 a6 88 1a 00                                  	call   0x1072abb0
1058230a:	85 c0                                           	test   eax,eax
1058230c:	74 1f                                           	je     0x1058232d
1058230e:	8b 0d d0 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dad0
10582314:	51                                              	push   ecx
10582315:	8b c8                                           	mov    ecx,eax
10582317:	e8 84 4a 1a 00                                  	call   0x10726da0
1058231c:	85 c0                                           	test   eax,eax
1058231e:	74 07                                           	je     0x10582327
10582320:	8b c8                                           	mov    ecx,eax
10582322:	e9 69 ab 1c 00                                  	jmp    0x1074ce90
10582327:	b8 01 00 00 00                                  	mov    eax,0x1
1058232c:	c3                                              	ret
1058232d:	33 c0                                           	xor    eax,eax
1058232f:	c3                                              	ret

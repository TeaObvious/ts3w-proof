# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be510 (UserToolUtils_TerrainSculptToolActiveImpl)
Paired Ghidra pseudocode: 102BE510_UserToolUtils_TerrainSculptToolActiveImpl.c
Window: [0x102be510, 0x102be550) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be510: e8 9b 8d 00 00 85 c0 74 25 8b 48 30 83 f9 0f 74
102be520: 05 83 f9 17 75 18 8b 40 2c 85 c0 74 11 83 c0 d8
102be530: 74 0c 80 b8 86 00 00 00 00 74 03 b0 01 c3 32 c0
102be540: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be510 <.text+0x2bd510>:
102be510:	e8 9b 8d 00 00                                  	call   0x102c72b0
102be515:	85 c0                                           	test   eax,eax
102be517:	74 25                                           	je     0x102be53e
102be519:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
102be51c:	83 f9 0f                                        	cmp    ecx,0xf
102be51f:	74 05                                           	je     0x102be526
102be521:	83 f9 17                                        	cmp    ecx,0x17
102be524:	75 18                                           	jne    0x102be53e
102be526:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
102be529:	85 c0                                           	test   eax,eax
102be52b:	74 11                                           	je     0x102be53e
102be52d:	83 c0 d8                                        	add    eax,0xffffffd8
102be530:	74 0c                                           	je     0x102be53e
102be532:	80 b8 86 00 00 00 00                            	cmp    BYTE PTR [eax+0x86],0x0
102be539:	74 03                                           	je     0x102be53e
102be53b:	b0 01                                           	mov    al,0x1
102be53d:	c3                                              	ret
102be53e:	32 c0                                           	xor    al,al
102be540:	c3                                              	ret
102be541:	cc                                              	int3
102be542:	cc                                              	int3
102be543:	cc                                              	int3
102be544:	cc                                              	int3
102be545:	cc                                              	int3
102be546:	cc                                              	int3
102be547:	cc                                              	int3
102be548:	cc                                              	int3
102be549:	cc                                              	int3
102be54a:	cc                                              	int3
102be54b:	cc                                              	int3
102be54c:	cc                                              	int3
102be54d:	cc                                              	int3
102be54e:	cc                                              	int3
102be54f:	cc                                              	int3

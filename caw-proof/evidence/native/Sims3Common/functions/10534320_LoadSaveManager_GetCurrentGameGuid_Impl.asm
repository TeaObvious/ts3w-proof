# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534320 (LoadSaveManager_GetCurrentGameGuid_Impl)
Paired Ghidra pseudocode: 10534320_LoadSaveManager_GetCurrentGameGuid_Impl.c
Window: [0x10534320, 0x10534350) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534320: 56 57 33 f6 33 ff e8 f5 6d 02 00 85 c0 74 14 e8
10534330: 2c ab b3 ff 85 c0 74 0b 8b 48 58 8b 50 5c 5f 8b
10534340: c1 5e c3 8b d7 5f 8b c6 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534320 <.text+0x533320>:
10534320:	56                                              	push   esi
10534321:	57                                              	push   edi
10534322:	33 f6                                           	xor    esi,esi
10534324:	33 ff                                           	xor    edi,edi
10534326:	e8 f5 6d 02 00                                  	call   0x1055b120
1053432b:	85 c0                                           	test   eax,eax
1053432d:	74 14                                           	je     0x10534343
1053432f:	e8 2c ab b3 ff                                  	call   0x1006ee60
10534334:	85 c0                                           	test   eax,eax
10534336:	74 0b                                           	je     0x10534343
10534338:	8b 48 58                                        	mov    ecx,DWORD PTR [eax+0x58]
1053433b:	8b 50 5c                                        	mov    edx,DWORD PTR [eax+0x5c]
1053433e:	5f                                              	pop    edi
1053433f:	8b c1                                           	mov    eax,ecx
10534341:	5e                                              	pop    esi
10534342:	c3                                              	ret
10534343:	8b d7                                           	mov    edx,edi
10534345:	5f                                              	pop    edi
10534346:	8b c6                                           	mov    eax,esi
10534348:	5e                                              	pop    esi
10534349:	c3                                              	ret
1053434a:	cc                                              	int3
1053434b:	cc                                              	int3
1053434c:	cc                                              	int3
1053434d:	cc                                              	int3
1053434e:	cc                                              	int3
1053434f:	cc                                              	int3

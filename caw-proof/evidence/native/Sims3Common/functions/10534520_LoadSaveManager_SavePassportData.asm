# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534520 (LoadSaveManager_SavePassportData)
Paired Ghidra pseudocode: 10534520_LoadSaveManager_SavePassportData.c
Window: [0x10534520, 0x10534560) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534520: e9 9b fe ff ff cc cc cc cc cc cc cc cc cc cc cc
10534530: f6 44 24 04 01 56 8b f1 c7 05 38 88 c7 10 00 00
10534540: 00 00 c7 06 cc c8 ac 10 74 09 56 e8 40 49 3e 00
10534550: 83 c4 04 8b c6 5e c2 04 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534520 <.text+0x533520>:
10534520:	e9 9b fe ff ff                                  	jmp    0x105343c0
10534525:	cc                                              	int3
10534526:	cc                                              	int3
10534527:	cc                                              	int3
10534528:	cc                                              	int3
10534529:	cc                                              	int3
1053452a:	cc                                              	int3
1053452b:	cc                                              	int3
1053452c:	cc                                              	int3
1053452d:	cc                                              	int3
1053452e:	cc                                              	int3
1053452f:	cc                                              	int3
10534530:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
10534535:	56                                              	push   esi
10534536:	8b f1                                           	mov    esi,ecx
10534538:	c7 05 38 88 c7 10 00 00 00 00                   	mov    DWORD PTR ds:0x10c78838,0x0
10534542:	c7 06 cc c8 ac 10                               	mov    DWORD PTR [esi],0x10acc8cc
10534548:	74 09                                           	je     0x10534553
1053454a:	56                                              	push   esi
1053454b:	e8 40 49 3e 00                                  	call   0x10918e90
10534550:	83 c4 04                                        	add    esp,0x4
10534553:	8b c6                                           	mov    eax,esi
10534555:	5e                                              	pop    esi
10534556:	c2 04 00                                        	ret    0x4
10534559:	cc                                              	int3
1053455a:	cc                                              	int3
1053455b:	cc                                              	int3
1053455c:	cc                                              	int3
1053455d:	cc                                              	int3
1053455e:	cc                                              	int3
1053455f:	cc                                              	int3

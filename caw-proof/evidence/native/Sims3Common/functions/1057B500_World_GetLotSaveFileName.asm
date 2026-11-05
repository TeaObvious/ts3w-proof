# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b500 (World_GetLotSaveFileName)
Paired Ghidra pseudocode: 1057B500_World_GetLotSaveFileName.c
Window: [0x1057b500, 0x1057b540) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b500: 8b 0d c4 00 c7 10 85 c9 74 32 8b 44 24 08 8b 54
1057b510: 24 04 6a 00 50 52 e8 f5 ba cb ff 85 c0 74 1d 56
1057b520: 8b 70 60 6a 5c 56 ff 15 24 b5 aa 10 83 c4 08 85
1057b530: c0 75 04 8b c6 5e c3 83 c0 02 5e c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1057b500 <.text+0x57a500>:
1057b500:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b506:	85 c9                                           	test   ecx,ecx
1057b508:	74 32                                           	je     0x1057b53c
1057b50a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b50e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b512:	6a 00                                           	push   0x0
1057b514:	50                                              	push   eax
1057b515:	52                                              	push   edx
1057b516:	e8 f5 ba cb ff                                  	call   0x10237010
1057b51b:	85 c0                                           	test   eax,eax
1057b51d:	74 1d                                           	je     0x1057b53c
1057b51f:	56                                              	push   esi
1057b520:	8b 70 60                                        	mov    esi,DWORD PTR [eax+0x60]
1057b523:	6a 5c                                           	push   0x5c
1057b525:	56                                              	push   esi
1057b526:	ff 15 24 b5 aa 10                               	call   DWORD PTR ds:0x10aab524
1057b52c:	83 c4 08                                        	add    esp,0x8
1057b52f:	85 c0                                           	test   eax,eax
1057b531:	75 04                                           	jne    0x1057b537
1057b533:	8b c6                                           	mov    eax,esi
1057b535:	5e                                              	pop    esi
1057b536:	c3                                              	ret
1057b537:	83 c0 02                                        	add    eax,0x2
1057b53a:	5e                                              	pop    esi
1057b53b:	c3                                              	ret
1057b53c:	33 c0                                           	xor    eax,eax
1057b53e:	c3                                              	ret
1057b53f:	cc                                              	int3

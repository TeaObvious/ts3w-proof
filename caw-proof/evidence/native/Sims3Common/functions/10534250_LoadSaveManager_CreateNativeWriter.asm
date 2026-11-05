# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534250 (LoadSaveManager_CreateNativeWriter)
Paired Ghidra pseudocode: 10534250_LoadSaveManager_CreateNativeWriter.c
Window: [0x10534250, 0x105342b0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x105342b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534250: 56 6a 00 6a 00 6a 00 6a 00 68 34 a6 b1 10 68 9c
10534260: 00 00 00 e8 48 4c 3e 00 83 c4 18 85 c0 74 0d 8b
10534270: c8 e8 5a 31 09 00 8b f0 85 f6 75 04 33 c0 5e c3
10534280: 8b ce e8 f9 35 09 00 e8 94 6e 02 00 8b 10 6a 44
10534290: 8b c8 8b 82 c8 00 00 00 56 ff d0 5e c3 cc cc cc
105342a0: b8 80 41 ab 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534250 <.text+0x533250>:
10534250:	56                                              	push   esi
10534251:	6a 00                                           	push   0x0
10534253:	6a 00                                           	push   0x0
10534255:	6a 00                                           	push   0x0
10534257:	6a 00                                           	push   0x0
10534259:	68 34 a6 b1 10                                  	push   0x10b1a634
1053425e:	68 9c 00 00 00                                  	push   0x9c
10534263:	e8 48 4c 3e 00                                  	call   0x10918eb0
10534268:	83 c4 18                                        	add    esp,0x18
1053426b:	85 c0                                           	test   eax,eax
1053426d:	74 0d                                           	je     0x1053427c
1053426f:	8b c8                                           	mov    ecx,eax
10534271:	e8 5a 31 09 00                                  	call   0x105c73d0
10534276:	8b f0                                           	mov    esi,eax
10534278:	85 f6                                           	test   esi,esi
1053427a:	75 04                                           	jne    0x10534280
1053427c:	33 c0                                           	xor    eax,eax
1053427e:	5e                                              	pop    esi
1053427f:	c3                                              	ret
10534280:	8b ce                                           	mov    ecx,esi
10534282:	e8 f9 35 09 00                                  	call   0x105c7880
10534287:	e8 94 6e 02 00                                  	call   0x1055b120
1053428c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053428e:	6a 44                                           	push   0x44
10534290:	8b c8                                           	mov    ecx,eax
10534292:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
10534298:	56                                              	push   esi
10534299:	ff d0                                           	call   eax
1053429b:	5e                                              	pop    esi
1053429c:	c3                                              	ret
1053429d:	cc                                              	int3
1053429e:	cc                                              	int3
1053429f:	cc                                              	int3
105342a0:	b8 80 41 ab 10                                  	mov    eax,0x10ab4180
105342a5:	c3                                              	ret
105342a6:	cc                                              	int3
105342a7:	cc                                              	int3
105342a8:	cc                                              	int3
105342a9:	cc                                              	int3
105342aa:	cc                                              	int3
105342ab:	cc                                              	int3
105342ac:	cc                                              	int3
105342ad:	cc                                              	int3
105342ae:	cc                                              	int3
105342af:	cc                                              	int3

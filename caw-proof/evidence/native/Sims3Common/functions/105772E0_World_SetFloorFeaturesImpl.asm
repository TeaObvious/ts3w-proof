# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105772e0 (World_SetFloorFeaturesImpl)
Paired Ghidra pseudocode: 105772E0_World_SetFloorFeaturesImpl.c
Window: [0x105772e0, 0x10577340) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105772e0: 51 8b 0d c4 00 c7 10 85 c9 74 47 8b 44 24 0c 8b
105772f0: 54 24 08 6a 00 50 52 e8 14 fd cb ff 85 c0 74 32
10577300: 8a 4c 24 10 8a 54 24 14 88 0c 24 8a 4c 24 18 88
10577310: 54 24 01 8b 54 24 24 88 4c 24 02 8b 4c 24 20 52
10577320: 8b 54 24 20 51 52 8d 4c 24 0c 51 8b c8 e8 2e 98
10577330: b0 ff 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105772e0 <.text+0x5762e0>:
105772e0:	51                                              	push   ecx
105772e1:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105772e7:	85 c9                                           	test   ecx,ecx
105772e9:	74 47                                           	je     0x10577332
105772eb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105772ef:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105772f3:	6a 00                                           	push   0x0
105772f5:	50                                              	push   eax
105772f6:	52                                              	push   edx
105772f7:	e8 14 fd cb ff                                  	call   0x10237010
105772fc:	85 c0                                           	test   eax,eax
105772fe:	74 32                                           	je     0x10577332
10577300:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
10577304:	8a 54 24 14                                     	mov    dl,BYTE PTR [esp+0x14]
10577308:	88 0c 24                                        	mov    BYTE PTR [esp],cl
1057730b:	8a 4c 24 18                                     	mov    cl,BYTE PTR [esp+0x18]
1057730f:	88 54 24 01                                     	mov    BYTE PTR [esp+0x1],dl
10577313:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10577317:	88 4c 24 02                                     	mov    BYTE PTR [esp+0x2],cl
1057731b:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057731f:	52                                              	push   edx
10577320:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10577324:	51                                              	push   ecx
10577325:	52                                              	push   edx
10577326:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1057732a:	51                                              	push   ecx
1057732b:	8b c8                                           	mov    ecx,eax
1057732d:	e8 2e 98 b0 ff                                  	call   0x10080b60
10577332:	59                                              	pop    ecx
10577333:	c3                                              	ret
10577334:	cc                                              	int3
10577335:	cc                                              	int3
10577336:	cc                                              	int3
10577337:	cc                                              	int3
10577338:	cc                                              	int3
10577339:	cc                                              	int3
1057733a:	cc                                              	int3
1057733b:	cc                                              	int3
1057733c:	cc                                              	int3
1057733d:	cc                                              	int3
1057733e:	cc                                              	int3
1057733f:	cc                                              	int3

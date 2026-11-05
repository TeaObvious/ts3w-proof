# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577450 (World_HasSolidFloorImpl)
Paired Ghidra pseudocode: 10577450_World_HasSolidFloorImpl.c
Window: [0x10577450, 0x105774c0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x105774c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577450: 51 8b 0d c4 00 c7 10 85 c9 74 56 8b 44 24 0c 8b
10577460: 54 24 08 6a 00 50 52 e8 a4 fb cb ff 85 c0 74 41
10577470: 8a 4c 24 10 8a 54 24 14 6a 01 6a 00 88 4c 24 08
10577480: 8a 4c 24 20 6a 00 6a 01 88 4c 24 12 6a 01 8d 4c
10577490: 24 14 88 54 24 15 66 8b 54 24 14 51 50 66 89 54
105774a0: 24 1c c6 44 24 1f 0f e8 94 f4 b1 ff 83 c4 1c 59
105774b0: c3 32 c0 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577450 <.text+0x576450>:
10577450:	51                                              	push   ecx
10577451:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577457:	85 c9                                           	test   ecx,ecx
10577459:	74 56                                           	je     0x105774b1
1057745b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057745f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10577463:	6a 00                                           	push   0x0
10577465:	50                                              	push   eax
10577466:	52                                              	push   edx
10577467:	e8 a4 fb cb ff                                  	call   0x10237010
1057746c:	85 c0                                           	test   eax,eax
1057746e:	74 41                                           	je     0x105774b1
10577470:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
10577474:	8a 54 24 14                                     	mov    dl,BYTE PTR [esp+0x14]
10577478:	6a 01                                           	push   0x1
1057747a:	6a 00                                           	push   0x0
1057747c:	88 4c 24 08                                     	mov    BYTE PTR [esp+0x8],cl
10577480:	8a 4c 24 20                                     	mov    cl,BYTE PTR [esp+0x20]
10577484:	6a 00                                           	push   0x0
10577486:	6a 01                                           	push   0x1
10577488:	88 4c 24 12                                     	mov    BYTE PTR [esp+0x12],cl
1057748c:	6a 01                                           	push   0x1
1057748e:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10577492:	88 54 24 15                                     	mov    BYTE PTR [esp+0x15],dl
10577496:	66 8b 54 24 14                                  	mov    dx,WORD PTR [esp+0x14]
1057749b:	51                                              	push   ecx
1057749c:	50                                              	push   eax
1057749d:	66 89 54 24 1c                                  	mov    WORD PTR [esp+0x1c],dx
105774a2:	c6 44 24 1f 0f                                  	mov    BYTE PTR [esp+0x1f],0xf
105774a7:	e8 94 f4 b1 ff                                  	call   0x10096940
105774ac:	83 c4 1c                                        	add    esp,0x1c
105774af:	59                                              	pop    ecx
105774b0:	c3                                              	ret
105774b1:	32 c0                                           	xor    al,al
105774b3:	59                                              	pop    ecx
105774b4:	c3                                              	ret
105774b5:	cc                                              	int3
105774b6:	cc                                              	int3
105774b7:	cc                                              	int3
105774b8:	cc                                              	int3
105774b9:	cc                                              	int3
105774ba:	cc                                              	int3
105774bb:	cc                                              	int3
105774bc:	cc                                              	int3
105774bd:	cc                                              	int3
105774be:	cc                                              	int3
105774bf:	cc                                              	int3

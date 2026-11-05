# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577510 (World_HasBasementImpl)
Paired Ghidra pseudocode: 10577510_World_HasBasementImpl.c
Window: [0x10577510, 0x10577570) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577510: 51 8b 0d c4 00 c7 10 85 c9 74 47 8b 44 24 0c 8b
10577520: 54 24 08 6a 00 50 52 e8 e4 fa cb ff 85 c0 74 32
10577530: 8a 4c 24 10 8a 54 24 14 88 0c 24 8a 4c 24 18 88
10577540: 4c 24 02 88 54 24 01 66 8b 14 24 8d 0c 24 51 8b
10577550: c8 66 89 54 24 04 c6 44 24 07 0f e8 d0 4c b0 ff
10577560: 59 c3 32 c0 59 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577510 <.text+0x576510>:
10577510:	51                                              	push   ecx
10577511:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577517:	85 c9                                           	test   ecx,ecx
10577519:	74 47                                           	je     0x10577562
1057751b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057751f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10577523:	6a 00                                           	push   0x0
10577525:	50                                              	push   eax
10577526:	52                                              	push   edx
10577527:	e8 e4 fa cb ff                                  	call   0x10237010
1057752c:	85 c0                                           	test   eax,eax
1057752e:	74 32                                           	je     0x10577562
10577530:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
10577534:	8a 54 24 14                                     	mov    dl,BYTE PTR [esp+0x14]
10577538:	88 0c 24                                        	mov    BYTE PTR [esp],cl
1057753b:	8a 4c 24 18                                     	mov    cl,BYTE PTR [esp+0x18]
1057753f:	88 4c 24 02                                     	mov    BYTE PTR [esp+0x2],cl
10577543:	88 54 24 01                                     	mov    BYTE PTR [esp+0x1],dl
10577547:	66 8b 14 24                                     	mov    dx,WORD PTR [esp]
1057754b:	8d 0c 24                                        	lea    ecx,[esp]
1057754e:	51                                              	push   ecx
1057754f:	8b c8                                           	mov    ecx,eax
10577551:	66 89 54 24 04                                  	mov    WORD PTR [esp+0x4],dx
10577556:	c6 44 24 07 0f                                  	mov    BYTE PTR [esp+0x7],0xf
1057755b:	e8 d0 4c b0 ff                                  	call   0x1007c230
10577560:	59                                              	pop    ecx
10577561:	c3                                              	ret
10577562:	32 c0                                           	xor    al,al
10577564:	59                                              	pop    ecx
10577565:	c3                                              	ret
10577566:	cc                                              	int3
10577567:	cc                                              	int3
10577568:	cc                                              	int3
10577569:	cc                                              	int3
1057756a:	cc                                              	int3
1057756b:	cc                                              	int3
1057756c:	cc                                              	int3
1057756d:	cc                                              	int3
1057756e:	cc                                              	int3
1057756f:	cc                                              	int3

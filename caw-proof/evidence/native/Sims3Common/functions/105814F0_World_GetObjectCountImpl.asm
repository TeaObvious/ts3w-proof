# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105814f0 (World_GetObjectCountImpl)
Paired Ghidra pseudocode: 105814F0_World_GetObjectCountImpl.c
Window: [0x105814f0, 0x105815a0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x105815a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105814f0: 8b 0d c4 00 c7 10 83 ec 14 85 c9 0f 84 8c 00 00
10581500: 00 8b 44 24 1c 8b 54 24 18 6a 00 50 52 e8 fe 5a
10581510: cb ff 85 c0 74 77 8a 4c 24 20 8a 54 24 24 56 6a
10581520: 05 6a 00 6a 0f 6a 01 88 4c 24 14 8a 4c 24 3c 6a
10581530: 00 88 54 24 19 6a 00 88 4c 24 1e 8d 54 24 20 52
10581540: 8d 4c 24 20 51 8b c8 c7 44 24 28 00 00 00 00 c7
10581550: 44 24 2c 00 00 00 00 c7 44 24 30 00 00 00 00 c7
10581560: 44 24 34 6c 58 ab 10 e8 84 bf b0 ff 8b 44 24 08
10581570: 8b 74 24 0c 2b f0 c1 fe 02 85 c0 74 09 50 e8 0d
10581580: 79 39 00 83 c4 04 8b c6 5e 83 c4 14 c3 33 c0 83
10581590: c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105814f0 <.text+0x5804f0>:
105814f0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105814f6:	83 ec 14                                        	sub    esp,0x14
105814f9:	85 c9                                           	test   ecx,ecx
105814fb:	0f 84 8c 00 00 00                               	je     0x1058158d
10581501:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10581505:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10581509:	6a 00                                           	push   0x0
1058150b:	50                                              	push   eax
1058150c:	52                                              	push   edx
1058150d:	e8 fe 5a cb ff                                  	call   0x10237010
10581512:	85 c0                                           	test   eax,eax
10581514:	74 77                                           	je     0x1058158d
10581516:	8a 4c 24 20                                     	mov    cl,BYTE PTR [esp+0x20]
1058151a:	8a 54 24 24                                     	mov    dl,BYTE PTR [esp+0x24]
1058151e:	56                                              	push   esi
1058151f:	6a 05                                           	push   0x5
10581521:	6a 00                                           	push   0x0
10581523:	6a 0f                                           	push   0xf
10581525:	6a 01                                           	push   0x1
10581527:	88 4c 24 14                                     	mov    BYTE PTR [esp+0x14],cl
1058152b:	8a 4c 24 3c                                     	mov    cl,BYTE PTR [esp+0x3c]
1058152f:	6a 00                                           	push   0x0
10581531:	88 54 24 19                                     	mov    BYTE PTR [esp+0x19],dl
10581535:	6a 00                                           	push   0x0
10581537:	88 4c 24 1e                                     	mov    BYTE PTR [esp+0x1e],cl
1058153b:	8d 54 24 20                                     	lea    edx,[esp+0x20]
1058153f:	52                                              	push   edx
10581540:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10581544:	51                                              	push   ecx
10581545:	8b c8                                           	mov    ecx,eax
10581547:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
1058154f:	c7 44 24 2c 00 00 00 00                         	mov    DWORD PTR [esp+0x2c],0x0
10581557:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [esp+0x30],0x0
1058155f:	c7 44 24 34 6c 58 ab 10                         	mov    DWORD PTR [esp+0x34],0x10ab586c
10581567:	e8 84 bf b0 ff                                  	call   0x1008d4f0
1058156c:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581570:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
10581574:	2b f0                                           	sub    esi,eax
10581576:	c1 fe 02                                        	sar    esi,0x2
10581579:	85 c0                                           	test   eax,eax
1058157b:	74 09                                           	je     0x10581586
1058157d:	50                                              	push   eax
1058157e:	e8 0d 79 39 00                                  	call   0x10918e90
10581583:	83 c4 04                                        	add    esp,0x4
10581586:	8b c6                                           	mov    eax,esi
10581588:	5e                                              	pop    esi
10581589:	83 c4 14                                        	add    esp,0x14
1058158c:	c3                                              	ret
1058158d:	33 c0                                           	xor    eax,eax
1058158f:	83 c4 14                                        	add    esp,0x14
10581592:	c3                                              	ret
10581593:	cc                                              	int3
10581594:	cc                                              	int3
10581595:	cc                                              	int3
10581596:	cc                                              	int3
10581597:	cc                                              	int3
10581598:	cc                                              	int3
10581599:	cc                                              	int3
1058159a:	cc                                              	int3
1058159b:	cc                                              	int3
1058159c:	cc                                              	int3
1058159d:	cc                                              	int3
1058159e:	cc                                              	int3
1058159f:	cc                                              	int3

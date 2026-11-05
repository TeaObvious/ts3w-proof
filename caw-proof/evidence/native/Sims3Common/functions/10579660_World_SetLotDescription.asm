# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579660 (World_SetLotDescription)
Paired Ghidra pseudocode: 10579660_World_SetLotDescription.c
Window: [0x10579660, 0x10579740) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579660: 8b 0d c4 00 c7 10 85 c9 56 74 15 8b 44 24 0c 8b
10579670: 54 24 08 6a 00 50 52 e8 94 d9 cb ff 8b f0 eb 02
10579680: 33 f6 e8 99 1a fe ff 85 f6 74 1a 85 c0 74 16 8b
10579690: 4c 24 10 8b 10 8b 52 58 51 8b c8 ff d2 50 8b ce
105796a0: e8 7b 94 b0 ff 5e c3 cc cc cc cc cc cc cc cc cc
105796b0: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
105796c0: 24 04 6a 00 50 52 e8 45 d9 cb ff 85 c0 74 07 d9
105796d0: 80 20 04 00 00 c3 d9 ee c3 cc cc cc cc cc cc cc
105796e0: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
105796f0: 24 04 6a 00 50 52 e8 15 d9 cb ff 85 c0 74 07 d9
10579700: 80 18 04 00 00 c3 d9 ee c3 cc cc cc cc cc cc cc
10579710: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
10579720: 24 04 6a 00 50 52 e8 e5 d8 cb ff 85 c0 74 07 8b
10579730: c8 e9 4a 59 b0 ff d9 ee c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579660 <.text+0x578660>:
10579660:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10579666:	85 c9                                           	test   ecx,ecx
10579668:	56                                              	push   esi
10579669:	74 15                                           	je     0x10579680
1057966b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057966f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10579673:	6a 00                                           	push   0x0
10579675:	50                                              	push   eax
10579676:	52                                              	push   edx
10579677:	e8 94 d9 cb ff                                  	call   0x10237010
1057967c:	8b f0                                           	mov    esi,eax
1057967e:	eb 02                                           	jmp    0x10579682
10579680:	33 f6                                           	xor    esi,esi
10579682:	e8 99 1a fe ff                                  	call   0x1055b120
10579687:	85 f6                                           	test   esi,esi
10579689:	74 1a                                           	je     0x105796a5
1057968b:	85 c0                                           	test   eax,eax
1057968d:	74 16                                           	je     0x105796a5
1057968f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10579693:	8b 10                                           	mov    edx,DWORD PTR [eax]
10579695:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10579698:	51                                              	push   ecx
10579699:	8b c8                                           	mov    ecx,eax
1057969b:	ff d2                                           	call   edx
1057969d:	50                                              	push   eax
1057969e:	8b ce                                           	mov    ecx,esi
105796a0:	e8 7b 94 b0 ff                                  	call   0x10082b20
105796a5:	5e                                              	pop    esi
105796a6:	c3                                              	ret
105796a7:	cc                                              	int3
105796a8:	cc                                              	int3
105796a9:	cc                                              	int3
105796aa:	cc                                              	int3
105796ab:	cc                                              	int3
105796ac:	cc                                              	int3
105796ad:	cc                                              	int3
105796ae:	cc                                              	int3
105796af:	cc                                              	int3
105796b0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105796b6:	85 c9                                           	test   ecx,ecx
105796b8:	74 1c                                           	je     0x105796d6
105796ba:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105796be:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105796c2:	6a 00                                           	push   0x0
105796c4:	50                                              	push   eax
105796c5:	52                                              	push   edx
105796c6:	e8 45 d9 cb ff                                  	call   0x10237010
105796cb:	85 c0                                           	test   eax,eax
105796cd:	74 07                                           	je     0x105796d6
105796cf:	d9 80 20 04 00 00                               	fld    DWORD PTR [eax+0x420]
105796d5:	c3                                              	ret
105796d6:	d9 ee                                           	fldz
105796d8:	c3                                              	ret
105796d9:	cc                                              	int3
105796da:	cc                                              	int3
105796db:	cc                                              	int3
105796dc:	cc                                              	int3
105796dd:	cc                                              	int3
105796de:	cc                                              	int3
105796df:	cc                                              	int3
105796e0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105796e6:	85 c9                                           	test   ecx,ecx
105796e8:	74 1c                                           	je     0x10579706
105796ea:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105796ee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105796f2:	6a 00                                           	push   0x0
105796f4:	50                                              	push   eax
105796f5:	52                                              	push   edx
105796f6:	e8 15 d9 cb ff                                  	call   0x10237010
105796fb:	85 c0                                           	test   eax,eax
105796fd:	74 07                                           	je     0x10579706
105796ff:	d9 80 18 04 00 00                               	fld    DWORD PTR [eax+0x418]
10579705:	c3                                              	ret
10579706:	d9 ee                                           	fldz
10579708:	c3                                              	ret
10579709:	cc                                              	int3
1057970a:	cc                                              	int3
1057970b:	cc                                              	int3
1057970c:	cc                                              	int3
1057970d:	cc                                              	int3
1057970e:	cc                                              	int3
1057970f:	cc                                              	int3
10579710:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10579716:	85 c9                                           	test   ecx,ecx
10579718:	74 1c                                           	je     0x10579736
1057971a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057971e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10579722:	6a 00                                           	push   0x0
10579724:	50                                              	push   eax
10579725:	52                                              	push   edx
10579726:	e8 e5 d8 cb ff                                  	call   0x10237010
1057972b:	85 c0                                           	test   eax,eax
1057972d:	74 07                                           	je     0x10579736
1057972f:	8b c8                                           	mov    ecx,eax
10579731:	e9 4a 59 b0 ff                                  	jmp    0x1007f080
10579736:	d9 ee                                           	fldz
10579738:	c3                                              	ret
10579739:	cc                                              	int3
1057973a:	cc                                              	int3
1057973b:	cc                                              	int3
1057973c:	cc                                              	int3
1057973d:	cc                                              	int3
1057973e:	cc                                              	int3
1057973f:	cc                                              	int3

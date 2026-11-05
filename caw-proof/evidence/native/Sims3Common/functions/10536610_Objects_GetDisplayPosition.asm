# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536610 (Objects_GetDisplayPosition)
Paired Ghidra pseudocode: 10536610_Objects_GetDisplayPosition.c
Window: [0x10536610, 0x10536690) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536610: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 81 3b 1f 00 8b
10536620: 4d 10 8b 55 0c 51 52 8b c8 e8 82 45 1f 00 85 c0
10536630: 74 32 8b 0d 98 d9 c8 10 51 8b c8 e8 60 07 1f 00
10536640: 85 c0 74 20 8d 54 24 10 52 8b c8 e8 a0 42 21 00
10536650: 8b 75 08 50 56 e8 c6 75 02 00 83 c4 08 8b c6 5e
10536660: 8b e5 5d c3 d9 ee 8b 75 08 83 ec 0c d9 54 24 08
10536670: d9 54 24 04 8b ce d9 1c 24 e8 c2 73 02 00 8b c6
10536680: 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536610 <.text+0x535610>:
10536610:	55                                              	push   ebp
10536611:	8b ec                                           	mov    ebp,esp
10536613:	83 e4 f0                                        	and    esp,0xfffffff0
10536616:	83 ec 1c                                        	sub    esp,0x1c
10536619:	56                                              	push   esi
1053661a:	e8 81 3b 1f 00                                  	call   0x1072a1a0
1053661f:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10536622:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
10536625:	51                                              	push   ecx
10536626:	52                                              	push   edx
10536627:	8b c8                                           	mov    ecx,eax
10536629:	e8 82 45 1f 00                                  	call   0x1072abb0
1053662e:	85 c0                                           	test   eax,eax
10536630:	74 32                                           	je     0x10536664
10536632:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
10536638:	51                                              	push   ecx
10536639:	8b c8                                           	mov    ecx,eax
1053663b:	e8 60 07 1f 00                                  	call   0x10726da0
10536640:	85 c0                                           	test   eax,eax
10536642:	74 20                                           	je     0x10536664
10536644:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10536648:	52                                              	push   edx
10536649:	8b c8                                           	mov    ecx,eax
1053664b:	e8 a0 42 21 00                                  	call   0x1074a8f0
10536650:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
10536653:	50                                              	push   eax
10536654:	56                                              	push   esi
10536655:	e8 c6 75 02 00                                  	call   0x1055dc20
1053665a:	83 c4 08                                        	add    esp,0x8
1053665d:	8b c6                                           	mov    eax,esi
1053665f:	5e                                              	pop    esi
10536660:	8b e5                                           	mov    esp,ebp
10536662:	5d                                              	pop    ebp
10536663:	c3                                              	ret
10536664:	d9 ee                                           	fldz
10536666:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
10536669:	83 ec 0c                                        	sub    esp,0xc
1053666c:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
10536670:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
10536674:	8b ce                                           	mov    ecx,esi
10536676:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10536679:	e8 c2 73 02 00                                  	call   0x1055da40
1053667e:	8b c6                                           	mov    eax,esi
10536680:	5e                                              	pop    esi
10536681:	8b e5                                           	mov    esp,ebp
10536683:	5d                                              	pop    ebp
10536684:	c3                                              	ret
10536685:	cc                                              	int3
10536686:	cc                                              	int3
10536687:	cc                                              	int3
10536688:	cc                                              	int3
10536689:	cc                                              	int3
1053668a:	cc                                              	int3
1053668b:	cc                                              	int3
1053668c:	cc                                              	int3
1053668d:	cc                                              	int3
1053668e:	cc                                              	int3
1053668f:	cc                                              	int3

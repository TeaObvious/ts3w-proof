# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567610 (StreamHost_WriteByteArray)
Paired Ghidra pseudocode: 10567610_StreamHost_WriteByteArray.c
Window: [0x10567610, 0x105676e0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x105676e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567610: 51 55 8b 6c 24 10 85 ed 75 06 8d 45 fa 5d 59 c3
10567620: 53 57 8b 7c 24 1c 85 ff 0f 8c 99 00 00 00 8b 5c
10567630: 24 20 85 db 0f 8e 8d 00 00 00 8b 44 24 14 3b 05
10567640: a4 b0 c7 10 56 75 08 8b 35 a8 b0 c7 10 eb 0b 50
10567650: e8 1b fc ff ff 83 c4 04 8b f0 85 f6 75 09 8d 46
10567660: fe 5e 5f 5b 5d 59 c3 e8 b4 3a ff ff 8b 10 8b 52
10567670: 70 8d 4c 24 10 51 8d 4c 24 20 51 55 8b c8 ff d2
10567680: 8b 4c 24 1c 85 c9 75 09 5e 5f 5b 8d 41 fa 5d 59
10567690: c3 8b 44 24 10 3b f8 7d 23 2b c7 3b c3 7c 1d 8b
105676a0: 06 8b 50 38 03 cf 53 51 8b ce ff d2 f6 d8 5e 5f
105676b0: 5b 5d 1b c0 83 e0 03 83 c0 fd 59 c3 5e 5f 5b b8
105676c0: f9 ff ff ff 5d 59 c3 5f 5b b8 f9 ff ff ff 5d 59
105676d0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567610 <.text+0x566610>:
10567610:	51                                              	push   ecx
10567611:	55                                              	push   ebp
10567612:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
10567616:	85 ed                                           	test   ebp,ebp
10567618:	75 06                                           	jne    0x10567620
1056761a:	8d 45 fa                                        	lea    eax,[ebp-0x6]
1056761d:	5d                                              	pop    ebp
1056761e:	59                                              	pop    ecx
1056761f:	c3                                              	ret
10567620:	53                                              	push   ebx
10567621:	57                                              	push   edi
10567622:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
10567626:	85 ff                                           	test   edi,edi
10567628:	0f 8c 99 00 00 00                               	jl     0x105676c7
1056762e:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
10567632:	85 db                                           	test   ebx,ebx
10567634:	0f 8e 8d 00 00 00                               	jle    0x105676c7
1056763a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1056763e:	3b 05 a4 b0 c7 10                               	cmp    eax,DWORD PTR ds:0x10c7b0a4
10567644:	56                                              	push   esi
10567645:	75 08                                           	jne    0x1056764f
10567647:	8b 35 a8 b0 c7 10                               	mov    esi,DWORD PTR ds:0x10c7b0a8
1056764d:	eb 0b                                           	jmp    0x1056765a
1056764f:	50                                              	push   eax
10567650:	e8 1b fc ff ff                                  	call   0x10567270
10567655:	83 c4 04                                        	add    esp,0x4
10567658:	8b f0                                           	mov    esi,eax
1056765a:	85 f6                                           	test   esi,esi
1056765c:	75 09                                           	jne    0x10567667
1056765e:	8d 46 fe                                        	lea    eax,[esi-0x2]
10567661:	5e                                              	pop    esi
10567662:	5f                                              	pop    edi
10567663:	5b                                              	pop    ebx
10567664:	5d                                              	pop    ebp
10567665:	59                                              	pop    ecx
10567666:	c3                                              	ret
10567667:	e8 b4 3a ff ff                                  	call   0x1055b120
1056766c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056766e:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
10567671:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10567675:	51                                              	push   ecx
10567676:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1056767a:	51                                              	push   ecx
1056767b:	55                                              	push   ebp
1056767c:	8b c8                                           	mov    ecx,eax
1056767e:	ff d2                                           	call   edx
10567680:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10567684:	85 c9                                           	test   ecx,ecx
10567686:	75 09                                           	jne    0x10567691
10567688:	5e                                              	pop    esi
10567689:	5f                                              	pop    edi
1056768a:	5b                                              	pop    ebx
1056768b:	8d 41 fa                                        	lea    eax,[ecx-0x6]
1056768e:	5d                                              	pop    ebp
1056768f:	59                                              	pop    ecx
10567690:	c3                                              	ret
10567691:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10567695:	3b f8                                           	cmp    edi,eax
10567697:	7d 23                                           	jge    0x105676bc
10567699:	2b c7                                           	sub    eax,edi
1056769b:	3b c3                                           	cmp    eax,ebx
1056769d:	7c 1d                                           	jl     0x105676bc
1056769f:	8b 06                                           	mov    eax,DWORD PTR [esi]
105676a1:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
105676a4:	03 cf                                           	add    ecx,edi
105676a6:	53                                              	push   ebx
105676a7:	51                                              	push   ecx
105676a8:	8b ce                                           	mov    ecx,esi
105676aa:	ff d2                                           	call   edx
105676ac:	f6 d8                                           	neg    al
105676ae:	5e                                              	pop    esi
105676af:	5f                                              	pop    edi
105676b0:	5b                                              	pop    ebx
105676b1:	5d                                              	pop    ebp
105676b2:	1b c0                                           	sbb    eax,eax
105676b4:	83 e0 03                                        	and    eax,0x3
105676b7:	83 c0 fd                                        	add    eax,0xfffffffd
105676ba:	59                                              	pop    ecx
105676bb:	c3                                              	ret
105676bc:	5e                                              	pop    esi
105676bd:	5f                                              	pop    edi
105676be:	5b                                              	pop    ebx
105676bf:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
105676c4:	5d                                              	pop    ebp
105676c5:	59                                              	pop    ecx
105676c6:	c3                                              	ret
105676c7:	5f                                              	pop    edi
105676c8:	5b                                              	pop    ebx
105676c9:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
105676ce:	5d                                              	pop    ebp
105676cf:	59                                              	pop    ecx
105676d0:	c3                                              	ret
105676d1:	cc                                              	int3
105676d2:	cc                                              	int3
105676d3:	cc                                              	int3
105676d4:	cc                                              	int3
105676d5:	cc                                              	int3
105676d6:	cc                                              	int3
105676d7:	cc                                              	int3
105676d8:	cc                                              	int3
105676d9:	cc                                              	int3
105676da:	cc                                              	int3
105676db:	cc                                              	int3
105676dc:	cc                                              	int3
105676dd:	cc                                              	int3
105676de:	cc                                              	int3
105676df:	cc                                              	int3

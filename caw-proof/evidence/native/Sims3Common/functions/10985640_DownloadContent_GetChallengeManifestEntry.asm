# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985640 (DownloadContent_GetChallengeManifestEntry)
Paired Ghidra pseudocode: 10985640_DownloadContent_GetChallengeManifestEntry.c
Window: [0x10985640, 0x109856f0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x109856f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985640: a1 dc 88 c7 10 85 c0 74 17 8d 48 f8 85 c9 74 10
10985650: 8b 44 24 08 8b 54 24 04 50 52 e8 b1 df ce ff c3
10985660: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
10985670: 81 ec 10 04 00 00 56 57 8b f1 e8 41 ee de ff 8b
10985680: f8 85 ff 74 5d 8d 4c 24 08 e8 f2 b7 f9 ff 8b 06
10985690: 8b 50 04 8b ce ff d2 50 8d 4c 24 0c e8 3f cb f9
109856a0: ff 8b 87 30 01 00 00 6a 00 50 8d 4c 24 10 e8 4d
109856b0: cf f9 ff 8d 4c 24 08 e8 24 96 0a 00 66 83 38 00
109856c0: 8b c8 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1
109856d0: f9 8d 0c 48 51 8b 8c 24 20 04 00 00 50 e8 de a1
109856e0: 69 ff 5f 5e 81 c4 10 04 00 00 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
10985640 <.text+0x984640>:
10985640:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
10985645:	85 c0                                           	test   eax,eax
10985647:	74 17                                           	je     0x10985660
10985649:	8d 48 f8                                        	lea    ecx,[eax-0x8]
1098564c:	85 c9                                           	test   ecx,ecx
1098564e:	74 10                                           	je     0x10985660
10985650:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10985654:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10985658:	50                                              	push   eax
10985659:	52                                              	push   edx
1098565a:	e8 b1 df ce ff                                  	call   0x10673610
1098565f:	c3                                              	ret
10985660:	32 c0                                           	xor    al,al
10985662:	c3                                              	ret
10985663:	cc                                              	int3
10985664:	cc                                              	int3
10985665:	cc                                              	int3
10985666:	cc                                              	int3
10985667:	cc                                              	int3
10985668:	cc                                              	int3
10985669:	cc                                              	int3
1098566a:	cc                                              	int3
1098566b:	cc                                              	int3
1098566c:	cc                                              	int3
1098566d:	cc                                              	int3
1098566e:	cc                                              	int3
1098566f:	cc                                              	int3
10985670:	81 ec 10 04 00 00                               	sub    esp,0x410
10985676:	56                                              	push   esi
10985677:	57                                              	push   edi
10985678:	8b f1                                           	mov    esi,ecx
1098567a:	e8 41 ee de ff                                  	call   0x107744c0
1098567f:	8b f8                                           	mov    edi,eax
10985681:	85 ff                                           	test   edi,edi
10985683:	74 5d                                           	je     0x109856e2
10985685:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10985689:	e8 f2 b7 f9 ff                                  	call   0x10920e80
1098568e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10985690:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10985693:	8b ce                                           	mov    ecx,esi
10985695:	ff d2                                           	call   edx
10985697:	50                                              	push   eax
10985698:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098569c:	e8 3f cb f9 ff                                  	call   0x109221e0
109856a1:	8b 87 30 01 00 00                               	mov    eax,DWORD PTR [edi+0x130]
109856a7:	6a 00                                           	push   0x0
109856a9:	50                                              	push   eax
109856aa:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
109856ae:	e8 4d cf f9 ff                                  	call   0x10922600
109856b3:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109856b7:	e8 24 96 0a 00                                  	call   0x10a2ece0
109856bc:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
109856c0:	8b c8                                           	mov    ecx,eax
109856c2:	74 09                                           	je     0x109856cd
109856c4:	83 c1 02                                        	add    ecx,0x2
109856c7:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
109856cb:	75 f7                                           	jne    0x109856c4
109856cd:	2b c8                                           	sub    ecx,eax
109856cf:	d1 f9                                           	sar    ecx,1
109856d1:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
109856d4:	51                                              	push   ecx
109856d5:	8b 8c 24 20 04 00 00                            	mov    ecx,DWORD PTR [esp+0x420]
109856dc:	50                                              	push   eax
109856dd:	e8 de a1 69 ff                                  	call   0x1001f8c0
109856e2:	5f                                              	pop    edi
109856e3:	5e                                              	pop    esi
109856e4:	81 c4 10 04 00 00                               	add    esp,0x410
109856ea:	c2 04 00                                        	ret    0x4
109856ed:	cc                                              	int3
109856ee:	cc                                              	int3
109856ef:	cc                                              	int3

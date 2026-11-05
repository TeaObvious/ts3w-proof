# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00761700 (ScriptCore.Route::Route_Clone)
Paired Ghidra pseudocode: 00761700_ScriptCore_Route_Route_Clone.c
Window: [0x00761700, 0x007619e0) (736 bytes; stop exclusive)
Next defined Ghidra entry: 0x007619e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00761700: 83 ec 14 57 e8 87 7c 00 00 8b 0d c4 50 1d 01 33
00761710: ff 3b cf 0f 84 be 02 00 00 8b 44 24 1c 56 50 e8
00761720: 8c 9d fe ff 8b f0 3b f7 89 74 24 10 0f 84 86 00
00761730: 00 00 8b 16 8b 42 10 8b ce ff d0 55 57 57 57 57
00761740: 68 74 55 00 01 68 00 02 00 00 e8 b1 2d d8 ff 83
00761750: c4 18 3b c7 74 6a 56 8b c8 e8 a2 ec ff ff 8b e8
00761760: 3b ef 89 6c 24 10 74 0a 8b 55 00 8b 42 10 8b cd
00761770: ff d0 80 be 41 01 00 00 00 74 08 56 8b cd e8 5d
00761780: a6 fe ff d9 86 a4 00 00 00 8d 86 e0 00 00 00 d9
00761790: 9d a4 00 00 00 53 d9 86 a8 00 00 00 8d 9d e0 00
007617a0: 00 00 d9 9d a8 00 00 00 8b 08 3b c8 89 4c 24 10
007617b0: 0f 84 aa 01 00 00 eb 1c 5e 33 c0 5f 83 c4 14 c3
007617c0: 89 7c 24 10 8b ef eb aa eb 06 8d 9b 00 00 00 00
007617d0: 8b 4c 24 10 8b 69 08 85 ed 89 6c 24 1c 74 0c 8d
007617e0: 4d 04 ba 01 00 00 00 f0 0f c1 11 6a 00 6a 00 6a
007617f0: 00 6a 00 68 6c 59 00 01 68 90 01 00 00 e8 fe 2c
00761800: d8 ff 83 c4 18 85 c0 0f 84 c3 01 00 00 55 8b c8
00761810: e8 6b dd 0b 00 8b f0 85 f6 74 17 8d 46 04 8b c8
00761820: ba 01 00 00 00 f0 0f c1 11 b9 01 00 00 00 f0 0f
00761830: c1 08 8b 53 08 68 e7 00 00 00 68 88 99 f9 00 6a
00761840: 00 6a 00 52 6a 0c e8 b5 2c d8 ff 8d 48 08 83 c4
00761850: 18 85 c9 74 12 85 f6 89 31 74 0c 8d 4e 04 ba 01
00761860: 00 00 00 f0 0f c1 11 85 f6 89 18 8b 4b 04 89 48
00761870: 04 8b 53 04 89 02 89 43 04 74 20 8d 46 04 8b c8
00761880: 83 ca ff f0 0f c1 11 4a 75 11 b9 01 00 00 00 87
00761890: 08 8b 16 8b 02 6a 01 8b ce ff d0 85 ff 74 17 8b
007618a0: 17 8b 42 78 56 8b cf ff d0 8b 16 8b 82 80 00 00
007618b0: 00 57 8b ce ff d0 3b f7 74 3a 85 f6 8b cf 74 0c
007618c0: 8d 56 04 b8 01 00 00 00 f0 0f c1 02 85 c9 8b fe
007618d0: 74 22 8d 41 04 8b d0 83 cd ff f0 0f c1 2a 4d 75
007618e0: 0f ba 01 00 00 00 87 10 8b 01 8b 10 6a 01 ff d2
007618f0: 8b 6c 24 1c 85 f6 74 20 8d 46 04 8b c8 83 ca ff
00761900: f0 0f c1 11 4a 75 11 b9 01 00 00 00 87 08 8b 16
00761910: 8b 02 6a 01 8b ce ff d0 85 ed 74 21 8d 45 04 8b
00761920: c8 83 ca ff f0 0f c1 11 4a 75 12 b9 01 00 00 00
00761930: 87 08 8b 55 00 8b 02 6a 01 8b cd ff d0 8b 4c 24
00761940: 10 8b 44 24 18 8b 09 05 e0 00 00 00 3b c8 89 4c
00761950: 24 10 0f 85 78 fe ff ff 8b 6c 24 14 8b 74 24 18
00761960: 8b 86 f0 00 00 00 3b 85 f0 00 00 00 5b 74 0d 8b
00761970: cd 89 85 f0 00 00 00 e8 04 5a ff ff 8b 0d c4 50
00761980: 1d 01 8d 55 04 52 e8 15 cc fe ff 85 ff 8b 75 18
00761990: 74 20 8d 47 04 8b c8 83 ca ff f0 0f c1 11 4a 75
007619a0: 11 b9 01 00 00 00 87 08 8b 17 8b 02 6a 01 8b cf
007619b0: ff d0 8b 55 00 8b 42 14 8b cd ff d0 8b 4c 24 14
007619c0: 8b 11 8b 42 14 ff d0 5d 8b c6 5e 5f 83 c4 14 c3
007619d0: 33 f6 e9 5b fe ff ff 33 c0 5f 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
00761700 <.text+0x360700>:
  761700:	83 ec 14                                        	sub    esp,0x14
  761703:	57                                              	push   edi
  761704:	e8 87 7c 00 00                                  	call   0x769390
  761709:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  76170f:	33 ff                                           	xor    edi,edi
  761711:	3b cf                                           	cmp    ecx,edi
  761713:	0f 84 be 02 00 00                               	je     0x7619d7
  761719:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  76171d:	56                                              	push   esi
  76171e:	50                                              	push   eax
  76171f:	e8 8c 9d fe ff                                  	call   0x74b4b0
  761724:	8b f0                                           	mov    esi,eax
  761726:	3b f7                                           	cmp    esi,edi
  761728:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  76172c:	0f 84 86 00 00 00                               	je     0x7617b8
  761732:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761734:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  761737:	8b ce                                           	mov    ecx,esi
  761739:	ff d0                                           	call   eax
  76173b:	55                                              	push   ebp
  76173c:	57                                              	push   edi
  76173d:	57                                              	push   edi
  76173e:	57                                              	push   edi
  76173f:	57                                              	push   edi
  761740:	68 74 55 00 01                                  	push   0x1005574
  761745:	68 00 02 00 00                                  	push   0x200
  76174a:	e8 b1 2d d8 ff                                  	call   0x4e4500
  76174f:	83 c4 18                                        	add    esp,0x18
  761752:	3b c7                                           	cmp    eax,edi
  761754:	74 6a                                           	je     0x7617c0
  761756:	56                                              	push   esi
  761757:	8b c8                                           	mov    ecx,eax
  761759:	e8 a2 ec ff ff                                  	call   0x760400
  76175e:	8b e8                                           	mov    ebp,eax
  761760:	3b ef                                           	cmp    ebp,edi
  761762:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  761766:	74 0a                                           	je     0x761772
  761768:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  76176b:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  76176e:	8b cd                                           	mov    ecx,ebp
  761770:	ff d0                                           	call   eax
  761772:	80 be 41 01 00 00 00                            	cmp    BYTE PTR [esi+0x141],0x0
  761779:	74 08                                           	je     0x761783
  76177b:	56                                              	push   esi
  76177c:	8b cd                                           	mov    ecx,ebp
  76177e:	e8 5d a6 fe ff                                  	call   0x74bde0
  761783:	d9 86 a4 00 00 00                               	fld    DWORD PTR [esi+0xa4]
  761789:	8d 86 e0 00 00 00                               	lea    eax,[esi+0xe0]
  76178f:	d9 9d a4 00 00 00                               	fstp   DWORD PTR [ebp+0xa4]
  761795:	53                                              	push   ebx
  761796:	d9 86 a8 00 00 00                               	fld    DWORD PTR [esi+0xa8]
  76179c:	8d 9d e0 00 00 00                               	lea    ebx,[ebp+0xe0]
  7617a2:	d9 9d a8 00 00 00                               	fstp   DWORD PTR [ebp+0xa8]
  7617a8:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7617aa:	3b c8                                           	cmp    ecx,eax
  7617ac:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  7617b0:	0f 84 aa 01 00 00                               	je     0x761960
  7617b6:	eb 1c                                           	jmp    0x7617d4
  7617b8:	5e                                              	pop    esi
  7617b9:	33 c0                                           	xor    eax,eax
  7617bb:	5f                                              	pop    edi
  7617bc:	83 c4 14                                        	add    esp,0x14
  7617bf:	c3                                              	ret
  7617c0:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  7617c4:	8b ef                                           	mov    ebp,edi
  7617c6:	eb aa                                           	jmp    0x761772
  7617c8:	eb 06                                           	jmp    0x7617d0
  7617ca:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  7617d0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7617d4:	8b 69 08                                        	mov    ebp,DWORD PTR [ecx+0x8]
  7617d7:	85 ed                                           	test   ebp,ebp
  7617d9:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
  7617dd:	74 0c                                           	je     0x7617eb
  7617df:	8d 4d 04                                        	lea    ecx,[ebp+0x4]
  7617e2:	ba 01 00 00 00                                  	mov    edx,0x1
  7617e7:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7617eb:	6a 00                                           	push   0x0
  7617ed:	6a 00                                           	push   0x0
  7617ef:	6a 00                                           	push   0x0
  7617f1:	6a 00                                           	push   0x0
  7617f3:	68 6c 59 00 01                                  	push   0x100596c
  7617f8:	68 90 01 00 00                                  	push   0x190
  7617fd:	e8 fe 2c d8 ff                                  	call   0x4e4500
  761802:	83 c4 18                                        	add    esp,0x18
  761805:	85 c0                                           	test   eax,eax
  761807:	0f 84 c3 01 00 00                               	je     0x7619d0
  76180d:	55                                              	push   ebp
  76180e:	8b c8                                           	mov    ecx,eax
  761810:	e8 6b dd 0b 00                                  	call   0x81f580
  761815:	8b f0                                           	mov    esi,eax
  761817:	85 f6                                           	test   esi,esi
  761819:	74 17                                           	je     0x761832
  76181b:	8d 46 04                                        	lea    eax,[esi+0x4]
  76181e:	8b c8                                           	mov    ecx,eax
  761820:	ba 01 00 00 00                                  	mov    edx,0x1
  761825:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761829:	b9 01 00 00 00                                  	mov    ecx,0x1
  76182e:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  761832:	8b 53 08                                        	mov    edx,DWORD PTR [ebx+0x8]
  761835:	68 e7 00 00 00                                  	push   0xe7
  76183a:	68 88 99 f9 00                                  	push   0xf99988
  76183f:	6a 00                                           	push   0x0
  761841:	6a 00                                           	push   0x0
  761843:	52                                              	push   edx
  761844:	6a 0c                                           	push   0xc
  761846:	e8 b5 2c d8 ff                                  	call   0x4e4500
  76184b:	8d 48 08                                        	lea    ecx,[eax+0x8]
  76184e:	83 c4 18                                        	add    esp,0x18
  761851:	85 c9                                           	test   ecx,ecx
  761853:	74 12                                           	je     0x761867
  761855:	85 f6                                           	test   esi,esi
  761857:	89 31                                           	mov    DWORD PTR [ecx],esi
  761859:	74 0c                                           	je     0x761867
  76185b:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  76185e:	ba 01 00 00 00                                  	mov    edx,0x1
  761863:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761867:	85 f6                                           	test   esi,esi
  761869:	89 18                                           	mov    DWORD PTR [eax],ebx
  76186b:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
  76186e:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  761871:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  761874:	89 02                                           	mov    DWORD PTR [edx],eax
  761876:	89 43 04                                        	mov    DWORD PTR [ebx+0x4],eax
  761879:	74 20                                           	je     0x76189b
  76187b:	8d 46 04                                        	lea    eax,[esi+0x4]
  76187e:	8b c8                                           	mov    ecx,eax
  761880:	83 ca ff                                        	or     edx,0xffffffff
  761883:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761887:	4a                                              	dec    edx
  761888:	75 11                                           	jne    0x76189b
  76188a:	b9 01 00 00 00                                  	mov    ecx,0x1
  76188f:	87 08                                           	xchg   DWORD PTR [eax],ecx
  761891:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761893:	8b 02                                           	mov    eax,DWORD PTR [edx]
  761895:	6a 01                                           	push   0x1
  761897:	8b ce                                           	mov    ecx,esi
  761899:	ff d0                                           	call   eax
  76189b:	85 ff                                           	test   edi,edi
  76189d:	74 17                                           	je     0x7618b6
  76189f:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7618a1:	8b 42 78                                        	mov    eax,DWORD PTR [edx+0x78]
  7618a4:	56                                              	push   esi
  7618a5:	8b cf                                           	mov    ecx,edi
  7618a7:	ff d0                                           	call   eax
  7618a9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7618ab:	8b 82 80 00 00 00                               	mov    eax,DWORD PTR [edx+0x80]
  7618b1:	57                                              	push   edi
  7618b2:	8b ce                                           	mov    ecx,esi
  7618b4:	ff d0                                           	call   eax
  7618b6:	3b f7                                           	cmp    esi,edi
  7618b8:	74 3a                                           	je     0x7618f4
  7618ba:	85 f6                                           	test   esi,esi
  7618bc:	8b cf                                           	mov    ecx,edi
  7618be:	74 0c                                           	je     0x7618cc
  7618c0:	8d 56 04                                        	lea    edx,[esi+0x4]
  7618c3:	b8 01 00 00 00                                  	mov    eax,0x1
  7618c8:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7618cc:	85 c9                                           	test   ecx,ecx
  7618ce:	8b fe                                           	mov    edi,esi
  7618d0:	74 22                                           	je     0x7618f4
  7618d2:	8d 41 04                                        	lea    eax,[ecx+0x4]
  7618d5:	8b d0                                           	mov    edx,eax
  7618d7:	83 cd ff                                        	or     ebp,0xffffffff
  7618da:	f0 0f c1 2a                                     	lock xadd DWORD PTR [edx],ebp
  7618de:	4d                                              	dec    ebp
  7618df:	75 0f                                           	jne    0x7618f0
  7618e1:	ba 01 00 00 00                                  	mov    edx,0x1
  7618e6:	87 10                                           	xchg   DWORD PTR [eax],edx
  7618e8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7618ea:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7618ec:	6a 01                                           	push   0x1
  7618ee:	ff d2                                           	call   edx
  7618f0:	8b 6c 24 1c                                     	mov    ebp,DWORD PTR [esp+0x1c]
  7618f4:	85 f6                                           	test   esi,esi
  7618f6:	74 20                                           	je     0x761918
  7618f8:	8d 46 04                                        	lea    eax,[esi+0x4]
  7618fb:	8b c8                                           	mov    ecx,eax
  7618fd:	83 ca ff                                        	or     edx,0xffffffff
  761900:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761904:	4a                                              	dec    edx
  761905:	75 11                                           	jne    0x761918
  761907:	b9 01 00 00 00                                  	mov    ecx,0x1
  76190c:	87 08                                           	xchg   DWORD PTR [eax],ecx
  76190e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761910:	8b 02                                           	mov    eax,DWORD PTR [edx]
  761912:	6a 01                                           	push   0x1
  761914:	8b ce                                           	mov    ecx,esi
  761916:	ff d0                                           	call   eax
  761918:	85 ed                                           	test   ebp,ebp
  76191a:	74 21                                           	je     0x76193d
  76191c:	8d 45 04                                        	lea    eax,[ebp+0x4]
  76191f:	8b c8                                           	mov    ecx,eax
  761921:	83 ca ff                                        	or     edx,0xffffffff
  761924:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761928:	4a                                              	dec    edx
  761929:	75 12                                           	jne    0x76193d
  76192b:	b9 01 00 00 00                                  	mov    ecx,0x1
  761930:	87 08                                           	xchg   DWORD PTR [eax],ecx
  761932:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  761935:	8b 02                                           	mov    eax,DWORD PTR [edx]
  761937:	6a 01                                           	push   0x1
  761939:	8b cd                                           	mov    ecx,ebp
  76193b:	ff d0                                           	call   eax
  76193d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  761941:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  761945:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  761947:	05 e0 00 00 00                                  	add    eax,0xe0
  76194c:	3b c8                                           	cmp    ecx,eax
  76194e:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  761952:	0f 85 78 fe ff ff                               	jne    0x7617d0
  761958:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
  76195c:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  761960:	8b 86 f0 00 00 00                               	mov    eax,DWORD PTR [esi+0xf0]
  761966:	3b 85 f0 00 00 00                               	cmp    eax,DWORD PTR [ebp+0xf0]
  76196c:	5b                                              	pop    ebx
  76196d:	74 0d                                           	je     0x76197c
  76196f:	8b cd                                           	mov    ecx,ebp
  761971:	89 85 f0 00 00 00                               	mov    DWORD PTR [ebp+0xf0],eax
  761977:	e8 04 5a ff ff                                  	call   0x757380
  76197c:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  761982:	8d 55 04                                        	lea    edx,[ebp+0x4]
  761985:	52                                              	push   edx
  761986:	e8 15 cc fe ff                                  	call   0x74e5a0
  76198b:	85 ff                                           	test   edi,edi
  76198d:	8b 75 18                                        	mov    esi,DWORD PTR [ebp+0x18]
  761990:	74 20                                           	je     0x7619b2
  761992:	8d 47 04                                        	lea    eax,[edi+0x4]
  761995:	8b c8                                           	mov    ecx,eax
  761997:	83 ca ff                                        	or     edx,0xffffffff
  76199a:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76199e:	4a                                              	dec    edx
  76199f:	75 11                                           	jne    0x7619b2
  7619a1:	b9 01 00 00 00                                  	mov    ecx,0x1
  7619a6:	87 08                                           	xchg   DWORD PTR [eax],ecx
  7619a8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7619aa:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7619ac:	6a 01                                           	push   0x1
  7619ae:	8b cf                                           	mov    ecx,edi
  7619b0:	ff d0                                           	call   eax
  7619b2:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  7619b5:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7619b8:	8b cd                                           	mov    ecx,ebp
  7619ba:	ff d0                                           	call   eax
  7619bc:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7619c0:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  7619c2:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7619c5:	ff d0                                           	call   eax
  7619c7:	5d                                              	pop    ebp
  7619c8:	8b c6                                           	mov    eax,esi
  7619ca:	5e                                              	pop    esi
  7619cb:	5f                                              	pop    edi
  7619cc:	83 c4 14                                        	add    esp,0x14
  7619cf:	c3                                              	ret
  7619d0:	33 f6                                           	xor    esi,esi
  7619d2:	e9 5b fe ff ff                                  	jmp    0x761832
  7619d7:	33 c0                                           	xor    eax,eax
  7619d9:	5f                                              	pop    edi
  7619da:	83 c4 14                                        	add    esp,0x14
  7619dd:	c3                                              	ret
  7619de:	cc                                              	int3
  7619df:	cc                                              	int3

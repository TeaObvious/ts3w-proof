# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995890 (ThumbnailManager_ExportProductFenceThumbnail)
Paired Ghidra pseudocode: 10995890_ThumbnailManager_ExportProductFenceThumbnail.c
Window: [0x10995890, 0x10995ae0) (592 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995890: 55 8b ec 83 e4 f8 81 ec 44 01 00 00 a1 50 11 c7
109958a0: 10 53 33 db 3b c3 56 57 89 44 24 14 0f 84 e5 01
109958b0: 00 00 8b 3d 34 05 c7 10 3b fb 0f 84 d7 01 00 00
109958c0: e8 0b f8 f4 ff 8b f0 3b f3 0f 84 c8 01 00 00 8d
109958d0: 45 08 50 8d 4c 24 1c 51 e8 c3 81 bc ff 83 c4 08
109958e0: 53 53 53 53 8d 44 24 1c 89 5c 24 1c 8b 16 8b 52
109958f0: 0c 50 8d 4c 24 2c 51 8b ce ff d2 84 c0 74 20 8b
10995900: 4c 24 0c 3b cb 74 18 8b 01 8b 50 0c 68 16 fe 18
10995910: 04 ff d2 3b c3 74 08 50 8b cf e8 b1 2b 8d ff c7
10995920: 44 24 10 01 00 00 00 8b 45 18 85 44 24 10 0f 84
10995930: f4 00 00 00 6a 00 6a 00 6a 00 6a 00 68 8c 79 b9
10995940: 10 6a 30 e8 68 35 f8 ff 83 c4 18 85 c0 0f 84 04
10995950: 01 00 00 8b c8 e8 b6 ee ff ff 8b f8 85 ff 74 09
10995960: 8b 17 8b 42 04 8b cf ff d0 6a 00 6a 00 6a 00 6a
10995970: 00 68 78 79 b9 10 6a 58 e8 33 35 f8 ff 83 c4 18
10995980: 85 c0 0f 84 d6 00 00 00 8b c8 e8 e1 79 9a ff 8b
10995990: f0 85 f6 74 08 8b 16 8b 02 8b ce ff d0 8b 4c 24
109959a0: 18 8b 54 24 1c 6a 00 6a 00 53 6a 00 6a 00 6a 00
109959b0: 83 ec 10 8b c4 89 08 8b 4c 24 48 89 50 04 8b 54
109959c0: 24 4c 89 48 08 8d 4c 24 50 89 50 0c e8 7f a0 76
109959d0: ff 8b 4c 24 14 57 56 6a 00 6a 00 8d 44 24 38 50
109959e0: e8 9b 0b 9a ff 84 c0 74 7c 8b 4d 1c 51 53 8d 54
109959f0: 24 20 52 56 57 e8 f6 f2 ff ff 83 c4 14 84 c0 8d
10995a00: 4c 24 28 0f 84 97 00 00 00 e8 f2 4f 76 ff 85 f6
10995a10: 74 09 8b 06 8b 50 04 8b ce ff d2 85 ff 74 09 8b
10995a20: 07 8b 50 08 8b cf ff d2 8b 44 24 10 83 c3 01 83
10995a30: fb 04 8d 0c 00 89 4c 24 10 0f 82 e8 fe ff ff 8b
10995a40: 4c 24 0c 85 c9 74 07 8b 11 8b 42 04 ff d0 b0 01
10995a50: 5f 5e 5b 8b e5 5d c3 33 ff e9 0b ff ff ff 33 f6
10995a60: e9 38 ff ff ff 8d 4c 24 28 e8 92 4f 76 ff 85 f6
10995a70: 74 09 8b 16 8b 42 04 8b ce ff d0 85 ff 74 09 8b
10995a80: 17 8b 42 08 8b cf ff d0 8b 4c 24 0c 85 c9 74 07
10995a90: 8b 11 8b 42 04 ff d0 32 c0 5f 5e 5b 8b e5 5d c3
10995aa0: e8 5b 4f 76 ff 85 f6 74 09 8b 16 8b 42 04 8b ce
10995ab0: ff d0 85 ff 74 09 8b 17 8b 42 08 8b cf ff d0 8b
10995ac0: 4c 24 0c 85 c9 74 d0 8b 11 8b 42 04 ff d0 5f 5e
10995ad0: 32 c0 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995890 <.text+0x994890>:
10995890:	55                                              	push   ebp
10995891:	8b ec                                           	mov    ebp,esp
10995893:	83 e4 f8                                        	and    esp,0xfffffff8
10995896:	81 ec 44 01 00 00                               	sub    esp,0x144
1099589c:	a1 50 11 c7 10                                  	mov    eax,ds:0x10c71150
109958a1:	53                                              	push   ebx
109958a2:	33 db                                           	xor    ebx,ebx
109958a4:	3b c3                                           	cmp    eax,ebx
109958a6:	56                                              	push   esi
109958a7:	57                                              	push   edi
109958a8:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
109958ac:	0f 84 e5 01 00 00                               	je     0x10995a97
109958b2:	8b 3d 34 05 c7 10                               	mov    edi,DWORD PTR ds:0x10c70534
109958b8:	3b fb                                           	cmp    edi,ebx
109958ba:	0f 84 d7 01 00 00                               	je     0x10995a97
109958c0:	e8 0b f8 f4 ff                                  	call   0x108e50d0
109958c5:	8b f0                                           	mov    esi,eax
109958c7:	3b f3                                           	cmp    esi,ebx
109958c9:	0f 84 c8 01 00 00                               	je     0x10995a97
109958cf:	8d 45 08                                        	lea    eax,[ebp+0x8]
109958d2:	50                                              	push   eax
109958d3:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
109958d7:	51                                              	push   ecx
109958d8:	e8 c3 81 bc ff                                  	call   0x1055daa0
109958dd:	83 c4 08                                        	add    esp,0x8
109958e0:	53                                              	push   ebx
109958e1:	53                                              	push   ebx
109958e2:	53                                              	push   ebx
109958e3:	53                                              	push   ebx
109958e4:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
109958e8:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
109958ec:	8b 16                                           	mov    edx,DWORD PTR [esi]
109958ee:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
109958f1:	50                                              	push   eax
109958f2:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
109958f6:	51                                              	push   ecx
109958f7:	8b ce                                           	mov    ecx,esi
109958f9:	ff d2                                           	call   edx
109958fb:	84 c0                                           	test   al,al
109958fd:	74 20                                           	je     0x1099591f
109958ff:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10995903:	3b cb                                           	cmp    ecx,ebx
10995905:	74 18                                           	je     0x1099591f
10995907:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10995909:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1099590c:	68 16 fe 18 04                                  	push   0x418fe16
10995911:	ff d2                                           	call   edx
10995913:	3b c3                                           	cmp    eax,ebx
10995915:	74 08                                           	je     0x1099591f
10995917:	50                                              	push   eax
10995918:	8b cf                                           	mov    ecx,edi
1099591a:	e8 b1 2b 8d ff                                  	call   0x102684d0
1099591f:	c7 44 24 10 01 00 00 00                         	mov    DWORD PTR [esp+0x10],0x1
10995927:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
1099592a:	85 44 24 10                                     	test   DWORD PTR [esp+0x10],eax
1099592e:	0f 84 f4 00 00 00                               	je     0x10995a28
10995934:	6a 00                                           	push   0x0
10995936:	6a 00                                           	push   0x0
10995938:	6a 00                                           	push   0x0
1099593a:	6a 00                                           	push   0x0
1099593c:	68 8c 79 b9 10                                  	push   0x10b9798c
10995941:	6a 30                                           	push   0x30
10995943:	e8 68 35 f8 ff                                  	call   0x10918eb0
10995948:	83 c4 18                                        	add    esp,0x18
1099594b:	85 c0                                           	test   eax,eax
1099594d:	0f 84 04 01 00 00                               	je     0x10995a57
10995953:	8b c8                                           	mov    ecx,eax
10995955:	e8 b6 ee ff ff                                  	call   0x10994810
1099595a:	8b f8                                           	mov    edi,eax
1099595c:	85 ff                                           	test   edi,edi
1099595e:	74 09                                           	je     0x10995969
10995960:	8b 17                                           	mov    edx,DWORD PTR [edi]
10995962:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995965:	8b cf                                           	mov    ecx,edi
10995967:	ff d0                                           	call   eax
10995969:	6a 00                                           	push   0x0
1099596b:	6a 00                                           	push   0x0
1099596d:	6a 00                                           	push   0x0
1099596f:	6a 00                                           	push   0x0
10995971:	68 78 79 b9 10                                  	push   0x10b97978
10995976:	6a 58                                           	push   0x58
10995978:	e8 33 35 f8 ff                                  	call   0x10918eb0
1099597d:	83 c4 18                                        	add    esp,0x18
10995980:	85 c0                                           	test   eax,eax
10995982:	0f 84 d6 00 00 00                               	je     0x10995a5e
10995988:	8b c8                                           	mov    ecx,eax
1099598a:	e8 e1 79 9a ff                                  	call   0x1033d370
1099598f:	8b f0                                           	mov    esi,eax
10995991:	85 f6                                           	test   esi,esi
10995993:	74 08                                           	je     0x1099599d
10995995:	8b 16                                           	mov    edx,DWORD PTR [esi]
10995997:	8b 02                                           	mov    eax,DWORD PTR [edx]
10995999:	8b ce                                           	mov    ecx,esi
1099599b:	ff d0                                           	call   eax
1099599d:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109959a1:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
109959a5:	6a 00                                           	push   0x0
109959a7:	6a 00                                           	push   0x0
109959a9:	53                                              	push   ebx
109959aa:	6a 00                                           	push   0x0
109959ac:	6a 00                                           	push   0x0
109959ae:	6a 00                                           	push   0x0
109959b0:	83 ec 10                                        	sub    esp,0x10
109959b3:	8b c4                                           	mov    eax,esp
109959b5:	89 08                                           	mov    DWORD PTR [eax],ecx
109959b7:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
109959bb:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
109959be:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
109959c2:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
109959c5:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
109959c9:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
109959cc:	e8 7f a0 76 ff                                  	call   0x100ffa50
109959d1:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109959d5:	57                                              	push   edi
109959d6:	56                                              	push   esi
109959d7:	6a 00                                           	push   0x0
109959d9:	6a 00                                           	push   0x0
109959db:	8d 44 24 38                                     	lea    eax,[esp+0x38]
109959df:	50                                              	push   eax
109959e0:	e8 9b 0b 9a ff                                  	call   0x10336580
109959e5:	84 c0                                           	test   al,al
109959e7:	74 7c                                           	je     0x10995a65
109959e9:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
109959ec:	51                                              	push   ecx
109959ed:	53                                              	push   ebx
109959ee:	8d 54 24 20                                     	lea    edx,[esp+0x20]
109959f2:	52                                              	push   edx
109959f3:	56                                              	push   esi
109959f4:	57                                              	push   edi
109959f5:	e8 f6 f2 ff ff                                  	call   0x10994cf0
109959fa:	83 c4 14                                        	add    esp,0x14
109959fd:	84 c0                                           	test   al,al
109959ff:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10995a03:	0f 84 97 00 00 00                               	je     0x10995aa0
10995a09:	e8 f2 4f 76 ff                                  	call   0x100faa00
10995a0e:	85 f6                                           	test   esi,esi
10995a10:	74 09                                           	je     0x10995a1b
10995a12:	8b 06                                           	mov    eax,DWORD PTR [esi]
10995a14:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10995a17:	8b ce                                           	mov    ecx,esi
10995a19:	ff d2                                           	call   edx
10995a1b:	85 ff                                           	test   edi,edi
10995a1d:	74 09                                           	je     0x10995a28
10995a1f:	8b 07                                           	mov    eax,DWORD PTR [edi]
10995a21:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10995a24:	8b cf                                           	mov    ecx,edi
10995a26:	ff d2                                           	call   edx
10995a28:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10995a2c:	83 c3 01                                        	add    ebx,0x1
10995a2f:	83 fb 04                                        	cmp    ebx,0x4
10995a32:	8d 0c 00                                        	lea    ecx,[eax+eax*1]
10995a35:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10995a39:	0f 82 e8 fe ff ff                               	jb     0x10995927
10995a3f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10995a43:	85 c9                                           	test   ecx,ecx
10995a45:	74 07                                           	je     0x10995a4e
10995a47:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10995a49:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995a4c:	ff d0                                           	call   eax
10995a4e:	b0 01                                           	mov    al,0x1
10995a50:	5f                                              	pop    edi
10995a51:	5e                                              	pop    esi
10995a52:	5b                                              	pop    ebx
10995a53:	8b e5                                           	mov    esp,ebp
10995a55:	5d                                              	pop    ebp
10995a56:	c3                                              	ret
10995a57:	33 ff                                           	xor    edi,edi
10995a59:	e9 0b ff ff ff                                  	jmp    0x10995969
10995a5e:	33 f6                                           	xor    esi,esi
10995a60:	e9 38 ff ff ff                                  	jmp    0x1099599d
10995a65:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10995a69:	e8 92 4f 76 ff                                  	call   0x100faa00
10995a6e:	85 f6                                           	test   esi,esi
10995a70:	74 09                                           	je     0x10995a7b
10995a72:	8b 16                                           	mov    edx,DWORD PTR [esi]
10995a74:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995a77:	8b ce                                           	mov    ecx,esi
10995a79:	ff d0                                           	call   eax
10995a7b:	85 ff                                           	test   edi,edi
10995a7d:	74 09                                           	je     0x10995a88
10995a7f:	8b 17                                           	mov    edx,DWORD PTR [edi]
10995a81:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10995a84:	8b cf                                           	mov    ecx,edi
10995a86:	ff d0                                           	call   eax
10995a88:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10995a8c:	85 c9                                           	test   ecx,ecx
10995a8e:	74 07                                           	je     0x10995a97
10995a90:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10995a92:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995a95:	ff d0                                           	call   eax
10995a97:	32 c0                                           	xor    al,al
10995a99:	5f                                              	pop    edi
10995a9a:	5e                                              	pop    esi
10995a9b:	5b                                              	pop    ebx
10995a9c:	8b e5                                           	mov    esp,ebp
10995a9e:	5d                                              	pop    ebp
10995a9f:	c3                                              	ret
10995aa0:	e8 5b 4f 76 ff                                  	call   0x100faa00
10995aa5:	85 f6                                           	test   esi,esi
10995aa7:	74 09                                           	je     0x10995ab2
10995aa9:	8b 16                                           	mov    edx,DWORD PTR [esi]
10995aab:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995aae:	8b ce                                           	mov    ecx,esi
10995ab0:	ff d0                                           	call   eax
10995ab2:	85 ff                                           	test   edi,edi
10995ab4:	74 09                                           	je     0x10995abf
10995ab6:	8b 17                                           	mov    edx,DWORD PTR [edi]
10995ab8:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10995abb:	8b cf                                           	mov    ecx,edi
10995abd:	ff d0                                           	call   eax
10995abf:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10995ac3:	85 c9                                           	test   ecx,ecx
10995ac5:	74 d0                                           	je     0x10995a97
10995ac7:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10995ac9:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995acc:	ff d0                                           	call   eax
10995ace:	5f                                              	pop    edi
10995acf:	5e                                              	pop    esi
10995ad0:	32 c0                                           	xor    al,al
10995ad2:	5b                                              	pop    ebx
10995ad3:	8b e5                                           	mov    esp,ebp
10995ad5:	5d                                              	pop    ebp
10995ad6:	c3                                              	ret
10995ad7:	cc                                              	int3
10995ad8:	cc                                              	int3
10995ad9:	cc                                              	int3
10995ada:	cc                                              	int3
10995adb:	cc                                              	int3
10995adc:	cc                                              	int3
10995add:	cc                                              	int3
10995ade:	cc                                              	int3
10995adf:	cc                                              	int3

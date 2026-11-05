# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109808c0 (SlotComponent_Slot_GetSlotMatrix)
Paired Ghidra pseudocode: 109808C0_SlotComponent_Slot_GetSlotMatrix.c
Window: [0x109808c0, 0x109809c0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x109809c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109808c0: 55 8b ec 83 e4 f0 81 ec 84 00 00 00 53 56 8b 75
109808d0: 14 85 f6 57 0f 84 c2 00 00 00 8b 06 8b 50 08 6a
109808e0: 01 8b ce ff d2 85 c0 0f 84 af 00 00 00 80 7d 18
109808f0: 00 75 78 8b 06 8b 50 10 8b ce ff d2 84 c0 74 6b
10980900: e8 9b 28 b7 ff 8b 7d 10 8b 5d 0c 57 53 8b c8 e8
10980910: bc 2d b7 ff 57 53 8b f0 e8 23 ee ff ff 83 c4 08
10980920: 85 f6 74 78 85 c0 74 74 8b 3e 8d 4c 24 10 51 8b
10980930: 4d 14 50 e8 98 e9 c7 ff 8b 57 2c 50 8b ce ff d2
10980940: 84 c0 74 58 8d 44 24 10 50 8d 4c 24 54 51 e8 cd
10980950: f6 ff ff 8b f0 8b 45 08 b9 10 00 00 00 8b f8 83
10980960: c4 08 f3 a5 5f 5e 5b 8b e5 5d c3 8b 16 8b 52 14
10980970: 8d 44 24 50 50 8b ce ff d2 50 8d 44 24 14 50 e8
10980980: 9c f6 ff ff 8b f0 8b 45 08 b9 10 00 00 00 8b f8
10980990: 83 c4 08 f3 a5 5f 5e 5b 8b e5 5d c3 8b 45 08 be
109809a0: 50 63 b9 10 b9 10 00 00 00 8b f8 f3 a5 5f 5e 5b
109809b0: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109808c0 <.text+0x97f8c0>:
109808c0:	55                                              	push   ebp
109808c1:	8b ec                                           	mov    ebp,esp
109808c3:	83 e4 f0                                        	and    esp,0xfffffff0
109808c6:	81 ec 84 00 00 00                               	sub    esp,0x84
109808cc:	53                                              	push   ebx
109808cd:	56                                              	push   esi
109808ce:	8b 75 14                                        	mov    esi,DWORD PTR [ebp+0x14]
109808d1:	85 f6                                           	test   esi,esi
109808d3:	57                                              	push   edi
109808d4:	0f 84 c2 00 00 00                               	je     0x1098099c
109808da:	8b 06                                           	mov    eax,DWORD PTR [esi]
109808dc:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
109808df:	6a 01                                           	push   0x1
109808e1:	8b ce                                           	mov    ecx,esi
109808e3:	ff d2                                           	call   edx
109808e5:	85 c0                                           	test   eax,eax
109808e7:	0f 84 af 00 00 00                               	je     0x1098099c
109808ed:	80 7d 18 00                                     	cmp    BYTE PTR [ebp+0x18],0x0
109808f1:	75 78                                           	jne    0x1098096b
109808f3:	8b 06                                           	mov    eax,DWORD PTR [esi]
109808f5:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
109808f8:	8b ce                                           	mov    ecx,esi
109808fa:	ff d2                                           	call   edx
109808fc:	84 c0                                           	test   al,al
109808fe:	74 6b                                           	je     0x1098096b
10980900:	e8 9b 28 b7 ff                                  	call   0x104f31a0
10980905:	8b 7d 10                                        	mov    edi,DWORD PTR [ebp+0x10]
10980908:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
1098090b:	57                                              	push   edi
1098090c:	53                                              	push   ebx
1098090d:	8b c8                                           	mov    ecx,eax
1098090f:	e8 bc 2d b7 ff                                  	call   0x104f36d0
10980914:	57                                              	push   edi
10980915:	53                                              	push   ebx
10980916:	8b f0                                           	mov    esi,eax
10980918:	e8 23 ee ff ff                                  	call   0x1097f740
1098091d:	83 c4 08                                        	add    esp,0x8
10980920:	85 f6                                           	test   esi,esi
10980922:	74 78                                           	je     0x1098099c
10980924:	85 c0                                           	test   eax,eax
10980926:	74 74                                           	je     0x1098099c
10980928:	8b 3e                                           	mov    edi,DWORD PTR [esi]
1098092a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1098092e:	51                                              	push   ecx
1098092f:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
10980932:	50                                              	push   eax
10980933:	e8 98 e9 c7 ff                                  	call   0x105ff2d0
10980938:	8b 57 2c                                        	mov    edx,DWORD PTR [edi+0x2c]
1098093b:	50                                              	push   eax
1098093c:	8b ce                                           	mov    ecx,esi
1098093e:	ff d2                                           	call   edx
10980940:	84 c0                                           	test   al,al
10980942:	74 58                                           	je     0x1098099c
10980944:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10980948:	50                                              	push   eax
10980949:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
1098094d:	51                                              	push   ecx
1098094e:	e8 cd f6 ff ff                                  	call   0x10980020
10980953:	8b f0                                           	mov    esi,eax
10980955:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980958:	b9 10 00 00 00                                  	mov    ecx,0x10
1098095d:	8b f8                                           	mov    edi,eax
1098095f:	83 c4 08                                        	add    esp,0x8
10980962:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10980964:	5f                                              	pop    edi
10980965:	5e                                              	pop    esi
10980966:	5b                                              	pop    ebx
10980967:	8b e5                                           	mov    esp,ebp
10980969:	5d                                              	pop    ebp
1098096a:	c3                                              	ret
1098096b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098096d:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
10980970:	8d 44 24 50                                     	lea    eax,[esp+0x50]
10980974:	50                                              	push   eax
10980975:	8b ce                                           	mov    ecx,esi
10980977:	ff d2                                           	call   edx
10980979:	50                                              	push   eax
1098097a:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1098097e:	50                                              	push   eax
1098097f:	e8 9c f6 ff ff                                  	call   0x10980020
10980984:	8b f0                                           	mov    esi,eax
10980986:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980989:	b9 10 00 00 00                                  	mov    ecx,0x10
1098098e:	8b f8                                           	mov    edi,eax
10980990:	83 c4 08                                        	add    esp,0x8
10980993:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10980995:	5f                                              	pop    edi
10980996:	5e                                              	pop    esi
10980997:	5b                                              	pop    ebx
10980998:	8b e5                                           	mov    esp,ebp
1098099a:	5d                                              	pop    ebp
1098099b:	c3                                              	ret
1098099c:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1098099f:	be 50 63 b9 10                                  	mov    esi,0x10b96350
109809a4:	b9 10 00 00 00                                  	mov    ecx,0x10
109809a9:	8b f8                                           	mov    edi,eax
109809ab:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
109809ad:	5f                                              	pop    edi
109809ae:	5e                                              	pop    esi
109809af:	5b                                              	pop    ebx
109809b0:	8b e5                                           	mov    esp,ebp
109809b2:	5d                                              	pop    ebp
109809b3:	c3                                              	ret
109809b4:	cc                                              	int3
109809b5:	cc                                              	int3
109809b6:	cc                                              	int3
109809b7:	cc                                              	int3
109809b8:	cc                                              	int3
109809b9:	cc                                              	int3
109809ba:	cc                                              	int3
109809bb:	cc                                              	int3
109809bc:	cc                                              	int3
109809bd:	cc                                              	int3
109809be:	cc                                              	int3
109809bf:	cc                                              	int3

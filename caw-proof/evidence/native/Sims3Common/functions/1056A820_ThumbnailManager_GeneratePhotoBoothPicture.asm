# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056a820 (ThumbnailManager_GeneratePhotoBoothPicture)
Paired Ghidra pseudocode: 1056A820_ThumbnailManager_GeneratePhotoBoothPicture.c
Window: [0x1056a820, 0x1056a950) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056a950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056a820: 83 ec 24 53 55 56 57 8b 3d 50 11 c7 10 89 7c 24
1056a830: 10 e8 ea 08 ff ff 8b f0 8b 06 8b 90 18 01 00 00
1056a840: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 a8 00 00 00
1056a850: 6a 00 6a 00 6a 00 6a 00 68 5c 0a b2 10 6a 38 e8
1056a860: 4c e6 3a 00 83 c4 18 85 c0 74 7c 8b 4c 24 4c 51
1056a870: 53 55 8b c8 e8 77 f4 ff ff 8b f8 85 ff 74 09 8b
1056a880: 17 8b 42 04 8b cf ff d0 8b 4c 24 48 8b 54 24 44
1056a890: 8b 44 24 40 57 51 8b 4c 24 44 52 8b 54 24 44 50
1056a8a0: 51 8b 4c 24 24 52 e8 65 d1 dc ff 84 c0 74 3c 8b
1056a8b0: 4c 24 4c 8b 06 8b 90 20 01 00 00 6a 00 51 6a ff
1056a8c0: 53 55 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce
1056a8d0: ff d2 85 ff 74 6e 8b 07 8b 50 08 8b cf ff d2 5f
1056a8e0: 5e 5d 5b 83 c4 24 c3 33 ff eb 9d 85 ff 74 09 8b
1056a8f0: 07 8b 50 08 8b cf ff d2 8b 54 24 4c 6a 00 8d 4c
1056a900: 24 18 51 53 bf b4 a5 ac 10 89 7c 24 20 c6 44 24
1056a910: 30 00 66 c7 44 24 2a 01 00 66 c7 44 24 28 00 00
1056a920: 8b 06 8b 80 30 01 00 00 55 52 8b ce ff d0 f6 44
1056a930: 24 1c 04 89 7c 24 14 74 0b 6a 00 8d 4c 24 18 e8
1056a940: 4c e1 3b 00 5f 5e 5d 5b 83 c4 24 c3 cc cc cc cc

LINEAR DISASSEMBLY
1056a820 <.text+0x569820>:
1056a820:	83 ec 24                                        	sub    esp,0x24
1056a823:	53                                              	push   ebx
1056a824:	55                                              	push   ebp
1056a825:	56                                              	push   esi
1056a826:	57                                              	push   edi
1056a827:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056a82d:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
1056a831:	e8 ea 08 ff ff                                  	call   0x1055b120
1056a836:	8b f0                                           	mov    esi,eax
1056a838:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a83a:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056a840:	8b ce                                           	mov    ecx,esi
1056a842:	ff d2                                           	call   edx
1056a844:	85 ff                                           	test   edi,edi
1056a846:	8b e8                                           	mov    ebp,eax
1056a848:	8b da                                           	mov    ebx,edx
1056a84a:	0f 84 a8 00 00 00                               	je     0x1056a8f8
1056a850:	6a 00                                           	push   0x0
1056a852:	6a 00                                           	push   0x0
1056a854:	6a 00                                           	push   0x0
1056a856:	6a 00                                           	push   0x0
1056a858:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056a85d:	6a 38                                           	push   0x38
1056a85f:	e8 4c e6 3a 00                                  	call   0x10918eb0
1056a864:	83 c4 18                                        	add    esp,0x18
1056a867:	85 c0                                           	test   eax,eax
1056a869:	74 7c                                           	je     0x1056a8e7
1056a86b:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a86f:	51                                              	push   ecx
1056a870:	53                                              	push   ebx
1056a871:	55                                              	push   ebp
1056a872:	8b c8                                           	mov    ecx,eax
1056a874:	e8 77 f4 ff ff                                  	call   0x10569cf0
1056a879:	8b f8                                           	mov    edi,eax
1056a87b:	85 ff                                           	test   edi,edi
1056a87d:	74 09                                           	je     0x1056a888
1056a87f:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056a881:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056a884:	8b cf                                           	mov    ecx,edi
1056a886:	ff d0                                           	call   eax
1056a888:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1056a88c:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a890:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1056a894:	57                                              	push   edi
1056a895:	51                                              	push   ecx
1056a896:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1056a89a:	52                                              	push   edx
1056a89b:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a89f:	50                                              	push   eax
1056a8a0:	51                                              	push   ecx
1056a8a1:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1056a8a5:	52                                              	push   edx
1056a8a6:	e8 65 d1 dc ff                                  	call   0x10337a10
1056a8ab:	84 c0                                           	test   al,al
1056a8ad:	74 3c                                           	je     0x1056a8eb
1056a8af:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a8b3:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a8b5:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
1056a8bb:	6a 00                                           	push   0x0
1056a8bd:	51                                              	push   ecx
1056a8be:	6a ff                                           	push   0xffffffff
1056a8c0:	53                                              	push   ebx
1056a8c1:	55                                              	push   ebp
1056a8c2:	8b ce                                           	mov    ecx,esi
1056a8c4:	ff d2                                           	call   edx
1056a8c6:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a8c8:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056a8ce:	8b ce                                           	mov    ecx,esi
1056a8d0:	ff d2                                           	call   edx
1056a8d2:	85 ff                                           	test   edi,edi
1056a8d4:	74 6e                                           	je     0x1056a944
1056a8d6:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a8d8:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a8db:	8b cf                                           	mov    ecx,edi
1056a8dd:	ff d2                                           	call   edx
1056a8df:	5f                                              	pop    edi
1056a8e0:	5e                                              	pop    esi
1056a8e1:	5d                                              	pop    ebp
1056a8e2:	5b                                              	pop    ebx
1056a8e3:	83 c4 24                                        	add    esp,0x24
1056a8e6:	c3                                              	ret
1056a8e7:	33 ff                                           	xor    edi,edi
1056a8e9:	eb 9d                                           	jmp    0x1056a888
1056a8eb:	85 ff                                           	test   edi,edi
1056a8ed:	74 09                                           	je     0x1056a8f8
1056a8ef:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a8f1:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a8f4:	8b cf                                           	mov    ecx,edi
1056a8f6:	ff d2                                           	call   edx
1056a8f8:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
1056a8fc:	6a 00                                           	push   0x0
1056a8fe:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a902:	51                                              	push   ecx
1056a903:	53                                              	push   ebx
1056a904:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056a909:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056a90d:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056a912:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056a919:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056a920:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a922:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056a928:	55                                              	push   ebp
1056a929:	52                                              	push   edx
1056a92a:	8b ce                                           	mov    ecx,esi
1056a92c:	ff d0                                           	call   eax
1056a92e:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056a933:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056a937:	74 0b                                           	je     0x1056a944
1056a939:	6a 00                                           	push   0x0
1056a93b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a93f:	e8 4c e1 3b 00                                  	call   0x10928a90
1056a944:	5f                                              	pop    edi
1056a945:	5e                                              	pop    esi
1056a946:	5d                                              	pop    ebp
1056a947:	5b                                              	pop    ebx
1056a948:	83 c4 24                                        	add    esp,0x24
1056a94b:	c3                                              	ret
1056a94c:	cc                                              	int3
1056a94d:	cc                                              	int3
1056a94e:	cc                                              	int3
1056a94f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985760 (ContentTransferManager_UploadChallenge)
Paired Ghidra pseudocode: 10985760_ContentTransferManager_UploadChallenge.c
Window: [0x10985760, 0x10985830) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985760: 81 ec 18 04 00 00 56 57 8d 4c 24 10 e8 0f b7 f9
10985770: ff 8b 84 24 24 04 00 00 50 8d 4c 24 14 e8 5e ca
10985780: f9 ff 8d 4c 24 10 e8 75 c8 f9 ff 50 8d 4c 24 0c
10985790: e8 5b ff ff ff 8b f0 85 f6 74 0c 8d 4e 04 ba 01
109857a0: 00 00 00 f0 0f c1 11 8b 06 8b 50 20 8b ce ff d2
109857b0: 8d 7e 04 89 74 24 08 8b c7 b9 01 00 00 00 f0 0f
109857c0: c1 08 a1 dc 88 c7 10 85 c0 74 05 8d 48 f8 eb 02
109857d0: 33 c9 8d 54 24 08 52 e8 94 f4 ce ff 8b 4c 24 08
109857e0: 85 c9 74 24 8d 41 04 53 8b d0 83 cb ff f0 0f c1
109857f0: 1a 4b 5b 75 13 ba 01 00 00 00 87 10 85 c9 74 08
10985800: 8b 01 8b 10 6a 01 ff d2 8b c7 83 c9 ff f0 0f c1
10985810: 08 49 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a
10985820: 01 8b ce ff d2 5f b0 01 5e 81 c4 18 04 00 00 c3

LINEAR DISASSEMBLY
10985760 <.text+0x984760>:
10985760:	81 ec 18 04 00 00                               	sub    esp,0x418
10985766:	56                                              	push   esi
10985767:	57                                              	push   edi
10985768:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1098576c:	e8 0f b7 f9 ff                                  	call   0x10920e80
10985771:	8b 84 24 24 04 00 00                            	mov    eax,DWORD PTR [esp+0x424]
10985778:	50                                              	push   eax
10985779:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1098577d:	e8 5e ca f9 ff                                  	call   0x109221e0
10985782:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10985786:	e8 75 c8 f9 ff                                  	call   0x10922000
1098578b:	50                                              	push   eax
1098578c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10985790:	e8 5b ff ff ff                                  	call   0x109856f0
10985795:	8b f0                                           	mov    esi,eax
10985797:	85 f6                                           	test   esi,esi
10985799:	74 0c                                           	je     0x109857a7
1098579b:	8d 4e 04                                        	lea    ecx,[esi+0x4]
1098579e:	ba 01 00 00 00                                  	mov    edx,0x1
109857a3:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
109857a7:	8b 06                                           	mov    eax,DWORD PTR [esi]
109857a9:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
109857ac:	8b ce                                           	mov    ecx,esi
109857ae:	ff d2                                           	call   edx
109857b0:	8d 7e 04                                        	lea    edi,[esi+0x4]
109857b3:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
109857b7:	8b c7                                           	mov    eax,edi
109857b9:	b9 01 00 00 00                                  	mov    ecx,0x1
109857be:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
109857c2:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
109857c7:	85 c0                                           	test   eax,eax
109857c9:	74 05                                           	je     0x109857d0
109857cb:	8d 48 f8                                        	lea    ecx,[eax-0x8]
109857ce:	eb 02                                           	jmp    0x109857d2
109857d0:	33 c9                                           	xor    ecx,ecx
109857d2:	8d 54 24 08                                     	lea    edx,[esp+0x8]
109857d6:	52                                              	push   edx
109857d7:	e8 94 f4 ce ff                                  	call   0x10674c70
109857dc:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
109857e0:	85 c9                                           	test   ecx,ecx
109857e2:	74 24                                           	je     0x10985808
109857e4:	8d 41 04                                        	lea    eax,[ecx+0x4]
109857e7:	53                                              	push   ebx
109857e8:	8b d0                                           	mov    edx,eax
109857ea:	83 cb ff                                        	or     ebx,0xffffffff
109857ed:	f0 0f c1 1a                                     	lock xadd DWORD PTR [edx],ebx
109857f1:	4b                                              	dec    ebx
109857f2:	5b                                              	pop    ebx
109857f3:	75 13                                           	jne    0x10985808
109857f5:	ba 01 00 00 00                                  	mov    edx,0x1
109857fa:	87 10                                           	xchg   DWORD PTR [eax],edx
109857fc:	85 c9                                           	test   ecx,ecx
109857fe:	74 08                                           	je     0x10985808
10985800:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10985802:	8b 10                                           	mov    edx,DWORD PTR [eax]
10985804:	6a 01                                           	push   0x1
10985806:	ff d2                                           	call   edx
10985808:	8b c7                                           	mov    eax,edi
1098580a:	83 c9 ff                                        	or     ecx,0xffffffff
1098580d:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10985811:	49                                              	dec    ecx
10985812:	75 11                                           	jne    0x10985825
10985814:	ba 01 00 00 00                                  	mov    edx,0x1
10985819:	87 17                                           	xchg   DWORD PTR [edi],edx
1098581b:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098581d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098581f:	6a 01                                           	push   0x1
10985821:	8b ce                                           	mov    ecx,esi
10985823:	ff d2                                           	call   edx
10985825:	5f                                              	pop    edi
10985826:	b0 01                                           	mov    al,0x1
10985828:	5e                                              	pop    esi
10985829:	81 c4 18 04 00 00                               	add    esp,0x418
1098582f:	c3                                              	ret

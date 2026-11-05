# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008ad840 (AudioVoice_PropertyInterfaceSet)
Paired Ghidra pseudocode: 008AD840_AudioVoice_PropertyInterfaceSet.c
Window: [0x008ad840, 0x008ad940) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x008ad940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008ad840: 83 ec 14 53 57 8b f9 e8 b4 25 00 00 8b 10 8b 5c
008ad850: 24 20 8b c8 8b 82 1c 01 00 00 53 ff d0 0b c2 0f
008ad860: 84 b7 00 00 00 55 8d 4c 24 24 51 8d 54 24 10 8d
008ad870: af 24 05 00 00 52 8b cd e8 33 e1 1a 00 8b 4d 08
008ad880: 8b 55 04 8b 44 24 0c 3b 04 8a 74 19 d9 44 24 28
008ad890: 51 8b 48 04 d9 1c 24 e8 d4 89 ff ff 5d 5f 5b 83
008ad8a0: c4 14 c2 0c 00 56 6a 18 e8 43 8a ff ff 83 c4 04
008ad8b0: 85 c0 74 0f 8d 4f fc 51 8b c8 e8 71 8a ff ff 8b
008ad8c0: f0 eb 02 33 f6 8b 16 8b 02 8b ce ff d0 53 8b ce
008ad8d0: e8 fb b8 e8 ff d9 44 24 2c 51 8b ce d9 1c 24 e8
008ad8e0: 8c 89 ff ff c6 44 24 2c 00 8b 4c 24 2c 51 8d 54
008ad8f0: 24 14 52 8d 44 24 20 50 8b cd 89 5c 24 1c 89 74
008ad900: 24 20 e8 e9 1a bb ff 8b 17 8b 42 18 56 53 8b cf
008ad910: ff d0 5e 5d 5f 5b 83 c4 14 c2 0c 00 8b 44 24 28
008ad920: d9 44 24 24 8b 57 fc 8b 92 b0 00 00 00 8d 4f fc
008ad930: 50 51 d9 1c 24 53 ff d2 5f 5b 83 c4 14 c2 0c 00

LINEAR DISASSEMBLY
008ad840 <.text+0x4ac840>:
  8ad840:	83 ec 14                                        	sub    esp,0x14
  8ad843:	53                                              	push   ebx
  8ad844:	57                                              	push   edi
  8ad845:	8b f9                                           	mov    edi,ecx
  8ad847:	e8 b4 25 00 00                                  	call   0x8afe00
  8ad84c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  8ad84e:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
  8ad852:	8b c8                                           	mov    ecx,eax
  8ad854:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
  8ad85a:	53                                              	push   ebx
  8ad85b:	ff d0                                           	call   eax
  8ad85d:	0b c2                                           	or     eax,edx
  8ad85f:	0f 84 b7 00 00 00                               	je     0x8ad91c
  8ad865:	55                                              	push   ebp
  8ad866:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  8ad86a:	51                                              	push   ecx
  8ad86b:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  8ad86f:	8d af 24 05 00 00                               	lea    ebp,[edi+0x524]
  8ad875:	52                                              	push   edx
  8ad876:	8b cd                                           	mov    ecx,ebp
  8ad878:	e8 33 e1 1a 00                                  	call   0xa5b9b0
  8ad87d:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  8ad880:	8b 55 04                                        	mov    edx,DWORD PTR [ebp+0x4]
  8ad883:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  8ad887:	3b 04 8a                                        	cmp    eax,DWORD PTR [edx+ecx*4]
  8ad88a:	74 19                                           	je     0x8ad8a5
  8ad88c:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  8ad890:	51                                              	push   ecx
  8ad891:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  8ad894:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8ad897:	e8 d4 89 ff ff                                  	call   0x8a6270
  8ad89c:	5d                                              	pop    ebp
  8ad89d:	5f                                              	pop    edi
  8ad89e:	5b                                              	pop    ebx
  8ad89f:	83 c4 14                                        	add    esp,0x14
  8ad8a2:	c2 0c 00                                        	ret    0xc
  8ad8a5:	56                                              	push   esi
  8ad8a6:	6a 18                                           	push   0x18
  8ad8a8:	e8 43 8a ff ff                                  	call   0x8a62f0
  8ad8ad:	83 c4 04                                        	add    esp,0x4
  8ad8b0:	85 c0                                           	test   eax,eax
  8ad8b2:	74 0f                                           	je     0x8ad8c3
  8ad8b4:	8d 4f fc                                        	lea    ecx,[edi-0x4]
  8ad8b7:	51                                              	push   ecx
  8ad8b8:	8b c8                                           	mov    ecx,eax
  8ad8ba:	e8 71 8a ff ff                                  	call   0x8a6330
  8ad8bf:	8b f0                                           	mov    esi,eax
  8ad8c1:	eb 02                                           	jmp    0x8ad8c5
  8ad8c3:	33 f6                                           	xor    esi,esi
  8ad8c5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8ad8c7:	8b 02                                           	mov    eax,DWORD PTR [edx]
  8ad8c9:	8b ce                                           	mov    ecx,esi
  8ad8cb:	ff d0                                           	call   eax
  8ad8cd:	53                                              	push   ebx
  8ad8ce:	8b ce                                           	mov    ecx,esi
  8ad8d0:	e8 fb b8 e8 ff                                  	call   0x7391d0
  8ad8d5:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  8ad8d9:	51                                              	push   ecx
  8ad8da:	8b ce                                           	mov    ecx,esi
  8ad8dc:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8ad8df:	e8 8c 89 ff ff                                  	call   0x8a6270
  8ad8e4:	c6 44 24 2c 00                                  	mov    BYTE PTR [esp+0x2c],0x0
  8ad8e9:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  8ad8ed:	51                                              	push   ecx
  8ad8ee:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  8ad8f2:	52                                              	push   edx
  8ad8f3:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  8ad8f7:	50                                              	push   eax
  8ad8f8:	8b cd                                           	mov    ecx,ebp
  8ad8fa:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  8ad8fe:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  8ad902:	e8 e9 1a bb ff                                  	call   0x45f3f0
  8ad907:	8b 17                                           	mov    edx,DWORD PTR [edi]
  8ad909:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  8ad90c:	56                                              	push   esi
  8ad90d:	53                                              	push   ebx
  8ad90e:	8b cf                                           	mov    ecx,edi
  8ad910:	ff d0                                           	call   eax
  8ad912:	5e                                              	pop    esi
  8ad913:	5d                                              	pop    ebp
  8ad914:	5f                                              	pop    edi
  8ad915:	5b                                              	pop    ebx
  8ad916:	83 c4 14                                        	add    esp,0x14
  8ad919:	c2 0c 00                                        	ret    0xc
  8ad91c:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  8ad920:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  8ad924:	8b 57 fc                                        	mov    edx,DWORD PTR [edi-0x4]
  8ad927:	8b 92 b0 00 00 00                               	mov    edx,DWORD PTR [edx+0xb0]
  8ad92d:	8d 4f fc                                        	lea    ecx,[edi-0x4]
  8ad930:	50                                              	push   eax
  8ad931:	51                                              	push   ecx
  8ad932:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8ad935:	53                                              	push   ebx
  8ad936:	ff d2                                           	call   edx
  8ad938:	5f                                              	pop    edi
  8ad939:	5b                                              	pop    ebx
  8ad93a:	83 c4 14                                        	add    esp,0x14
  8ad93d:	c2 0c 00                                        	ret    0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00755790 (ScriptCore.Route::Route_SetAGS)
Paired Ghidra pseudocode: 00755790_ScriptCore_Route_Route_SetAGS.c
Window: [0x00755790, 0x00755840) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00755840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00755790: 51 8b 0d c4 50 1d 01 85 c9 0f 84 9d 00 00 00 8b
007557a0: 44 24 08 57 50 e8 06 5d ff ff 8b f8 85 ff 0f 84
007557b0: 87 00 00 00 8b 17 8b 42 10 53 55 8b cf ff d0 8b
007557c0: 4c 24 18 8d af e0 00 00 00 89 4f 3c 8b 5d 00 3b
007557d0: dd 74 59 56 8b 73 08 85 f6 74 0c 8d 56 04 b8 01
007557e0: 00 00 00 f0 0f c1 02 8b 16 8b 42 0c 8b ce ff d0
007557f0: 8b 4f 3c 51 8b c8 e8 15 6d 0c 00 50 56 e8 de 9d
00755800: 10 00 8d 46 04 83 c4 0c 8b c8 83 ca ff f0 0f c1
00755810: 11 4a 75 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a
00755820: 01 8b ce ff d0 8b 1b 3b dd 75 a9 5e 8b 17 8b 42
00755830: 14 5d 5b 8b cf 5f 83 c4 04 ff e0 5f 59 c3 cc cc

LINEAR DISASSEMBLY
00755790 <.text+0x354790>:
  755790:	51                                              	push   ecx
  755791:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  755797:	85 c9                                           	test   ecx,ecx
  755799:	0f 84 9d 00 00 00                               	je     0x75583c
  75579f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7557a3:	57                                              	push   edi
  7557a4:	50                                              	push   eax
  7557a5:	e8 06 5d ff ff                                  	call   0x74b4b0
  7557aa:	8b f8                                           	mov    edi,eax
  7557ac:	85 ff                                           	test   edi,edi
  7557ae:	0f 84 87 00 00 00                               	je     0x75583b
  7557b4:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7557b6:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7557b9:	53                                              	push   ebx
  7557ba:	55                                              	push   ebp
  7557bb:	8b cf                                           	mov    ecx,edi
  7557bd:	ff d0                                           	call   eax
  7557bf:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7557c3:	8d af e0 00 00 00                               	lea    ebp,[edi+0xe0]
  7557c9:	89 4f 3c                                        	mov    DWORD PTR [edi+0x3c],ecx
  7557cc:	8b 5d 00                                        	mov    ebx,DWORD PTR [ebp+0x0]
  7557cf:	3b dd                                           	cmp    ebx,ebp
  7557d1:	74 59                                           	je     0x75582c
  7557d3:	56                                              	push   esi
  7557d4:	8b 73 08                                        	mov    esi,DWORD PTR [ebx+0x8]
  7557d7:	85 f6                                           	test   esi,esi
  7557d9:	74 0c                                           	je     0x7557e7
  7557db:	8d 56 04                                        	lea    edx,[esi+0x4]
  7557de:	b8 01 00 00 00                                  	mov    eax,0x1
  7557e3:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7557e7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7557e9:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  7557ec:	8b ce                                           	mov    ecx,esi
  7557ee:	ff d0                                           	call   eax
  7557f0:	8b 4f 3c                                        	mov    ecx,DWORD PTR [edi+0x3c]
  7557f3:	51                                              	push   ecx
  7557f4:	8b c8                                           	mov    ecx,eax
  7557f6:	e8 15 6d 0c 00                                  	call   0x81c510
  7557fb:	50                                              	push   eax
  7557fc:	56                                              	push   esi
  7557fd:	e8 de 9d 10 00                                  	call   0x85f5e0
  755802:	8d 46 04                                        	lea    eax,[esi+0x4]
  755805:	83 c4 0c                                        	add    esp,0xc
  755808:	8b c8                                           	mov    ecx,eax
  75580a:	83 ca ff                                        	or     edx,0xffffffff
  75580d:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  755811:	4a                                              	dec    edx
  755812:	75 11                                           	jne    0x755825
  755814:	b9 01 00 00 00                                  	mov    ecx,0x1
  755819:	87 08                                           	xchg   DWORD PTR [eax],ecx
  75581b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75581d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75581f:	6a 01                                           	push   0x1
  755821:	8b ce                                           	mov    ecx,esi
  755823:	ff d0                                           	call   eax
  755825:	8b 1b                                           	mov    ebx,DWORD PTR [ebx]
  755827:	3b dd                                           	cmp    ebx,ebp
  755829:	75 a9                                           	jne    0x7557d4
  75582b:	5e                                              	pop    esi
  75582c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75582e:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  755831:	5d                                              	pop    ebp
  755832:	5b                                              	pop    ebx
  755833:	8b cf                                           	mov    ecx,edi
  755835:	5f                                              	pop    edi
  755836:	83 c4 04                                        	add    esp,0x4
  755839:	ff e0                                           	jmp    eax
  75583b:	5f                                              	pop    edi
  75583c:	59                                              	pop    ecx
  75583d:	c3                                              	ret
  75583e:	cc                                              	int3
  75583f:	cc                                              	int3

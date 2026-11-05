# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00742900 (SACS_DeliverAdmittedEvent)
Paired Ghidra pseudocode: 00742900_SACS_DeliverAdmittedEvent.c
Window: [0x00742900, 0x00742b00) (512 bytes; stop exclusive)
Next defined Ghidra entry: 0x00742b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00742900: 81 ec c8 00 00 00 55 8b ac 24 d0 00 00 00 56 57
00742910: 33 f6 3b ee 8b f9 89 7c 24 30 0f 84 c7 01 00 00
00742920: 8b 45 00 8b 10 8b cd ff d2 39 77 08 0f 84 ab 01
00742930: 00 00 8b 45 08 53 8d 4c 24 10 bf f4 a6 fb 00 51
00742940: 8d 4c 24 18 89 7c 24 3c 66 89 74 24 44 66 89 74
00742950: 24 46 89 44 24 14 89 7c 24 18 66 89 74 24 20 66
00742960: 89 74 24 22 e8 b7 35 db ff 8d 54 24 14 52 8d 4c
00742970: 24 5c 89 7c 24 5c 66 89 74 24 64 66 89 74 24 66
00742980: e8 2b 3b db ff bb 04 00 00 00 84 5c 24 1c 89 7c
00742990: 24 14 74 0a 56 8d 4c 24 18 e8 c2 2d db ff 8b 45
007429a0: 0c 8d 4c 24 10 51 8d 4c 24 18 89 44 24 14 89 7c
007429b0: 24 18 66 89 74 24 20 66 89 74 24 22 e8 5f 35 db
007429c0: ff 8d 54 24 14 52 8d 4c 24 7c 89 7c 24 7c 66 89
007429d0: b4 24 84 00 00 00 66 89 b4 24 86 00 00 00 e8 cd
007429e0: 3a db ff 84 5c 24 1c 89 7c 24 14 74 0a 56 8d 4c
007429f0: 24 18 e8 69 2d db ff 8b 45 10 8d 4c 24 10 51 8d
00742a00: 4c 24 18 89 44 24 14 89 7c 24 18 66 89 74 24 20
00742a10: 66 89 74 24 22 e8 06 35 db ff 8d 54 24 14 52 8d
00742a20: 8c 24 9c 00 00 00 89 bc 24 9c 00 00 00 66 89 b4
00742a30: 24 a4 00 00 00 66 89 b4 24 a6 00 00 00 e8 6e 3a
00742a40: db ff 84 5c 24 1c 89 7c 24 14 74 0a 56 8d 4c 24
00742a50: 18 e8 0a 2d db ff 8d 44 24 38 50 8d 8c 24 bc 00
00742a60: 00 00 89 bc 24 bc 00 00 00 66 89 b4 24 c4 00 00
00742a70: 00 66 89 b4 24 c6 00 00 00 e8 32 3a db ff e8 0d
00742a80: 69 02 00 8b 10 8b 92 34 01 00 00 53 8d 4c 24 5c
00742a90: 51 8b 4c 24 3c 8b 49 08 51 8d 4c 24 20 51 8b c8
00742aa0: ff d2 84 5c 24 1c 89 7c 24 14 74 0a 56 8d 4c 24
00742ab0: 18 e8 aa 2c db ff 68 20 58 4f 00 53 6a 20 8d 44
00742ac0: 24 64 50 e8 18 3c d0 ff 84 5c 24 40 89 7c 24 38
00742ad0: 5b 74 0a 56 8d 4c 24 38 e8 83 2c db ff 8b 55 00
00742ae0: 8b 42 04 8b cd ff d0 5f 5e 5d 81 c4 c8 00 00 00
00742af0: c2 04 00 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00742900 <.text+0x341900>:
  742900:	81 ec c8 00 00 00                               	sub    esp,0xc8
  742906:	55                                              	push   ebp
  742907:	8b ac 24 d0 00 00 00                            	mov    ebp,DWORD PTR [esp+0xd0]
  74290e:	56                                              	push   esi
  74290f:	57                                              	push   edi
  742910:	33 f6                                           	xor    esi,esi
  742912:	3b ee                                           	cmp    ebp,esi
  742914:	8b f9                                           	mov    edi,ecx
  742916:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  74291a:	0f 84 c7 01 00 00                               	je     0x742ae7
  742920:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  742923:	8b 10                                           	mov    edx,DWORD PTR [eax]
  742925:	8b cd                                           	mov    ecx,ebp
  742927:	ff d2                                           	call   edx
  742929:	39 77 08                                        	cmp    DWORD PTR [edi+0x8],esi
  74292c:	0f 84 ab 01 00 00                               	je     0x742add
  742932:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  742935:	53                                              	push   ebx
  742936:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  74293a:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  74293f:	51                                              	push   ecx
  742940:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  742944:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
  742948:	66 89 74 24 44                                  	mov    WORD PTR [esp+0x44],si
  74294d:	66 89 74 24 46                                  	mov    WORD PTR [esp+0x46],si
  742952:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  742956:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  74295a:	66 89 74 24 20                                  	mov    WORD PTR [esp+0x20],si
  74295f:	66 89 74 24 22                                  	mov    WORD PTR [esp+0x22],si
  742964:	e8 b7 35 db ff                                  	call   0x4f5f20
  742969:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  74296d:	52                                              	push   edx
  74296e:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  742972:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
  742976:	66 89 74 24 64                                  	mov    WORD PTR [esp+0x64],si
  74297b:	66 89 74 24 66                                  	mov    WORD PTR [esp+0x66],si
  742980:	e8 2b 3b db ff                                  	call   0x4f64b0
  742985:	bb 04 00 00 00                                  	mov    ebx,0x4
  74298a:	84 5c 24 1c                                     	test   BYTE PTR [esp+0x1c],bl
  74298e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  742992:	74 0a                                           	je     0x74299e
  742994:	56                                              	push   esi
  742995:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  742999:	e8 c2 2d db ff                                  	call   0x4f5760
  74299e:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  7429a1:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7429a5:	51                                              	push   ecx
  7429a6:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7429aa:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  7429ae:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  7429b2:	66 89 74 24 20                                  	mov    WORD PTR [esp+0x20],si
  7429b7:	66 89 74 24 22                                  	mov    WORD PTR [esp+0x22],si
  7429bc:	e8 5f 35 db ff                                  	call   0x4f5f20
  7429c1:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  7429c5:	52                                              	push   edx
  7429c6:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
  7429ca:	89 7c 24 7c                                     	mov    DWORD PTR [esp+0x7c],edi
  7429ce:	66 89 b4 24 84 00 00 00                         	mov    WORD PTR [esp+0x84],si
  7429d6:	66 89 b4 24 86 00 00 00                         	mov    WORD PTR [esp+0x86],si
  7429de:	e8 cd 3a db ff                                  	call   0x4f64b0
  7429e3:	84 5c 24 1c                                     	test   BYTE PTR [esp+0x1c],bl
  7429e7:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7429eb:	74 0a                                           	je     0x7429f7
  7429ed:	56                                              	push   esi
  7429ee:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7429f2:	e8 69 2d db ff                                  	call   0x4f5760
  7429f7:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  7429fa:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7429fe:	51                                              	push   ecx
  7429ff:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  742a03:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  742a07:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  742a0b:	66 89 74 24 20                                  	mov    WORD PTR [esp+0x20],si
  742a10:	66 89 74 24 22                                  	mov    WORD PTR [esp+0x22],si
  742a15:	e8 06 35 db ff                                  	call   0x4f5f20
  742a1a:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  742a1e:	52                                              	push   edx
  742a1f:	8d 8c 24 9c 00 00 00                            	lea    ecx,[esp+0x9c]
  742a26:	89 bc 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],edi
  742a2d:	66 89 b4 24 a4 00 00 00                         	mov    WORD PTR [esp+0xa4],si
  742a35:	66 89 b4 24 a6 00 00 00                         	mov    WORD PTR [esp+0xa6],si
  742a3d:	e8 6e 3a db ff                                  	call   0x4f64b0
  742a42:	84 5c 24 1c                                     	test   BYTE PTR [esp+0x1c],bl
  742a46:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  742a4a:	74 0a                                           	je     0x742a56
  742a4c:	56                                              	push   esi
  742a4d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  742a51:	e8 0a 2d db ff                                  	call   0x4f5760
  742a56:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  742a5a:	50                                              	push   eax
  742a5b:	8d 8c 24 bc 00 00 00                            	lea    ecx,[esp+0xbc]
  742a62:	89 bc 24 bc 00 00 00                            	mov    DWORD PTR [esp+0xbc],edi
  742a69:	66 89 b4 24 c4 00 00 00                         	mov    WORD PTR [esp+0xc4],si
  742a71:	66 89 b4 24 c6 00 00 00                         	mov    WORD PTR [esp+0xc6],si
  742a79:	e8 32 3a db ff                                  	call   0x4f64b0
  742a7e:	e8 0d 69 02 00                                  	call   0x769390
  742a83:	8b 10                                           	mov    edx,DWORD PTR [eax]
  742a85:	8b 92 34 01 00 00                               	mov    edx,DWORD PTR [edx+0x134]
  742a8b:	53                                              	push   ebx
  742a8c:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  742a90:	51                                              	push   ecx
  742a91:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  742a95:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  742a98:	51                                              	push   ecx
  742a99:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  742a9d:	51                                              	push   ecx
  742a9e:	8b c8                                           	mov    ecx,eax
  742aa0:	ff d2                                           	call   edx
  742aa2:	84 5c 24 1c                                     	test   BYTE PTR [esp+0x1c],bl
  742aa6:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  742aaa:	74 0a                                           	je     0x742ab6
  742aac:	56                                              	push   esi
  742aad:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  742ab1:	e8 aa 2c db ff                                  	call   0x4f5760
  742ab6:	68 20 58 4f 00                                  	push   0x4f5820
  742abb:	53                                              	push   ebx
  742abc:	6a 20                                           	push   0x20
  742abe:	8d 44 24 64                                     	lea    eax,[esp+0x64]
  742ac2:	50                                              	push   eax
  742ac3:	e8 18 3c d0 ff                                  	call   0x4466e0
  742ac8:	84 5c 24 40                                     	test   BYTE PTR [esp+0x40],bl
  742acc:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  742ad0:	5b                                              	pop    ebx
  742ad1:	74 0a                                           	je     0x742add
  742ad3:	56                                              	push   esi
  742ad4:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  742ad8:	e8 83 2c db ff                                  	call   0x4f5760
  742add:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  742ae0:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  742ae3:	8b cd                                           	mov    ecx,ebp
  742ae5:	ff d0                                           	call   eax
  742ae7:	5f                                              	pop    edi
  742ae8:	5e                                              	pop    esi
  742ae9:	5d                                              	pop    ebp
  742aea:	81 c4 c8 00 00 00                               	add    esp,0xc8
  742af0:	c2 04 00                                        	ret    0x4
  742af3:	cc                                              	int3
  742af4:	cc                                              	int3
  742af5:	cc                                              	int3
  742af6:	cc                                              	int3
  742af7:	cc                                              	int3
  742af8:	cc                                              	int3
  742af9:	cc                                              	int3
  742afa:	cc                                              	int3
  742afb:	cc                                              	int3
  742afc:	cc                                              	int3
  742afd:	cc                                              	int3
  742afe:	cc                                              	int3
  742aff:	cc                                              	int3

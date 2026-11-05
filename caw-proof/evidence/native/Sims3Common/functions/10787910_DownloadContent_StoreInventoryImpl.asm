# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10787910 (DownloadContent_StoreInventoryImpl)
Paired Ghidra pseudocode: 10787910_DownloadContent_StoreInventoryImpl.c
Window: [0x10787910, 0x10788000) (1776 bytes; stop exclusive)
Next defined Ghidra entry: 0x10788000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10787910: 81 ec 1c 01 00 00 53 e8 04 38 dd ff 8b d8 8d 44
10787920: 24 04 50 8d 4c 24 3c 89 5c 24 28 c7 44 24 08 98
10787930: 8c b5 10 e8 d8 fe f9 ff 8b 94 24 24 01 00 00 8d
10787940: 4c 24 38 51 52 53 e8 c5 c6 ff ff 83 c4 0c 84 c0
10787950: 75 1d 8b 44 24 38 85 c0 74 09 50 e8 30 15 19 00
10787960: 83 c4 04 33 c0 33 d2 5b 81 c4 1c 01 00 00 c3 56
10787970: 57 8d 44 24 0c 50 8d 4c 24 34 c7 44 24 10 6c 8c
10787980: b5 10 e8 89 fe f9 ff 8b 44 24 44 8b 74 24 40 3b
10787990: f0 8b f8 74 4e 56 e8 e5 09 00 00 83 c4 04 84 c0
107879a0: 74 3a 8b 4c 24 34 3b 4c 24 38 73 25 8b c1 83 c1
107879b0: 10 85 c0 89 4c 24 34 74 23 8b 0e 89 08 8b 56 04
107879c0: 89 50 04 8b 4e 08 89 48 08 8b 56 0c 89 50 0c eb
107879d0: 0b 56 51 8d 4c 24 38 e8 c4 75 d3 ff 83 c6 10 3b
107879e0: f7 75 b2 8d 44 24 0c 50 8d 4c 24 54 c7 44 24 10
107879f0: 44 8c b5 10 e8 17 fe f9 ff 8b 13 8b 52 68 8d 44
10787a00: 24 0c 50 8b 84 24 34 01 00 00 8d 4c 24 2c 51 50
10787a10: 8b cb ff d2 8b 44 24 0c 85 c0 7e 17 8b 4c 24 2c
10787a20: 51 8b 4c 24 2c 8d 14 c1 52 51 8d 4c 24 5c e8 2d
10787a30: b2 01 00 55 68 e8 90 b5 10 6a 00 6a 00 8d 4c 24
10787a40: 70 e8 4a c6 18 00 d9 e8 51 d9 1c 24 6a 01 8d 4c
10787a50: 24 6c e8 19 c0 18 00 6a 01 8d 44 24 68 50 8d 4c
10787a60: 24 1c e8 39 48 e4 ff 8b 4c 24 1c 8b 11 8b 42 24
10787a70: 6a 00 ff d0 8b 4c 24 24 8b 54 24 1c 51 6a 00 52
10787a80: 8b f8 e8 09 b1 18 00 83 c4 0c 8d 4c 24 14 50 e8
10787a90: cc 2e e4 ff 8b 4c 24 1c 8b 01 8b 50 24 6a 00 ff
10787aa0: d2 8b 4c 24 1c 8b d8 8b 44 24 24 50 6a 00 51 e8
10787ab0: dc b0 18 00 83 c4 0c 8d 4c 24 14 50 e8 9f 2e e4
10787ac0: ff 8b 4c 24 1c 8b 11 8b 42 24 6a 00 ff d0 8b 4c
10787ad0: 24 24 8b 54 24 1c 51 6a 00 52 8b e8 e8 af b0 18
10787ae0: 00 83 c4 0c 8d 4c 24 14 50 e8 72 2e e4 ff 8b 4c
10787af0: 24 1c 8b 01 8b 50 24 6a 00 ff d2 8b 4c 24 1c 8b
10787b00: f0 8b 44 24 24 50 6a 00 51 e8 82 b0 18 00 83 c4
10787b10: 0c 8d 4c 24 14 50 e8 45 2e e4 ff e8 80 26 fa ff
10787b20: 8d 54 24 54 52 8d 4c 24 38 51 8d 54 24 4c 52 8d
10787b30: 4c 24 20 51 8b c8 e8 85 33 fa ff 84 c0 75 6c 8d
10787b40: 4c 24 14 e8 b8 2d e4 ff 8b 4c 24 68 85 c9 c7 44
10787b50: 24 64 10 ad b8 10 74 05 e8 d3 be 18 00 8b 44 24
10787b60: 54 85 c0 c7 44 24 64 e4 fe aa 10 74 09 50 e8 1d
10787b70: 13 19 00 83 c4 04 8b 44 24 34 85 c0 74 09 50 e8
10787b80: 0c 13 19 00 83 c4 04 8b 44 24 44 85 c0 0f 84 df
10787b90: 03 00 00 50 e8 f7 12 19 00 83 c4 04 5d 5f 5e 33
10787ba0: c0 33 d2 5b 81 c4 1c 01 00 00 c3 6a 00 8d 8c 24
10787bb0: ac 00 00 00 e8 97 1f e4 ff 8d 94 24 a8 00 00 00
10787bc0: 52 8d 44 24 38 50 e8 85 67 00 00 83 c4 08 84 c0
10787bd0: 75 78 8d 8c 24 a8 00 00 00 e8 22 1c e4 ff 8d 4c
10787be0: 24 14 e8 19 2d e4 ff 8b 4c 24 68 85 c9 c7 44 24
10787bf0: 64 10 ad b8 10 74 05 e8 34 be 18 00 8b 44 24 54
10787c00: 85 c0 c7 44 24 64 e4 fe aa 10 74 09 50 e8 7e 12
10787c10: 19 00 83 c4 04 8b 44 24 34 85 c0 74 09 50 e8 6d
10787c20: 12 19 00 83 c4 04 8b 44 24 44 85 c0 0f 84 40 03
10787c30: 00 00 50 e8 58 12 19 00 83 c4 04 5d 5f 5e 33 c0
10787c40: 33 d2 5b 81 c4 1c 01 00 00 c3 8b 0d 94 de c8 10
10787c50: 89 4c 24 2c e8 77 d4 15 00 8d 8c 24 90 00 00 00
10787c60: e8 0b 2c e4 ff 8b 4c 24 2c 8d 94 24 90 00 00 00
10787c70: 52 e8 ba 8b 00 00 84 c0 0f 85 84 00 00 00 8d 8c
10787c80: 24 90 00 00 00 e8 76 2c e4 ff 8d 8c 24 a8 00 00
10787c90: 00 e8 6a 1b e4 ff 8d 4c 24 14 e8 61 2c e4 ff 8b
10787ca0: 4c 24 68 85 c9 c7 44 24 64 10 ad b8 10 74 05 e8
10787cb0: 7c bd 18 00 8b 44 24 54 85 c0 c7 44 24 64 e4 fe
10787cc0: aa 10 74 09 50 e8 c6 11 19 00 83 c4 04 8b 44 24
10787cd0: 34 85 c0 74 09 50 e8 b5 11 19 00 83 c4 04 8b 44
10787ce0: 24 44 85 c0 0f 84 88 02 00 00 50 e8 a0 11 19 00
10787cf0: 83 c4 04 5d 5f 5e 33 c0 33 d2 5b 81 c4 1c 01 00
10787d00: 00 c3 8b 84 24 90 00 00 00 50 8d 4c 24 38 51 e8
10787d10: 9c 3e 04 00 83 c4 08 8d 8c 24 90 00 00 00 e8 dd
10787d20: 2b e4 ff 8d 4c 24 14 e8 04 36 e4 ff 50 56 8d 4c
10787d30: 24 1c e8 09 4d 8e ff 8b 4c 24 30 8b 11 8b 52 70
10787d40: 8d 44 24 30 50 8d 44 24 30 50 8b 84 24 40 01 00
10787d50: 00 50 ff d2 8b 44 24 30 8b 4c 24 2c 8b 54 24 64
10787d60: 50 8b 42 38 51 8d 4c 24 6c ff d0 84 c0 75 78 8d
10787d70: 8c 24 a8 00 00 00 e8 85 1a e4 ff 8d 4c 24 14 e8
10787d80: 7c 2b e4 ff 8b 4c 24 68 85 c9 c7 44 24 64 10 ad
10787d90: b8 10 74 05 e8 97 bc 18 00 8b 44 24 54 85 c0 c7
10787da0: 44 24 64 e4 fe aa 10 74 09 50 e8 e1 10 19 00 83
10787db0: c4 04 8b 44 24 34 85 c0 74 09 50 e8 d0 10 19 00
10787dc0: 83 c4 04 8b 44 24 44 85 c0 0f 84 a3 01 00 00 50
10787dd0: e8 bb 10 19 00 83 c4 04 5d 5f 5e 33 c0 33 d2 5b
10787de0: 81 c4 1c 01 00 00 c3 8d 4c 24 14 e8 40 35 e4 ff
10787df0: 50 57 8d 4c 24 1c e8 45 4c 8e ff 8d 4c 24 14 51
10787e00: 8d 4c 24 48 e8 b7 3a e4 ff 84 c0 75 64 8d 8c 24
10787e10: a8 00 00 00 e8 e7 19 e4 ff 8d 4c 24 14 e8 de 2a
10787e20: e4 ff 8d 4c 24 64 e8 a5 63 89 ff 8b 44 24 54 85
10787e30: c0 74 09 50 e8 57 10 19 00 83 c4 04 8b 44 24 34
10787e40: 85 c0 74 09 50 e8 46 10 19 00 83 c4 04 8b 44 24
10787e50: 44 85 c0 0f 84 19 01 00 00 50 e8 31 10 19 00 83
10787e60: c4 04 5d 5f 5e 33 c0 33 d2 5b 81 c4 1c 01 00 00
10787e70: c3 8d 4c 24 14 e8 b6 34 e4 ff 50 53 8d 4c 24 1c
10787e80: e8 bb 4b 8e ff 8d 54 24 14 52 8d 4c 24 38 e8 2d
10787e90: 3a e4 ff 84 c0 75 64 8d 8c 24 a8 00 00 00 e8 5d
10787ea0: 19 e4 ff 8d 4c 24 14 e8 54 2a e4 ff 8d 4c 24 64
10787eb0: e8 1b 63 89 ff 8b 44 24 54 85 c0 74 09 50 e8 cd
10787ec0: 0f 19 00 83 c4 04 8b 44 24 34 85 c0 74 09 50 e8
10787ed0: bc 0f 19 00 83 c4 04 8b 44 24 44 85 c0 0f 84 8f
10787ee0: 00 00 00 50 e8 a7 0f 19 00 83 c4 04 5d 5f 5e 33
10787ef0: c0 33 d2 5b 81 c4 1c 01 00 00 c3 8d 4c 24 14 e8
10787f00: 2c 34 e4 ff 50 55 8d 4c 24 1c e8 31 4b 8e ff 8d
10787f10: 44 24 14 50 8d 4c 24 58 e8 a3 f4 f9 ff 84 c0 75
10787f20: 60 8d 8c 24 a8 00 00 00 e8 d3 18 e4 ff 8d 4c 24
10787f30: 14 e8 ca 29 e4 ff 8d 4c 24 64 e8 91 62 89 ff 8b
10787f40: 44 24 54 85 c0 74 09 50 e8 43 0f 19 00 83 c4 04
10787f50: 8b 44 24 34 85 c0 74 09 50 e8 32 0f 19 00 83 c4
10787f60: 04 8b 44 24 44 85 c0 74 09 50 e8 21 0f 19 00 83
10787f70: c4 04 5d 5f 5e 33 c0 33 d2 5b 81 c4 1c 01 00 00
10787f80: c3 e8 3a c5 fe ff 8b c8 e8 33 c3 fe ff 8b 4c 24
10787f90: 1c 51 8b c8 e8 77 74 01 00 8d 8c 24 a8 00 00 00
10787fa0: 8b f0 8b fa e8 57 18 e4 ff 8d 4c 24 14 e8 4e 29
10787fb0: e4 ff 8d 4c 24 64 e8 15 62 89 ff 8b 44 24 54 85
10787fc0: c0 74 09 50 e8 c7 0e 19 00 83 c4 04 8b 44 24 34
10787fd0: 85 c0 74 09 50 e8 b6 0e 19 00 83 c4 04 8b 44 24
10787fe0: 44 85 c0 74 09 50 e8 a5 0e 19 00 83 c4 04 5d 8b
10787ff0: d7 5f 8b c6 5e 5b 81 c4 1c 01 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10787910 <.text+0x786910>:
10787910:	81 ec 1c 01 00 00                               	sub    esp,0x11c
10787916:	53                                              	push   ebx
10787917:	e8 04 38 dd ff                                  	call   0x1055b120
1078791c:	8b d8                                           	mov    ebx,eax
1078791e:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10787922:	50                                              	push   eax
10787923:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10787927:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
1078792b:	c7 44 24 08 98 8c b5 10                         	mov    DWORD PTR [esp+0x8],0x10b58c98
10787933:	e8 d8 fe f9 ff                                  	call   0x10727810
10787938:	8b 94 24 24 01 00 00                            	mov    edx,DWORD PTR [esp+0x124]
1078793f:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10787943:	51                                              	push   ecx
10787944:	52                                              	push   edx
10787945:	53                                              	push   ebx
10787946:	e8 c5 c6 ff ff                                  	call   0x10784010
1078794b:	83 c4 0c                                        	add    esp,0xc
1078794e:	84 c0                                           	test   al,al
10787950:	75 1d                                           	jne    0x1078796f
10787952:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10787956:	85 c0                                           	test   eax,eax
10787958:	74 09                                           	je     0x10787963
1078795a:	50                                              	push   eax
1078795b:	e8 30 15 19 00                                  	call   0x10918e90
10787960:	83 c4 04                                        	add    esp,0x4
10787963:	33 c0                                           	xor    eax,eax
10787965:	33 d2                                           	xor    edx,edx
10787967:	5b                                              	pop    ebx
10787968:	81 c4 1c 01 00 00                               	add    esp,0x11c
1078796e:	c3                                              	ret
1078796f:	56                                              	push   esi
10787970:	57                                              	push   edi
10787971:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10787975:	50                                              	push   eax
10787976:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1078797a:	c7 44 24 10 6c 8c b5 10                         	mov    DWORD PTR [esp+0x10],0x10b58c6c
10787982:	e8 89 fe f9 ff                                  	call   0x10727810
10787987:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1078798b:	8b 74 24 40                                     	mov    esi,DWORD PTR [esp+0x40]
1078798f:	3b f0                                           	cmp    esi,eax
10787991:	8b f8                                           	mov    edi,eax
10787993:	74 4e                                           	je     0x107879e3
10787995:	56                                              	push   esi
10787996:	e8 e5 09 00 00                                  	call   0x10788380
1078799b:	83 c4 04                                        	add    esp,0x4
1078799e:	84 c0                                           	test   al,al
107879a0:	74 3a                                           	je     0x107879dc
107879a2:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
107879a6:	3b 4c 24 38                                     	cmp    ecx,DWORD PTR [esp+0x38]
107879aa:	73 25                                           	jae    0x107879d1
107879ac:	8b c1                                           	mov    eax,ecx
107879ae:	83 c1 10                                        	add    ecx,0x10
107879b1:	85 c0                                           	test   eax,eax
107879b3:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
107879b7:	74 23                                           	je     0x107879dc
107879b9:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
107879bb:	89 08                                           	mov    DWORD PTR [eax],ecx
107879bd:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
107879c0:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
107879c3:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
107879c6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
107879c9:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
107879cc:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
107879cf:	eb 0b                                           	jmp    0x107879dc
107879d1:	56                                              	push   esi
107879d2:	51                                              	push   ecx
107879d3:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
107879d7:	e8 c4 75 d3 ff                                  	call   0x104befa0
107879dc:	83 c6 10                                        	add    esi,0x10
107879df:	3b f7                                           	cmp    esi,edi
107879e1:	75 b2                                           	jne    0x10787995
107879e3:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
107879e7:	50                                              	push   eax
107879e8:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
107879ec:	c7 44 24 10 44 8c b5 10                         	mov    DWORD PTR [esp+0x10],0x10b58c44
107879f4:	e8 17 fe f9 ff                                  	call   0x10727810
107879f9:	8b 13                                           	mov    edx,DWORD PTR [ebx]
107879fb:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
107879fe:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10787a02:	50                                              	push   eax
10787a03:	8b 84 24 34 01 00 00                            	mov    eax,DWORD PTR [esp+0x134]
10787a0a:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10787a0e:	51                                              	push   ecx
10787a0f:	50                                              	push   eax
10787a10:	8b cb                                           	mov    ecx,ebx
10787a12:	ff d2                                           	call   edx
10787a14:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10787a18:	85 c0                                           	test   eax,eax
10787a1a:	7e 17                                           	jle    0x10787a33
10787a1c:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10787a20:	51                                              	push   ecx
10787a21:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10787a25:	8d 14 c1                                        	lea    edx,[ecx+eax*8]
10787a28:	52                                              	push   edx
10787a29:	51                                              	push   ecx
10787a2a:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
10787a2e:	e8 2d b2 01 00                                  	call   0x107a2c60
10787a33:	55                                              	push   ebp
10787a34:	68 e8 90 b5 10                                  	push   0x10b590e8
10787a39:	6a 00                                           	push   0x0
10787a3b:	6a 00                                           	push   0x0
10787a3d:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
10787a41:	e8 4a c6 18 00                                  	call   0x10914090
10787a46:	d9 e8                                           	fld1
10787a48:	51                                              	push   ecx
10787a49:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10787a4c:	6a 01                                           	push   0x1
10787a4e:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
10787a52:	e8 19 c0 18 00                                  	call   0x10913a70
10787a57:	6a 01                                           	push   0x1
10787a59:	8d 44 24 68                                     	lea    eax,[esp+0x68]
10787a5d:	50                                              	push   eax
10787a5e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10787a62:	e8 39 48 e4 ff                                  	call   0x105cc2a0
10787a67:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10787a6b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10787a6d:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
10787a70:	6a 00                                           	push   0x0
10787a72:	ff d0                                           	call   eax
10787a74:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10787a78:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10787a7c:	51                                              	push   ecx
10787a7d:	6a 00                                           	push   0x0
10787a7f:	52                                              	push   edx
10787a80:	8b f8                                           	mov    edi,eax
10787a82:	e8 09 b1 18 00                                  	call   0x10912b90
10787a87:	83 c4 0c                                        	add    esp,0xc
10787a8a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787a8e:	50                                              	push   eax
10787a8f:	e8 cc 2e e4 ff                                  	call   0x105ca960
10787a94:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10787a98:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10787a9a:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
10787a9d:	6a 00                                           	push   0x0
10787a9f:	ff d2                                           	call   edx
10787aa1:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10787aa5:	8b d8                                           	mov    ebx,eax
10787aa7:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10787aab:	50                                              	push   eax
10787aac:	6a 00                                           	push   0x0
10787aae:	51                                              	push   ecx
10787aaf:	e8 dc b0 18 00                                  	call   0x10912b90
10787ab4:	83 c4 0c                                        	add    esp,0xc
10787ab7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787abb:	50                                              	push   eax
10787abc:	e8 9f 2e e4 ff                                  	call   0x105ca960
10787ac1:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10787ac5:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10787ac7:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
10787aca:	6a 00                                           	push   0x0
10787acc:	ff d0                                           	call   eax
10787ace:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10787ad2:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10787ad6:	51                                              	push   ecx
10787ad7:	6a 00                                           	push   0x0
10787ad9:	52                                              	push   edx
10787ada:	8b e8                                           	mov    ebp,eax
10787adc:	e8 af b0 18 00                                  	call   0x10912b90
10787ae1:	83 c4 0c                                        	add    esp,0xc
10787ae4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787ae8:	50                                              	push   eax
10787ae9:	e8 72 2e e4 ff                                  	call   0x105ca960
10787aee:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10787af2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10787af4:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
10787af7:	6a 00                                           	push   0x0
10787af9:	ff d2                                           	call   edx
10787afb:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10787aff:	8b f0                                           	mov    esi,eax
10787b01:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10787b05:	50                                              	push   eax
10787b06:	6a 00                                           	push   0x0
10787b08:	51                                              	push   ecx
10787b09:	e8 82 b0 18 00                                  	call   0x10912b90
10787b0e:	83 c4 0c                                        	add    esp,0xc
10787b11:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787b15:	50                                              	push   eax
10787b16:	e8 45 2e e4 ff                                  	call   0x105ca960
10787b1b:	e8 80 26 fa ff                                  	call   0x1072a1a0
10787b20:	8d 54 24 54                                     	lea    edx,[esp+0x54]
10787b24:	52                                              	push   edx
10787b25:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10787b29:	51                                              	push   ecx
10787b2a:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
10787b2e:	52                                              	push   edx
10787b2f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10787b33:	51                                              	push   ecx
10787b34:	8b c8                                           	mov    ecx,eax
10787b36:	e8 85 33 fa ff                                  	call   0x1072aec0
10787b3b:	84 c0                                           	test   al,al
10787b3d:	75 6c                                           	jne    0x10787bab
10787b3f:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787b43:	e8 b8 2d e4 ff                                  	call   0x105ca900
10787b48:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
10787b4c:	85 c9                                           	test   ecx,ecx
10787b4e:	c7 44 24 64 10 ad b8 10                         	mov    DWORD PTR [esp+0x64],0x10b8ad10
10787b56:	74 05                                           	je     0x10787b5d
10787b58:	e8 d3 be 18 00                                  	call   0x10913a30
10787b5d:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10787b61:	85 c0                                           	test   eax,eax
10787b63:	c7 44 24 64 e4 fe aa 10                         	mov    DWORD PTR [esp+0x64],0x10aafee4
10787b6b:	74 09                                           	je     0x10787b76
10787b6d:	50                                              	push   eax
10787b6e:	e8 1d 13 19 00                                  	call   0x10918e90
10787b73:	83 c4 04                                        	add    esp,0x4
10787b76:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10787b7a:	85 c0                                           	test   eax,eax
10787b7c:	74 09                                           	je     0x10787b87
10787b7e:	50                                              	push   eax
10787b7f:	e8 0c 13 19 00                                  	call   0x10918e90
10787b84:	83 c4 04                                        	add    esp,0x4
10787b87:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10787b8b:	85 c0                                           	test   eax,eax
10787b8d:	0f 84 df 03 00 00                               	je     0x10787f72
10787b93:	50                                              	push   eax
10787b94:	e8 f7 12 19 00                                  	call   0x10918e90
10787b99:	83 c4 04                                        	add    esp,0x4
10787b9c:	5d                                              	pop    ebp
10787b9d:	5f                                              	pop    edi
10787b9e:	5e                                              	pop    esi
10787b9f:	33 c0                                           	xor    eax,eax
10787ba1:	33 d2                                           	xor    edx,edx
10787ba3:	5b                                              	pop    ebx
10787ba4:	81 c4 1c 01 00 00                               	add    esp,0x11c
10787baa:	c3                                              	ret
10787bab:	6a 00                                           	push   0x0
10787bad:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
10787bb4:	e8 97 1f e4 ff                                  	call   0x105c9b50
10787bb9:	8d 94 24 a8 00 00 00                            	lea    edx,[esp+0xa8]
10787bc0:	52                                              	push   edx
10787bc1:	8d 44 24 38                                     	lea    eax,[esp+0x38]
10787bc5:	50                                              	push   eax
10787bc6:	e8 85 67 00 00                                  	call   0x1078e350
10787bcb:	83 c4 08                                        	add    esp,0x8
10787bce:	84 c0                                           	test   al,al
10787bd0:	75 78                                           	jne    0x10787c4a
10787bd2:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10787bd9:	e8 22 1c e4 ff                                  	call   0x105c9800
10787bde:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787be2:	e8 19 2d e4 ff                                  	call   0x105ca900
10787be7:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
10787beb:	85 c9                                           	test   ecx,ecx
10787bed:	c7 44 24 64 10 ad b8 10                         	mov    DWORD PTR [esp+0x64],0x10b8ad10
10787bf5:	74 05                                           	je     0x10787bfc
10787bf7:	e8 34 be 18 00                                  	call   0x10913a30
10787bfc:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10787c00:	85 c0                                           	test   eax,eax
10787c02:	c7 44 24 64 e4 fe aa 10                         	mov    DWORD PTR [esp+0x64],0x10aafee4
10787c0a:	74 09                                           	je     0x10787c15
10787c0c:	50                                              	push   eax
10787c0d:	e8 7e 12 19 00                                  	call   0x10918e90
10787c12:	83 c4 04                                        	add    esp,0x4
10787c15:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10787c19:	85 c0                                           	test   eax,eax
10787c1b:	74 09                                           	je     0x10787c26
10787c1d:	50                                              	push   eax
10787c1e:	e8 6d 12 19 00                                  	call   0x10918e90
10787c23:	83 c4 04                                        	add    esp,0x4
10787c26:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10787c2a:	85 c0                                           	test   eax,eax
10787c2c:	0f 84 40 03 00 00                               	je     0x10787f72
10787c32:	50                                              	push   eax
10787c33:	e8 58 12 19 00                                  	call   0x10918e90
10787c38:	83 c4 04                                        	add    esp,0x4
10787c3b:	5d                                              	pop    ebp
10787c3c:	5f                                              	pop    edi
10787c3d:	5e                                              	pop    esi
10787c3e:	33 c0                                           	xor    eax,eax
10787c40:	33 d2                                           	xor    edx,edx
10787c42:	5b                                              	pop    ebx
10787c43:	81 c4 1c 01 00 00                               	add    esp,0x11c
10787c49:	c3                                              	ret
10787c4a:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
10787c50:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
10787c54:	e8 77 d4 15 00                                  	call   0x108e50d0
10787c59:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
10787c60:	e8 0b 2c e4 ff                                  	call   0x105ca870
10787c65:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10787c69:	8d 94 24 90 00 00 00                            	lea    edx,[esp+0x90]
10787c70:	52                                              	push   edx
10787c71:	e8 ba 8b 00 00                                  	call   0x10790830
10787c76:	84 c0                                           	test   al,al
10787c78:	0f 85 84 00 00 00                               	jne    0x10787d02
10787c7e:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
10787c85:	e8 76 2c e4 ff                                  	call   0x105ca900
10787c8a:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10787c91:	e8 6a 1b e4 ff                                  	call   0x105c9800
10787c96:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787c9a:	e8 61 2c e4 ff                                  	call   0x105ca900
10787c9f:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
10787ca3:	85 c9                                           	test   ecx,ecx
10787ca5:	c7 44 24 64 10 ad b8 10                         	mov    DWORD PTR [esp+0x64],0x10b8ad10
10787cad:	74 05                                           	je     0x10787cb4
10787caf:	e8 7c bd 18 00                                  	call   0x10913a30
10787cb4:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10787cb8:	85 c0                                           	test   eax,eax
10787cba:	c7 44 24 64 e4 fe aa 10                         	mov    DWORD PTR [esp+0x64],0x10aafee4
10787cc2:	74 09                                           	je     0x10787ccd
10787cc4:	50                                              	push   eax
10787cc5:	e8 c6 11 19 00                                  	call   0x10918e90
10787cca:	83 c4 04                                        	add    esp,0x4
10787ccd:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10787cd1:	85 c0                                           	test   eax,eax
10787cd3:	74 09                                           	je     0x10787cde
10787cd5:	50                                              	push   eax
10787cd6:	e8 b5 11 19 00                                  	call   0x10918e90
10787cdb:	83 c4 04                                        	add    esp,0x4
10787cde:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10787ce2:	85 c0                                           	test   eax,eax
10787ce4:	0f 84 88 02 00 00                               	je     0x10787f72
10787cea:	50                                              	push   eax
10787ceb:	e8 a0 11 19 00                                  	call   0x10918e90
10787cf0:	83 c4 04                                        	add    esp,0x4
10787cf3:	5d                                              	pop    ebp
10787cf4:	5f                                              	pop    edi
10787cf5:	5e                                              	pop    esi
10787cf6:	33 c0                                           	xor    eax,eax
10787cf8:	33 d2                                           	xor    edx,edx
10787cfa:	5b                                              	pop    ebx
10787cfb:	81 c4 1c 01 00 00                               	add    esp,0x11c
10787d01:	c3                                              	ret
10787d02:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [esp+0x90]
10787d09:	50                                              	push   eax
10787d0a:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10787d0e:	51                                              	push   ecx
10787d0f:	e8 9c 3e 04 00                                  	call   0x107cbbb0
10787d14:	83 c4 08                                        	add    esp,0x8
10787d17:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
10787d1e:	e8 dd 2b e4 ff                                  	call   0x105ca900
10787d23:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787d27:	e8 04 36 e4 ff                                  	call   0x105cb330
10787d2c:	50                                              	push   eax
10787d2d:	56                                              	push   esi
10787d2e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10787d32:	e8 09 4d 8e ff                                  	call   0x1006ca40
10787d37:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10787d3b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10787d3d:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
10787d40:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10787d44:	50                                              	push   eax
10787d45:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10787d49:	50                                              	push   eax
10787d4a:	8b 84 24 40 01 00 00                            	mov    eax,DWORD PTR [esp+0x140]
10787d51:	50                                              	push   eax
10787d52:	ff d2                                           	call   edx
10787d54:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10787d58:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10787d5c:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
10787d60:	50                                              	push   eax
10787d61:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
10787d64:	51                                              	push   ecx
10787d65:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
10787d69:	ff d0                                           	call   eax
10787d6b:	84 c0                                           	test   al,al
10787d6d:	75 78                                           	jne    0x10787de7
10787d6f:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10787d76:	e8 85 1a e4 ff                                  	call   0x105c9800
10787d7b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787d7f:	e8 7c 2b e4 ff                                  	call   0x105ca900
10787d84:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
10787d88:	85 c9                                           	test   ecx,ecx
10787d8a:	c7 44 24 64 10 ad b8 10                         	mov    DWORD PTR [esp+0x64],0x10b8ad10
10787d92:	74 05                                           	je     0x10787d99
10787d94:	e8 97 bc 18 00                                  	call   0x10913a30
10787d99:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10787d9d:	85 c0                                           	test   eax,eax
10787d9f:	c7 44 24 64 e4 fe aa 10                         	mov    DWORD PTR [esp+0x64],0x10aafee4
10787da7:	74 09                                           	je     0x10787db2
10787da9:	50                                              	push   eax
10787daa:	e8 e1 10 19 00                                  	call   0x10918e90
10787daf:	83 c4 04                                        	add    esp,0x4
10787db2:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10787db6:	85 c0                                           	test   eax,eax
10787db8:	74 09                                           	je     0x10787dc3
10787dba:	50                                              	push   eax
10787dbb:	e8 d0 10 19 00                                  	call   0x10918e90
10787dc0:	83 c4 04                                        	add    esp,0x4
10787dc3:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10787dc7:	85 c0                                           	test   eax,eax
10787dc9:	0f 84 a3 01 00 00                               	je     0x10787f72
10787dcf:	50                                              	push   eax
10787dd0:	e8 bb 10 19 00                                  	call   0x10918e90
10787dd5:	83 c4 04                                        	add    esp,0x4
10787dd8:	5d                                              	pop    ebp
10787dd9:	5f                                              	pop    edi
10787dda:	5e                                              	pop    esi
10787ddb:	33 c0                                           	xor    eax,eax
10787ddd:	33 d2                                           	xor    edx,edx
10787ddf:	5b                                              	pop    ebx
10787de0:	81 c4 1c 01 00 00                               	add    esp,0x11c
10787de6:	c3                                              	ret
10787de7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787deb:	e8 40 35 e4 ff                                  	call   0x105cb330
10787df0:	50                                              	push   eax
10787df1:	57                                              	push   edi
10787df2:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10787df6:	e8 45 4c 8e ff                                  	call   0x1006ca40
10787dfb:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787dff:	51                                              	push   ecx
10787e00:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10787e04:	e8 b7 3a e4 ff                                  	call   0x105cb8c0
10787e09:	84 c0                                           	test   al,al
10787e0b:	75 64                                           	jne    0x10787e71
10787e0d:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10787e14:	e8 e7 19 e4 ff                                  	call   0x105c9800
10787e19:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787e1d:	e8 de 2a e4 ff                                  	call   0x105ca900
10787e22:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10787e26:	e8 a5 63 89 ff                                  	call   0x1001e1d0
10787e2b:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10787e2f:	85 c0                                           	test   eax,eax
10787e31:	74 09                                           	je     0x10787e3c
10787e33:	50                                              	push   eax
10787e34:	e8 57 10 19 00                                  	call   0x10918e90
10787e39:	83 c4 04                                        	add    esp,0x4
10787e3c:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10787e40:	85 c0                                           	test   eax,eax
10787e42:	74 09                                           	je     0x10787e4d
10787e44:	50                                              	push   eax
10787e45:	e8 46 10 19 00                                  	call   0x10918e90
10787e4a:	83 c4 04                                        	add    esp,0x4
10787e4d:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10787e51:	85 c0                                           	test   eax,eax
10787e53:	0f 84 19 01 00 00                               	je     0x10787f72
10787e59:	50                                              	push   eax
10787e5a:	e8 31 10 19 00                                  	call   0x10918e90
10787e5f:	83 c4 04                                        	add    esp,0x4
10787e62:	5d                                              	pop    ebp
10787e63:	5f                                              	pop    edi
10787e64:	5e                                              	pop    esi
10787e65:	33 c0                                           	xor    eax,eax
10787e67:	33 d2                                           	xor    edx,edx
10787e69:	5b                                              	pop    ebx
10787e6a:	81 c4 1c 01 00 00                               	add    esp,0x11c
10787e70:	c3                                              	ret
10787e71:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787e75:	e8 b6 34 e4 ff                                  	call   0x105cb330
10787e7a:	50                                              	push   eax
10787e7b:	53                                              	push   ebx
10787e7c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10787e80:	e8 bb 4b 8e ff                                  	call   0x1006ca40
10787e85:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10787e89:	52                                              	push   edx
10787e8a:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10787e8e:	e8 2d 3a e4 ff                                  	call   0x105cb8c0
10787e93:	84 c0                                           	test   al,al
10787e95:	75 64                                           	jne    0x10787efb
10787e97:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10787e9e:	e8 5d 19 e4 ff                                  	call   0x105c9800
10787ea3:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787ea7:	e8 54 2a e4 ff                                  	call   0x105ca900
10787eac:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10787eb0:	e8 1b 63 89 ff                                  	call   0x1001e1d0
10787eb5:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10787eb9:	85 c0                                           	test   eax,eax
10787ebb:	74 09                                           	je     0x10787ec6
10787ebd:	50                                              	push   eax
10787ebe:	e8 cd 0f 19 00                                  	call   0x10918e90
10787ec3:	83 c4 04                                        	add    esp,0x4
10787ec6:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10787eca:	85 c0                                           	test   eax,eax
10787ecc:	74 09                                           	je     0x10787ed7
10787ece:	50                                              	push   eax
10787ecf:	e8 bc 0f 19 00                                  	call   0x10918e90
10787ed4:	83 c4 04                                        	add    esp,0x4
10787ed7:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10787edb:	85 c0                                           	test   eax,eax
10787edd:	0f 84 8f 00 00 00                               	je     0x10787f72
10787ee3:	50                                              	push   eax
10787ee4:	e8 a7 0f 19 00                                  	call   0x10918e90
10787ee9:	83 c4 04                                        	add    esp,0x4
10787eec:	5d                                              	pop    ebp
10787eed:	5f                                              	pop    edi
10787eee:	5e                                              	pop    esi
10787eef:	33 c0                                           	xor    eax,eax
10787ef1:	33 d2                                           	xor    edx,edx
10787ef3:	5b                                              	pop    ebx
10787ef4:	81 c4 1c 01 00 00                               	add    esp,0x11c
10787efa:	c3                                              	ret
10787efb:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787eff:	e8 2c 34 e4 ff                                  	call   0x105cb330
10787f04:	50                                              	push   eax
10787f05:	55                                              	push   ebp
10787f06:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10787f0a:	e8 31 4b 8e ff                                  	call   0x1006ca40
10787f0f:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10787f13:	50                                              	push   eax
10787f14:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
10787f18:	e8 a3 f4 f9 ff                                  	call   0x107273c0
10787f1d:	84 c0                                           	test   al,al
10787f1f:	75 60                                           	jne    0x10787f81
10787f21:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10787f28:	e8 d3 18 e4 ff                                  	call   0x105c9800
10787f2d:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787f31:	e8 ca 29 e4 ff                                  	call   0x105ca900
10787f36:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10787f3a:	e8 91 62 89 ff                                  	call   0x1001e1d0
10787f3f:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10787f43:	85 c0                                           	test   eax,eax
10787f45:	74 09                                           	je     0x10787f50
10787f47:	50                                              	push   eax
10787f48:	e8 43 0f 19 00                                  	call   0x10918e90
10787f4d:	83 c4 04                                        	add    esp,0x4
10787f50:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10787f54:	85 c0                                           	test   eax,eax
10787f56:	74 09                                           	je     0x10787f61
10787f58:	50                                              	push   eax
10787f59:	e8 32 0f 19 00                                  	call   0x10918e90
10787f5e:	83 c4 04                                        	add    esp,0x4
10787f61:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10787f65:	85 c0                                           	test   eax,eax
10787f67:	74 09                                           	je     0x10787f72
10787f69:	50                                              	push   eax
10787f6a:	e8 21 0f 19 00                                  	call   0x10918e90
10787f6f:	83 c4 04                                        	add    esp,0x4
10787f72:	5d                                              	pop    ebp
10787f73:	5f                                              	pop    edi
10787f74:	5e                                              	pop    esi
10787f75:	33 c0                                           	xor    eax,eax
10787f77:	33 d2                                           	xor    edx,edx
10787f79:	5b                                              	pop    ebx
10787f7a:	81 c4 1c 01 00 00                               	add    esp,0x11c
10787f80:	c3                                              	ret
10787f81:	e8 3a c5 fe ff                                  	call   0x107744c0
10787f86:	8b c8                                           	mov    ecx,eax
10787f88:	e8 33 c3 fe ff                                  	call   0x107742c0
10787f8d:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10787f91:	51                                              	push   ecx
10787f92:	8b c8                                           	mov    ecx,eax
10787f94:	e8 77 74 01 00                                  	call   0x1079f410
10787f99:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10787fa0:	8b f0                                           	mov    esi,eax
10787fa2:	8b fa                                           	mov    edi,edx
10787fa4:	e8 57 18 e4 ff                                  	call   0x105c9800
10787fa9:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10787fad:	e8 4e 29 e4 ff                                  	call   0x105ca900
10787fb2:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10787fb6:	e8 15 62 89 ff                                  	call   0x1001e1d0
10787fbb:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10787fbf:	85 c0                                           	test   eax,eax
10787fc1:	74 09                                           	je     0x10787fcc
10787fc3:	50                                              	push   eax
10787fc4:	e8 c7 0e 19 00                                  	call   0x10918e90
10787fc9:	83 c4 04                                        	add    esp,0x4
10787fcc:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10787fd0:	85 c0                                           	test   eax,eax
10787fd2:	74 09                                           	je     0x10787fdd
10787fd4:	50                                              	push   eax
10787fd5:	e8 b6 0e 19 00                                  	call   0x10918e90
10787fda:	83 c4 04                                        	add    esp,0x4
10787fdd:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10787fe1:	85 c0                                           	test   eax,eax
10787fe3:	74 09                                           	je     0x10787fee
10787fe5:	50                                              	push   eax
10787fe6:	e8 a5 0e 19 00                                  	call   0x10918e90
10787feb:	83 c4 04                                        	add    esp,0x4
10787fee:	5d                                              	pop    ebp
10787fef:	8b d7                                           	mov    edx,edi
10787ff1:	5f                                              	pop    edi
10787ff2:	8b c6                                           	mov    eax,esi
10787ff4:	5e                                              	pop    esi
10787ff5:	5b                                              	pop    ebx
10787ff6:	81 c4 1c 01 00 00                               	add    esp,0x11c
10787ffc:	c3                                              	ret
10787ffd:	cc                                              	int3
10787ffe:	cc                                              	int3
10787fff:	cc                                              	int3

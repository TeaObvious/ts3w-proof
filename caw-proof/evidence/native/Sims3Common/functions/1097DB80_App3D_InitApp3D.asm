# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097db80 (App3D_InitApp3D)
Paired Ghidra pseudocode: 1097DB80_App3D_InitApp3D.c
Window: [0x1097db80, 0x1097e060) (1248 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097e060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097db80: 81 ec e4 08 00 00 55 56 57 ff 15 ac b2 aa 10 50
1097db90: e8 1b f3 c4 ff 68 60 60 b9 10 e8 b1 05 be ff 6a
1097dba0: ff 68 40 75 ae 10 6a 3f 68 10 d7 ca 10 e8 3e 9d
1097dbb0: fa ff 6a ff 68 90 41 ab 10 6a 3f 68 90 d6 ca 10
1097dbc0: e8 2b 9d fa ff 6a ff 68 90 41 ab 10 6a 3f 68 10
1097dbd0: d6 ca 10 e8 18 9d fa ff 6a ff 68 a4 75 ae 10 6a
1097dbe0: 3f 68 90 d5 ca 10 e8 05 9d fa ff 83 c4 48 6a ff
1097dbf0: 68 60 75 ae 10 6a 3f 68 10 d5 ca 10 e8 ef 9c fa
1097dc00: ff 83 c4 10 8d 4c 24 1c e8 d3 8d a0 ff 8b 84 24
1097dc10: 00 09 00 00 8b 8c 24 fc 08 00 00 8b 94 24 04 09
1097dc20: 00 00 8b ac 24 0c 09 00 00 89 84 24 b8 06 00 00
1097dc30: 8b 84 24 08 09 00 00 89 84 24 dc 06 00 00 8a 84
1097dc40: 24 24 09 00 00 88 84 24 d2 06 00 00 8b 84 24 f8
1097dc50: 08 00 00 85 c0 89 8c 24 b4 06 00 00 8b 8c 24 14
1097dc60: 09 00 00 89 94 24 d4 06 00 00 8b 94 24 18 09 00
1097dc70: 00 89 ac 24 d8 06 00 00 c6 84 24 c5 06 00 00 00
1097dc80: 89 8c 24 c8 06 00 00 89 94 24 e4 06 00 00 c6 84
1097dc90: 24 d0 06 00 00 00 74 13 68 04 01 00 00 50 8d 4c
1097dca0: 24 24 51 e8 d8 41 fb ff 83 c4 0c 8b 84 24 20 09
1097dcb0: 00 00 85 c0 74 16 68 04 01 00 00 50 8d 94 24 34
1097dcc0: 04 00 00 52 e8 b7 41 fb ff 83 c4 0c 8b bc 24 f4
1097dcd0: 08 00 00 85 ff 74 21 66 83 3f 00 74 1b 57 68 4c
1097dce0: 60 b9 10 8d 84 24 2c 02 00 00 68 04 01 00 00 50
1097dcf0: e8 1b 87 fa ff 83 c4 10 33 f6 e8 11 d6 a1 ff 50
1097dd00: e8 7b c4 a1 ff 68 00 01 00 00 56 8d 8c 24 f4 06
1097dd10: 00 00 51 6a 0a e8 d6 31 f9 ff 83 c4 14 85 c0 7e
1097dd20: 31 68 04 01 00 00 8d 54 24 20 52 8d 84 24 f0 06
1097dd30: 00 00 50 e8 38 42 fb ff 68 08 02 00 00 8d 8c 24
1097dd40: f8 06 00 00 68 34 41 ab 10 51 e8 21 42 fb ff 83
1097dd50: c4 18 8d 94 24 e8 06 00 00 52 e8 31 18 00 00 50
1097dd60: e8 1b 18 00 00 50 57 b9 c0 7d cb 10 e8 3f b3 a0
1097dd70: ff 8b 84 24 1c 09 00 00 85 c0 74 0e 50 68 d4 51
1097dd80: af 10 e8 39 aa a0 ff 83 c4 08 6a 01 b8 44 82 ca
1097dd90: 10 6a 00 89 44 24 14 89 44 24 18 6a 01 8d 44 24
1097dda0: 18 50 b9 c0 26 c7 10 c7 44 24 28 38 60 b9 10 c7
1097ddb0: 44 24 24 46 82 ca 10 e8 54 29 a1 ff 84 c0 75 2b
1097ddc0: 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83 f9 02
1097ddd0: 7e 0d 85 c0 74 09 50 e8 b4 b0 f9 ff 83 c4 04 5f
1097dde0: 5e 33 c0 5d 81 c4 e4 08 00 00 c3 8d 54 24 1c 52
1097ddf0: e8 ab 8e a0 ff 83 c4 04 84 c0 0f 84 1c 02 00 00
1097de00: 80 bc 24 10 09 00 00 00 74 14 e8 e1 8a b9 ff e8
1097de10: 5c fd c5 ff e8 67 48 c6 ff e8 e2 45 c6 ff 85 ed
1097de20: 74 05 e8 99 fb ff ff 39 b4 24 e4 06 00 00 75 60
1097de30: b9 c0 26 c7 10 e8 06 08 a1 ff 8b 00 6a 00 6a 00
1097de40: 68 c0 d4 97 10 6a 00 50 e8 b3 f2 bd ff 6a 00 e8
1097de50: 1c e2 da ff 6a 00 6a 00 6a 00 6a 00 68 18 60 b9
1097de60: 10 6a 10 e8 48 b0 f9 ff 8b f0 83 c4 30 85 f6 74
1097de70: 0f 8b ce e8 58 77 da ff c7 06 54 5f b9 10 eb 02
1097de80: 33 f6 56 e8 98 79 da ff 83 c4 04 e8 00 71 b8 ff
1097de90: 68 fc 5f b9 10 57 e8 35 43 fb ff 83 c4 08 85 c0
1097dea0: 74 12 68 ec 5f b9 10 57 e8 23 43 fb ff 83 c4 08
1097deb0: 85 c0 75 0a 6a 02 e8 25 5b 8d ff 83 c4 04 8b 0d
1097dec0: 14 2d c7 10 85 c9 74 0a 68 00 22 92 05 e8 6e b1
1097ded0: a1 ff e8 a9 8b a0 ff 84 c0 0f 84 e1 fe ff ff e8
1097dee0: 3c d2 bd ff 8b f0 85 f6 74 16 8b 16 8b 42 44 6a
1097def0: 00 8b ce ff d0 8b 16 8b 42 38 6a 01 8b ce ff d0
1097df00: 83 bc 24 b4 06 00 00 00 76 5d 6a 00 6a 00 6a 00
1097df10: b9 b0 d7 ca 10 e8 d6 a8 b0 ff 6a 00 68 b2 45 e9
1097df20: ef 6a 01 e8 18 6b f0 ff 83 c4 04 8b c8 e8 ae 7c
1097df30: f1 ff 50 b9 48 7b cb 10 e8 23 7b f1 ff 6a 01 e8
1097df40: 8c 69 f0 ff 8b 10 83 c4 04 6a 01 6a ff 68 ff ff
1097df50: 00 00 6a 00 6a 00 8b c8 8b 42 20 68 48 7b cb 10
1097df60: ff d0 a3 98 d7 ca 10 e8 e4 d0 00 00 80 bc 24 10
1097df70: 09 00 00 00 8b f0 0f 84 a0 00 00 00 e8 1f 2d c6
1097df80: ff e8 ba b7 c5 ff e8 65 e4 fb ff e8 40 be fc ff
1097df90: e8 5b be fc ff e8 76 be fc ff e8 41 1e ff ff e8
1097dfa0: 6c 28 ff ff e8 87 31 fd ff e8 a2 31 fd ff e8 2d
1097dfb0: 6c fe ff e8 88 57 fe ff e8 73 95 fe ff e8 8e 95
1097dfc0: fe ff e8 c9 74 fd ff e8 e4 82 ff ff e8 9f 82 ff
1097dfd0: ff e8 ba 82 ff ff e8 55 66 fe ff e8 70 66 fe ff
1097dfe0: e8 0b c8 fe ff e8 26 c8 fe ff e8 61 ec fe ff e8
1097dff0: 7c ec fe ff e8 97 f0 fc ff e8 b2 f0 fc ff e8 6d
1097e000: 09 ff ff e8 88 df c5 ff e8 93 d4 be ff e8 de d4
1097e010: be ff e8 29 d5 be ff e8 14 83 fe ff b9 38 26 c7
1097e020: 10 e8 8a 04 a1 ff 6a 01 b9 38 26 c7 10 e8 1e 03
1097e030: a1 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83
1097e040: f9 02 7e 0d 85 c0 74 09 50 e8 42 ae f9 ff 83 c4
1097e050: 04 5f 8b c6 5e 5d 81 c4 e4 08 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
1097db80 <.text+0x97cb80>:
1097db80:	81 ec e4 08 00 00                               	sub    esp,0x8e4
1097db86:	55                                              	push   ebp
1097db87:	56                                              	push   esi
1097db88:	57                                              	push   edi
1097db89:	ff 15 ac b2 aa 10                               	call   DWORD PTR ds:0x10aab2ac
1097db8f:	50                                              	push   eax
1097db90:	e8 1b f3 c4 ff                                  	call   0x105cceb0
1097db95:	68 60 60 b9 10                                  	push   0x10b96060
1097db9a:	e8 b1 05 be ff                                  	call   0x1055e150
1097db9f:	6a ff                                           	push   0xffffffff
1097dba1:	68 40 75 ae 10                                  	push   0x10ae7540
1097dba6:	6a 3f                                           	push   0x3f
1097dba8:	68 10 d7 ca 10                                  	push   0x10cad710
1097dbad:	e8 3e 9d fa ff                                  	call   0x109278f0
1097dbb2:	6a ff                                           	push   0xffffffff
1097dbb4:	68 90 41 ab 10                                  	push   0x10ab4190
1097dbb9:	6a 3f                                           	push   0x3f
1097dbbb:	68 90 d6 ca 10                                  	push   0x10cad690
1097dbc0:	e8 2b 9d fa ff                                  	call   0x109278f0
1097dbc5:	6a ff                                           	push   0xffffffff
1097dbc7:	68 90 41 ab 10                                  	push   0x10ab4190
1097dbcc:	6a 3f                                           	push   0x3f
1097dbce:	68 10 d6 ca 10                                  	push   0x10cad610
1097dbd3:	e8 18 9d fa ff                                  	call   0x109278f0
1097dbd8:	6a ff                                           	push   0xffffffff
1097dbda:	68 a4 75 ae 10                                  	push   0x10ae75a4
1097dbdf:	6a 3f                                           	push   0x3f
1097dbe1:	68 90 d5 ca 10                                  	push   0x10cad590
1097dbe6:	e8 05 9d fa ff                                  	call   0x109278f0
1097dbeb:	83 c4 48                                        	add    esp,0x48
1097dbee:	6a ff                                           	push   0xffffffff
1097dbf0:	68 60 75 ae 10                                  	push   0x10ae7560
1097dbf5:	6a 3f                                           	push   0x3f
1097dbf7:	68 10 d5 ca 10                                  	push   0x10cad510
1097dbfc:	e8 ef 9c fa ff                                  	call   0x109278f0
1097dc01:	83 c4 10                                        	add    esp,0x10
1097dc04:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1097dc08:	e8 d3 8d a0 ff                                  	call   0x103869e0
1097dc0d:	8b 84 24 00 09 00 00                            	mov    eax,DWORD PTR [esp+0x900]
1097dc14:	8b 8c 24 fc 08 00 00                            	mov    ecx,DWORD PTR [esp+0x8fc]
1097dc1b:	8b 94 24 04 09 00 00                            	mov    edx,DWORD PTR [esp+0x904]
1097dc22:	8b ac 24 0c 09 00 00                            	mov    ebp,DWORD PTR [esp+0x90c]
1097dc29:	89 84 24 b8 06 00 00                            	mov    DWORD PTR [esp+0x6b8],eax
1097dc30:	8b 84 24 08 09 00 00                            	mov    eax,DWORD PTR [esp+0x908]
1097dc37:	89 84 24 dc 06 00 00                            	mov    DWORD PTR [esp+0x6dc],eax
1097dc3e:	8a 84 24 24 09 00 00                            	mov    al,BYTE PTR [esp+0x924]
1097dc45:	88 84 24 d2 06 00 00                            	mov    BYTE PTR [esp+0x6d2],al
1097dc4c:	8b 84 24 f8 08 00 00                            	mov    eax,DWORD PTR [esp+0x8f8]
1097dc53:	85 c0                                           	test   eax,eax
1097dc55:	89 8c 24 b4 06 00 00                            	mov    DWORD PTR [esp+0x6b4],ecx
1097dc5c:	8b 8c 24 14 09 00 00                            	mov    ecx,DWORD PTR [esp+0x914]
1097dc63:	89 94 24 d4 06 00 00                            	mov    DWORD PTR [esp+0x6d4],edx
1097dc6a:	8b 94 24 18 09 00 00                            	mov    edx,DWORD PTR [esp+0x918]
1097dc71:	89 ac 24 d8 06 00 00                            	mov    DWORD PTR [esp+0x6d8],ebp
1097dc78:	c6 84 24 c5 06 00 00 00                         	mov    BYTE PTR [esp+0x6c5],0x0
1097dc80:	89 8c 24 c8 06 00 00                            	mov    DWORD PTR [esp+0x6c8],ecx
1097dc87:	89 94 24 e4 06 00 00                            	mov    DWORD PTR [esp+0x6e4],edx
1097dc8e:	c6 84 24 d0 06 00 00 00                         	mov    BYTE PTR [esp+0x6d0],0x0
1097dc96:	74 13                                           	je     0x1097dcab
1097dc98:	68 04 01 00 00                                  	push   0x104
1097dc9d:	50                                              	push   eax
1097dc9e:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1097dca2:	51                                              	push   ecx
1097dca3:	e8 d8 41 fb ff                                  	call   0x10931e80
1097dca8:	83 c4 0c                                        	add    esp,0xc
1097dcab:	8b 84 24 20 09 00 00                            	mov    eax,DWORD PTR [esp+0x920]
1097dcb2:	85 c0                                           	test   eax,eax
1097dcb4:	74 16                                           	je     0x1097dccc
1097dcb6:	68 04 01 00 00                                  	push   0x104
1097dcbb:	50                                              	push   eax
1097dcbc:	8d 94 24 34 04 00 00                            	lea    edx,[esp+0x434]
1097dcc3:	52                                              	push   edx
1097dcc4:	e8 b7 41 fb ff                                  	call   0x10931e80
1097dcc9:	83 c4 0c                                        	add    esp,0xc
1097dccc:	8b bc 24 f4 08 00 00                            	mov    edi,DWORD PTR [esp+0x8f4]
1097dcd3:	85 ff                                           	test   edi,edi
1097dcd5:	74 21                                           	je     0x1097dcf8
1097dcd7:	66 83 3f 00                                     	cmp    WORD PTR [edi],0x0
1097dcdb:	74 1b                                           	je     0x1097dcf8
1097dcdd:	57                                              	push   edi
1097dcde:	68 4c 60 b9 10                                  	push   0x10b9604c
1097dce3:	8d 84 24 2c 02 00 00                            	lea    eax,[esp+0x22c]
1097dcea:	68 04 01 00 00                                  	push   0x104
1097dcef:	50                                              	push   eax
1097dcf0:	e8 1b 87 fa ff                                  	call   0x10926410
1097dcf5:	83 c4 10                                        	add    esp,0x10
1097dcf8:	33 f6                                           	xor    esi,esi
1097dcfa:	e8 11 d6 a1 ff                                  	call   0x1039b310
1097dcff:	50                                              	push   eax
1097dd00:	e8 7b c4 a1 ff                                  	call   0x1039a180
1097dd05:	68 00 01 00 00                                  	push   0x100
1097dd0a:	56                                              	push   esi
1097dd0b:	8d 8c 24 f4 06 00 00                            	lea    ecx,[esp+0x6f4]
1097dd12:	51                                              	push   ecx
1097dd13:	6a 0a                                           	push   0xa
1097dd15:	e8 d6 31 f9 ff                                  	call   0x10910ef0
1097dd1a:	83 c4 14                                        	add    esp,0x14
1097dd1d:	85 c0                                           	test   eax,eax
1097dd1f:	7e 31                                           	jle    0x1097dd52
1097dd21:	68 04 01 00 00                                  	push   0x104
1097dd26:	8d 54 24 20                                     	lea    edx,[esp+0x20]
1097dd2a:	52                                              	push   edx
1097dd2b:	8d 84 24 f0 06 00 00                            	lea    eax,[esp+0x6f0]
1097dd32:	50                                              	push   eax
1097dd33:	e8 38 42 fb ff                                  	call   0x10931f70
1097dd38:	68 08 02 00 00                                  	push   0x208
1097dd3d:	8d 8c 24 f8 06 00 00                            	lea    ecx,[esp+0x6f8]
1097dd44:	68 34 41 ab 10                                  	push   0x10ab4134
1097dd49:	51                                              	push   ecx
1097dd4a:	e8 21 42 fb ff                                  	call   0x10931f70
1097dd4f:	83 c4 18                                        	add    esp,0x18
1097dd52:	8d 94 24 e8 06 00 00                            	lea    edx,[esp+0x6e8]
1097dd59:	52                                              	push   edx
1097dd5a:	e8 31 18 00 00                                  	call   0x1097f590
1097dd5f:	50                                              	push   eax
1097dd60:	e8 1b 18 00 00                                  	call   0x1097f580
1097dd65:	50                                              	push   eax
1097dd66:	57                                              	push   edi
1097dd67:	b9 c0 7d cb 10                                  	mov    ecx,0x10cb7dc0
1097dd6c:	e8 3f b3 a0 ff                                  	call   0x103890b0
1097dd71:	8b 84 24 1c 09 00 00                            	mov    eax,DWORD PTR [esp+0x91c]
1097dd78:	85 c0                                           	test   eax,eax
1097dd7a:	74 0e                                           	je     0x1097dd8a
1097dd7c:	50                                              	push   eax
1097dd7d:	68 d4 51 af 10                                  	push   0x10af51d4
1097dd82:	e8 39 aa a0 ff                                  	call   0x103887c0
1097dd87:	83 c4 08                                        	add    esp,0x8
1097dd8a:	6a 01                                           	push   0x1
1097dd8c:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1097dd91:	6a 00                                           	push   0x0
1097dd93:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1097dd97:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1097dd9b:	6a 01                                           	push   0x1
1097dd9d:	8d 44 24 18                                     	lea    eax,[esp+0x18]
1097dda1:	50                                              	push   eax
1097dda2:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097dda7:	c7 44 24 28 38 60 b9 10                         	mov    DWORD PTR [esp+0x28],0x10b96038
1097ddaf:	c7 44 24 24 46 82 ca 10                         	mov    DWORD PTR [esp+0x24],0x10ca8246
1097ddb7:	e8 54 29 a1 ff                                  	call   0x10390710
1097ddbc:	84 c0                                           	test   al,al
1097ddbe:	75 2b                                           	jne    0x1097ddeb
1097ddc0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097ddc4:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097ddc8:	2b c8                                           	sub    ecx,eax
1097ddca:	83 e1 fe                                        	and    ecx,0xfffffffe
1097ddcd:	83 f9 02                                        	cmp    ecx,0x2
1097ddd0:	7e 0d                                           	jle    0x1097dddf
1097ddd2:	85 c0                                           	test   eax,eax
1097ddd4:	74 09                                           	je     0x1097dddf
1097ddd6:	50                                              	push   eax
1097ddd7:	e8 b4 b0 f9 ff                                  	call   0x10918e90
1097dddc:	83 c4 04                                        	add    esp,0x4
1097dddf:	5f                                              	pop    edi
1097dde0:	5e                                              	pop    esi
1097dde1:	33 c0                                           	xor    eax,eax
1097dde3:	5d                                              	pop    ebp
1097dde4:	81 c4 e4 08 00 00                               	add    esp,0x8e4
1097ddea:	c3                                              	ret
1097ddeb:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
1097ddef:	52                                              	push   edx
1097ddf0:	e8 ab 8e a0 ff                                  	call   0x10386ca0
1097ddf5:	83 c4 04                                        	add    esp,0x4
1097ddf8:	84 c0                                           	test   al,al
1097ddfa:	0f 84 1c 02 00 00                               	je     0x1097e01c
1097de00:	80 bc 24 10 09 00 00 00                         	cmp    BYTE PTR [esp+0x910],0x0
1097de08:	74 14                                           	je     0x1097de1e
1097de0a:	e8 e1 8a b9 ff                                  	call   0x105168f0
1097de0f:	e8 5c fd c5 ff                                  	call   0x105ddb70
1097de14:	e8 67 48 c6 ff                                  	call   0x105e2680
1097de19:	e8 e2 45 c6 ff                                  	call   0x105e2400
1097de1e:	85 ed                                           	test   ebp,ebp
1097de20:	74 05                                           	je     0x1097de27
1097de22:	e8 99 fb ff ff                                  	call   0x1097d9c0
1097de27:	39 b4 24 e4 06 00 00                            	cmp    DWORD PTR [esp+0x6e4],esi
1097de2e:	75 60                                           	jne    0x1097de90
1097de30:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097de35:	e8 06 08 a1 ff                                  	call   0x1038e640
1097de3a:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097de3c:	6a 00                                           	push   0x0
1097de3e:	6a 00                                           	push   0x0
1097de40:	68 c0 d4 97 10                                  	push   0x1097d4c0
1097de45:	6a 00                                           	push   0x0
1097de47:	50                                              	push   eax
1097de48:	e8 b3 f2 bd ff                                  	call   0x1055d100
1097de4d:	6a 00                                           	push   0x0
1097de4f:	e8 1c e2 da ff                                  	call   0x1072c070
1097de54:	6a 00                                           	push   0x0
1097de56:	6a 00                                           	push   0x0
1097de58:	6a 00                                           	push   0x0
1097de5a:	6a 00                                           	push   0x0
1097de5c:	68 18 60 b9 10                                  	push   0x10b96018
1097de61:	6a 10                                           	push   0x10
1097de63:	e8 48 b0 f9 ff                                  	call   0x10918eb0
1097de68:	8b f0                                           	mov    esi,eax
1097de6a:	83 c4 30                                        	add    esp,0x30
1097de6d:	85 f6                                           	test   esi,esi
1097de6f:	74 0f                                           	je     0x1097de80
1097de71:	8b ce                                           	mov    ecx,esi
1097de73:	e8 58 77 da ff                                  	call   0x107255d0
1097de78:	c7 06 54 5f b9 10                               	mov    DWORD PTR [esi],0x10b95f54
1097de7e:	eb 02                                           	jmp    0x1097de82
1097de80:	33 f6                                           	xor    esi,esi
1097de82:	56                                              	push   esi
1097de83:	e8 98 79 da ff                                  	call   0x10725820
1097de88:	83 c4 04                                        	add    esp,0x4
1097de8b:	e8 00 71 b8 ff                                  	call   0x10504f90
1097de90:	68 fc 5f b9 10                                  	push   0x10b95ffc
1097de95:	57                                              	push   edi
1097de96:	e8 35 43 fb ff                                  	call   0x109321d0
1097de9b:	83 c4 08                                        	add    esp,0x8
1097de9e:	85 c0                                           	test   eax,eax
1097dea0:	74 12                                           	je     0x1097deb4
1097dea2:	68 ec 5f b9 10                                  	push   0x10b95fec
1097dea7:	57                                              	push   edi
1097dea8:	e8 23 43 fb ff                                  	call   0x109321d0
1097dead:	83 c4 08                                        	add    esp,0x8
1097deb0:	85 c0                                           	test   eax,eax
1097deb2:	75 0a                                           	jne    0x1097debe
1097deb4:	6a 02                                           	push   0x2
1097deb6:	e8 25 5b 8d ff                                  	call   0x102539e0
1097debb:	83 c4 04                                        	add    esp,0x4
1097debe:	8b 0d 14 2d c7 10                               	mov    ecx,DWORD PTR ds:0x10c72d14
1097dec4:	85 c9                                           	test   ecx,ecx
1097dec6:	74 0a                                           	je     0x1097ded2
1097dec8:	68 00 22 92 05                                  	push   0x5922200
1097decd:	e8 6e b1 a1 ff                                  	call   0x10399040
1097ded2:	e8 a9 8b a0 ff                                  	call   0x10386a80
1097ded7:	84 c0                                           	test   al,al
1097ded9:	0f 84 e1 fe ff ff                               	je     0x1097ddc0
1097dedf:	e8 3c d2 bd ff                                  	call   0x1055b120
1097dee4:	8b f0                                           	mov    esi,eax
1097dee6:	85 f6                                           	test   esi,esi
1097dee8:	74 16                                           	je     0x1097df00
1097deea:	8b 16                                           	mov    edx,DWORD PTR [esi]
1097deec:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
1097deef:	6a 00                                           	push   0x0
1097def1:	8b ce                                           	mov    ecx,esi
1097def3:	ff d0                                           	call   eax
1097def5:	8b 16                                           	mov    edx,DWORD PTR [esi]
1097def7:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
1097defa:	6a 01                                           	push   0x1
1097defc:	8b ce                                           	mov    ecx,esi
1097defe:	ff d0                                           	call   eax
1097df00:	83 bc 24 b4 06 00 00 00                         	cmp    DWORD PTR [esp+0x6b4],0x0
1097df08:	76 5d                                           	jbe    0x1097df67
1097df0a:	6a 00                                           	push   0x0
1097df0c:	6a 00                                           	push   0x0
1097df0e:	6a 00                                           	push   0x0
1097df10:	b9 b0 d7 ca 10                                  	mov    ecx,0x10cad7b0
1097df15:	e8 d6 a8 b0 ff                                  	call   0x104887f0
1097df1a:	6a 00                                           	push   0x0
1097df1c:	68 b2 45 e9 ef                                  	push   0xefe945b2
1097df21:	6a 01                                           	push   0x1
1097df23:	e8 18 6b f0 ff                                  	call   0x10884a40
1097df28:	83 c4 04                                        	add    esp,0x4
1097df2b:	8b c8                                           	mov    ecx,eax
1097df2d:	e8 ae 7c f1 ff                                  	call   0x10895be0
1097df32:	50                                              	push   eax
1097df33:	b9 48 7b cb 10                                  	mov    ecx,0x10cb7b48
1097df38:	e8 23 7b f1 ff                                  	call   0x10895a60
1097df3d:	6a 01                                           	push   0x1
1097df3f:	e8 8c 69 f0 ff                                  	call   0x108848d0
1097df44:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097df46:	83 c4 04                                        	add    esp,0x4
1097df49:	6a 01                                           	push   0x1
1097df4b:	6a ff                                           	push   0xffffffff
1097df4d:	68 ff ff 00 00                                  	push   0xffff
1097df52:	6a 00                                           	push   0x0
1097df54:	6a 00                                           	push   0x0
1097df56:	8b c8                                           	mov    ecx,eax
1097df58:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
1097df5b:	68 48 7b cb 10                                  	push   0x10cb7b48
1097df60:	ff d0                                           	call   eax
1097df62:	a3 98 d7 ca 10                                  	mov    ds:0x10cad798,eax
1097df67:	e8 e4 d0 00 00                                  	call   0x1098b050
1097df6c:	80 bc 24 10 09 00 00 00                         	cmp    BYTE PTR [esp+0x910],0x0
1097df74:	8b f0                                           	mov    esi,eax
1097df76:	0f 84 a0 00 00 00                               	je     0x1097e01c
1097df7c:	e8 1f 2d c6 ff                                  	call   0x105e0ca0
1097df81:	e8 ba b7 c5 ff                                  	call   0x105d9740
1097df86:	e8 65 e4 fb ff                                  	call   0x1093c3f0
1097df8b:	e8 40 be fc ff                                  	call   0x10949dd0
1097df90:	e8 5b be fc ff                                  	call   0x10949df0
1097df95:	e8 76 be fc ff                                  	call   0x10949e10
1097df9a:	e8 41 1e ff ff                                  	call   0x1096fde0
1097df9f:	e8 6c 28 ff ff                                  	call   0x10970810
1097dfa4:	e8 87 31 fd ff                                  	call   0x10951130
1097dfa9:	e8 a2 31 fd ff                                  	call   0x10951150
1097dfae:	e8 2d 6c fe ff                                  	call   0x10964be0
1097dfb3:	e8 88 57 fe ff                                  	call   0x10963740
1097dfb8:	e8 73 95 fe ff                                  	call   0x10967530
1097dfbd:	e8 8e 95 fe ff                                  	call   0x10967550
1097dfc2:	e8 c9 74 fd ff                                  	call   0x10955490
1097dfc7:	e8 e4 82 ff ff                                  	call   0x109762b0
1097dfcc:	e8 9f 82 ff ff                                  	call   0x10976270
1097dfd1:	e8 ba 82 ff ff                                  	call   0x10976290
1097dfd6:	e8 55 66 fe ff                                  	call   0x10964630
1097dfdb:	e8 70 66 fe ff                                  	call   0x10964650
1097dfe0:	e8 0b c8 fe ff                                  	call   0x1096a7f0
1097dfe5:	e8 26 c8 fe ff                                  	call   0x1096a810
1097dfea:	e8 61 ec fe ff                                  	call   0x1096cc50
1097dfef:	e8 7c ec fe ff                                  	call   0x1096cc70
1097dff4:	e8 97 f0 fc ff                                  	call   0x1094d090
1097dff9:	e8 b2 f0 fc ff                                  	call   0x1094d0b0
1097dffe:	e8 6d 09 ff ff                                  	call   0x1096e970
1097e003:	e8 88 df c5 ff                                  	call   0x105dbf90
1097e008:	e8 93 d4 be ff                                  	call   0x1056b4a0
1097e00d:	e8 de d4 be ff                                  	call   0x1056b4f0
1097e012:	e8 29 d5 be ff                                  	call   0x1056b540
1097e017:	e8 14 83 fe ff                                  	call   0x10966330
1097e01c:	b9 38 26 c7 10                                  	mov    ecx,0x10c72638
1097e021:	e8 8a 04 a1 ff                                  	call   0x1038e4b0
1097e026:	6a 01                                           	push   0x1
1097e028:	b9 38 26 c7 10                                  	mov    ecx,0x10c72638
1097e02d:	e8 1e 03 a1 ff                                  	call   0x1038e350
1097e032:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097e036:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097e03a:	2b c8                                           	sub    ecx,eax
1097e03c:	83 e1 fe                                        	and    ecx,0xfffffffe
1097e03f:	83 f9 02                                        	cmp    ecx,0x2
1097e042:	7e 0d                                           	jle    0x1097e051
1097e044:	85 c0                                           	test   eax,eax
1097e046:	74 09                                           	je     0x1097e051
1097e048:	50                                              	push   eax
1097e049:	e8 42 ae f9 ff                                  	call   0x10918e90
1097e04e:	83 c4 04                                        	add    esp,0x4
1097e051:	5f                                              	pop    edi
1097e052:	8b c6                                           	mov    eax,esi
1097e054:	5e                                              	pop    esi
1097e055:	5d                                              	pop    ebp
1097e056:	81 c4 e4 08 00 00                               	add    esp,0x8e4
1097e05c:	c3                                              	ret
1097e05d:	cc                                              	int3
1097e05e:	cc                                              	int3
1097e05f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052dc40 (Animation_StartRandomClipController)
Paired Ghidra pseudocode: 1052DC40_Animation_StartRandomClipController.c
Window: [0x1052dc40, 0x1052e030) (1008 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052e030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052dc40: 83 ec 70 53 55 56 57 e8 54 c5 1f 00 8b 8c 24 88
1052dc50: 00 00 00 8b 94 24 84 00 00 00 51 52 8b c8 e8 4d
1052dc60: cf 1f 00 8b d8 33 ff 3b df 89 5c 24 2c 0f 84 a9
1052dc70: 03 00 00 8d 6b 04 8b c5 b9 01 00 00 00 f0 0f c1
1052dc80: 08 8b 15 c4 0c c8 10 52 8b cb e8 11 91 1f 00 8b
1052dc90: f0 3b f7 89 74 24 14 0f 84 61 03 00 00 e8 7e d4
1052dca0: 02 00 8d 4c 24 10 51 8b 8c 24 a8 00 00 00 8b d8
1052dcb0: 8d 54 24 24 52 89 7c 24 28 8b 03 8b 50 68 51 8b
1052dcc0: cb ff d2 8d 4c 24 18 51 8b 8c 24 ac 00 00 00 8d
1052dcd0: 54 24 28 52 89 7c 24 2c 8b 03 8b 50 78 51 8b cb
1052dce0: ff d2 8d 4c 24 1c 51 8b 8c 24 b0 00 00 00 8d 54
1052dcf0: 24 2c 52 89 7c 24 30 8b 03 8b 50 78 51 8b cb ff
1052dd00: d2 8b 44 24 18 3b 44 24 10 8d 44 24 18 7c 04 8d
1052dd10: 44 24 10 8b 00 39 44 24 1c 89 44 24 10 8d 44 24
1052dd20: 1c 7c 04 8d 44 24 10 8b 00 50 8d 4c 24 34 89 44
1052dd30: 24 14 89 7c 24 34 89 7c 24 38 89 7c 24 3c c7 44
1052dd40: 24 40 0c 9b b1 10 89 7c 24 44 89 7c 24 48 89 7c
1052dd50: 24 4c c7 44 24 50 d8 9a b1 10 89 7c 24 54 89 7c
1052dd60: 24 58 89 7c 24 5c c7 44 24 60 a4 9a b1 10 e8 8d
1052dd70: 53 0c 00 8b 4c 24 10 51 8d 4c 24 44 e8 cf c7 3d
1052dd80: 00 8b 5c 24 34 33 ed 39 7c 24 10 0f 8e c6 00 00
1052dd90: 00 8b 44 24 20 8b 0c e8 8b 54 e8 04 33 ff 3b 5c
1052dda0: 24 38 be f3 c4 20 6b 89 4c 24 60 89 54 24 64 89
1052ddb0: 74 24 68 89 7c 24 6c 73 1a 8b c3 83 c3 10 85 c0
1052ddc0: 89 5c 24 34 74 20 89 08 89 50 04 89 70 08 89 78
1052ddd0: 0c eb 13 8d 54 24 60 52 53 8d 4c 24 38 e8 be 11
1052dde0: f9 ff 8b 5c 24 34 8b 54 24 44 3b 54 24 48 8b 44
1052ddf0: 24 24 8d 04 a8 73 13 8b ca 83 c2 04 85 c9 89 54
1052de00: 24 44 74 11 d9 00 d9 19 eb 0b 50 52 8d 4c 24 48
1052de10: e8 3b 67 b5 ff 8b 54 24 54 3b 54 24 58 8b 4c 24
1052de20: 28 8d 04 a9 73 13 8b ca 83 c2 04 85 c9 89 54 24
1052de30: 54 74 11 d9 00 d9 19 eb 0b 50 52 8d 4c 24 58 e8
1052de40: 0c 67 b5 ff 83 c5 01 3b 6c 24 10 0f 8c 40 ff ff
1052de50: ff 8b 74 24 14 33 ff 8b 94 24 8c 00 00 00 52 8b
1052de60: ce e8 8a 11 20 00 3b c7 74 19 8d 48 08 8b 01 8b
1052de70: 50 04 68 61 2d c1 06 ff d2 3b c7 74 06 83 40 04
1052de80: 01 8b f8 85 ff 8b f7 74 06 83 47 04 01 eb 37 6a
1052de90: 00 6a 00 6a 00 6a 00 68 84 9a b1 10 68 88 00 00
1052dea0: 00 e8 0a b0 3e 00 83 c4 18 85 c0 74 19 8b 4c 24
1052deb0: 14 83 c1 08 51 8b c8 e8 14 be e3 ff 85 c0 74 06
1052dec0: 83 40 04 01 8b f0 8b 94 24 9c 00 00 00 d9 84 24
1052ded0: 90 00 00 00 8b 8c 24 94 00 00 00 8b 84 24 a0 00
1052dee0: 00 00 89 54 24 70 8b 94 24 98 00 00 00 51 89 4c
1052def0: 24 7c d9 1c 24 8b ce 89 44 24 78 89 94 24 80 00
1052df00: 00 00 e8 79 7c 42 00 8d 44 24 70 50 8b ce e8 fd
1052df10: b9 e3 ff 8b 6c 24 30 8b 4c 24 50 2b dd c1 fb 04
1052df20: 53 8b 5c 24 44 51 53 55 8b ce e8 41 c3 e3 ff d9
1052df30: 84 24 90 00 00 00 8b 4c 24 14 8b 51 08 8b 84 24
1052df40: 8c 00 00 00 8b 52 14 6a 00 6a 00 6a 00 6a 01 83
1052df50: ec 08 d9 54 24 04 83 c1 08 d9 1c 24 6a 00 56 50
1052df60: ff d2 8b 46 20 89 44 24 14 8b 46 04 83 c0 ff 89
1052df70: 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02 6a
1052df80: 01 8b ce ff d0 85 ff 74 1c 8b 47 04 83 c0 ff 89
1052df90: 47 04 75 11 c7 47 04 01 00 00 00 8b 17 8b 02 6a
1052dfa0: 01 8b cf ff d0 8b 44 24 50 85 c0 74 09 50 e8 dd
1052dfb0: ae 3e 00 83 c4 04 85 db 74 09 53 e8 d0 ae 3e 00
1052dfc0: 83 c4 04 85 ed 74 09 55 e8 c3 ae 3e 00 83 c4 04
1052dfd0: 8b 4c 24 2c 8d 41 04 8b d0 83 ce ff f0 0f c1 32
1052dfe0: 4e 75 0f ba 01 00 00 00 87 10 8b 01 8b 10 6a 01
1052dff0: ff d2 8b 44 24 14 5f 5e 5d 5b 83 c4 70 c3 8b c5
1052e000: 83 c9 ff f0 0f c1 08 49 75 12 ba 01 00 00 00 87
1052e010: 55 00 8b 03 8b 10 6a 01 8b cb ff d2 5f 5e 5d 33
1052e020: c0 5b 83 c4 70 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052dc40 <.text+0x52cc40>:
1052dc40:	83 ec 70                                        	sub    esp,0x70
1052dc43:	53                                              	push   ebx
1052dc44:	55                                              	push   ebp
1052dc45:	56                                              	push   esi
1052dc46:	57                                              	push   edi
1052dc47:	e8 54 c5 1f 00                                  	call   0x1072a1a0
1052dc4c:	8b 8c 24 88 00 00 00                            	mov    ecx,DWORD PTR [esp+0x88]
1052dc53:	8b 94 24 84 00 00 00                            	mov    edx,DWORD PTR [esp+0x84]
1052dc5a:	51                                              	push   ecx
1052dc5b:	52                                              	push   edx
1052dc5c:	8b c8                                           	mov    ecx,eax
1052dc5e:	e8 4d cf 1f 00                                  	call   0x1072abb0
1052dc63:	8b d8                                           	mov    ebx,eax
1052dc65:	33 ff                                           	xor    edi,edi
1052dc67:	3b df                                           	cmp    ebx,edi
1052dc69:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
1052dc6d:	0f 84 a9 03 00 00                               	je     0x1052e01c
1052dc73:	8d 6b 04                                        	lea    ebp,[ebx+0x4]
1052dc76:	8b c5                                           	mov    eax,ebp
1052dc78:	b9 01 00 00 00                                  	mov    ecx,0x1
1052dc7d:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052dc81:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052dc87:	52                                              	push   edx
1052dc88:	8b cb                                           	mov    ecx,ebx
1052dc8a:	e8 11 91 1f 00                                  	call   0x10726da0
1052dc8f:	8b f0                                           	mov    esi,eax
1052dc91:	3b f7                                           	cmp    esi,edi
1052dc93:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
1052dc97:	0f 84 61 03 00 00                               	je     0x1052dffe
1052dc9d:	e8 7e d4 02 00                                  	call   0x1055b120
1052dca2:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1052dca6:	51                                              	push   ecx
1052dca7:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa8]
1052dcae:	8b d8                                           	mov    ebx,eax
1052dcb0:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1052dcb4:	52                                              	push   edx
1052dcb5:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
1052dcb9:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1052dcbb:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
1052dcbe:	51                                              	push   ecx
1052dcbf:	8b cb                                           	mov    ecx,ebx
1052dcc1:	ff d2                                           	call   edx
1052dcc3:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1052dcc7:	51                                              	push   ecx
1052dcc8:	8b 8c 24 ac 00 00 00                            	mov    ecx,DWORD PTR [esp+0xac]
1052dccf:	8d 54 24 28                                     	lea    edx,[esp+0x28]
1052dcd3:	52                                              	push   edx
1052dcd4:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
1052dcd8:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1052dcda:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
1052dcdd:	51                                              	push   ecx
1052dcde:	8b cb                                           	mov    ecx,ebx
1052dce0:	ff d2                                           	call   edx
1052dce2:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1052dce6:	51                                              	push   ecx
1052dce7:	8b 8c 24 b0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb0]
1052dcee:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
1052dcf2:	52                                              	push   edx
1052dcf3:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1052dcf7:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1052dcf9:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
1052dcfc:	51                                              	push   ecx
1052dcfd:	8b cb                                           	mov    ecx,ebx
1052dcff:	ff d2                                           	call   edx
1052dd01:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1052dd05:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
1052dd09:	8d 44 24 18                                     	lea    eax,[esp+0x18]
1052dd0d:	7c 04                                           	jl     0x1052dd13
1052dd0f:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1052dd13:	8b 00                                           	mov    eax,DWORD PTR [eax]
1052dd15:	39 44 24 1c                                     	cmp    DWORD PTR [esp+0x1c],eax
1052dd19:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1052dd1d:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1052dd21:	7c 04                                           	jl     0x1052dd27
1052dd23:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1052dd27:	8b 00                                           	mov    eax,DWORD PTR [eax]
1052dd29:	50                                              	push   eax
1052dd2a:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1052dd2e:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1052dd32:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
1052dd36:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
1052dd3a:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
1052dd3e:	c7 44 24 40 0c 9b b1 10                         	mov    DWORD PTR [esp+0x40],0x10b19b0c
1052dd46:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
1052dd4a:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
1052dd4e:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
1052dd52:	c7 44 24 50 d8 9a b1 10                         	mov    DWORD PTR [esp+0x50],0x10b19ad8
1052dd5a:	89 7c 24 54                                     	mov    DWORD PTR [esp+0x54],edi
1052dd5e:	89 7c 24 58                                     	mov    DWORD PTR [esp+0x58],edi
1052dd62:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
1052dd66:	c7 44 24 60 a4 9a b1 10                         	mov    DWORD PTR [esp+0x60],0x10b19aa4
1052dd6e:	e8 8d 53 0c 00                                  	call   0x105f3100
1052dd73:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052dd77:	51                                              	push   ecx
1052dd78:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
1052dd7c:	e8 cf c7 3d 00                                  	call   0x1090a550
1052dd81:	8b 5c 24 34                                     	mov    ebx,DWORD PTR [esp+0x34]
1052dd85:	33 ed                                           	xor    ebp,ebp
1052dd87:	39 7c 24 10                                     	cmp    DWORD PTR [esp+0x10],edi
1052dd8b:	0f 8e c6 00 00 00                               	jle    0x1052de57
1052dd91:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1052dd95:	8b 0c e8                                        	mov    ecx,DWORD PTR [eax+ebp*8]
1052dd98:	8b 54 e8 04                                     	mov    edx,DWORD PTR [eax+ebp*8+0x4]
1052dd9c:	33 ff                                           	xor    edi,edi
1052dd9e:	3b 5c 24 38                                     	cmp    ebx,DWORD PTR [esp+0x38]
1052dda2:	be f3 c4 20 6b                                  	mov    esi,0x6b20c4f3
1052dda7:	89 4c 24 60                                     	mov    DWORD PTR [esp+0x60],ecx
1052ddab:	89 54 24 64                                     	mov    DWORD PTR [esp+0x64],edx
1052ddaf:	89 74 24 68                                     	mov    DWORD PTR [esp+0x68],esi
1052ddb3:	89 7c 24 6c                                     	mov    DWORD PTR [esp+0x6c],edi
1052ddb7:	73 1a                                           	jae    0x1052ddd3
1052ddb9:	8b c3                                           	mov    eax,ebx
1052ddbb:	83 c3 10                                        	add    ebx,0x10
1052ddbe:	85 c0                                           	test   eax,eax
1052ddc0:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
1052ddc4:	74 20                                           	je     0x1052dde6
1052ddc6:	89 08                                           	mov    DWORD PTR [eax],ecx
1052ddc8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1052ddcb:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
1052ddce:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
1052ddd1:	eb 13                                           	jmp    0x1052dde6
1052ddd3:	8d 54 24 60                                     	lea    edx,[esp+0x60]
1052ddd7:	52                                              	push   edx
1052ddd8:	53                                              	push   ebx
1052ddd9:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1052dddd:	e8 be 11 f9 ff                                  	call   0x104befa0
1052dde2:	8b 5c 24 34                                     	mov    ebx,DWORD PTR [esp+0x34]
1052dde6:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1052ddea:	3b 54 24 48                                     	cmp    edx,DWORD PTR [esp+0x48]
1052ddee:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1052ddf2:	8d 04 a8                                        	lea    eax,[eax+ebp*4]
1052ddf5:	73 13                                           	jae    0x1052de0a
1052ddf7:	8b ca                                           	mov    ecx,edx
1052ddf9:	83 c2 04                                        	add    edx,0x4
1052ddfc:	85 c9                                           	test   ecx,ecx
1052ddfe:	89 54 24 44                                     	mov    DWORD PTR [esp+0x44],edx
1052de02:	74 11                                           	je     0x1052de15
1052de04:	d9 00                                           	fld    DWORD PTR [eax]
1052de06:	d9 19                                           	fstp   DWORD PTR [ecx]
1052de08:	eb 0b                                           	jmp    0x1052de15
1052de0a:	50                                              	push   eax
1052de0b:	52                                              	push   edx
1052de0c:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
1052de10:	e8 3b 67 b5 ff                                  	call   0x10084550
1052de15:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
1052de19:	3b 54 24 58                                     	cmp    edx,DWORD PTR [esp+0x58]
1052de1d:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1052de21:	8d 04 a9                                        	lea    eax,[ecx+ebp*4]
1052de24:	73 13                                           	jae    0x1052de39
1052de26:	8b ca                                           	mov    ecx,edx
1052de28:	83 c2 04                                        	add    edx,0x4
1052de2b:	85 c9                                           	test   ecx,ecx
1052de2d:	89 54 24 54                                     	mov    DWORD PTR [esp+0x54],edx
1052de31:	74 11                                           	je     0x1052de44
1052de33:	d9 00                                           	fld    DWORD PTR [eax]
1052de35:	d9 19                                           	fstp   DWORD PTR [ecx]
1052de37:	eb 0b                                           	jmp    0x1052de44
1052de39:	50                                              	push   eax
1052de3a:	52                                              	push   edx
1052de3b:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
1052de3f:	e8 0c 67 b5 ff                                  	call   0x10084550
1052de44:	83 c5 01                                        	add    ebp,0x1
1052de47:	3b 6c 24 10                                     	cmp    ebp,DWORD PTR [esp+0x10]
1052de4b:	0f 8c 40 ff ff ff                               	jl     0x1052dd91
1052de51:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1052de55:	33 ff                                           	xor    edi,edi
1052de57:	8b 94 24 8c 00 00 00                            	mov    edx,DWORD PTR [esp+0x8c]
1052de5e:	52                                              	push   edx
1052de5f:	8b ce                                           	mov    ecx,esi
1052de61:	e8 8a 11 20 00                                  	call   0x1072eff0
1052de66:	3b c7                                           	cmp    eax,edi
1052de68:	74 19                                           	je     0x1052de83
1052de6a:	8d 48 08                                        	lea    ecx,[eax+0x8]
1052de6d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052de6f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1052de72:	68 61 2d c1 06                                  	push   0x6c12d61
1052de77:	ff d2                                           	call   edx
1052de79:	3b c7                                           	cmp    eax,edi
1052de7b:	74 06                                           	je     0x1052de83
1052de7d:	83 40 04 01                                     	add    DWORD PTR [eax+0x4],0x1
1052de81:	8b f8                                           	mov    edi,eax
1052de83:	85 ff                                           	test   edi,edi
1052de85:	8b f7                                           	mov    esi,edi
1052de87:	74 06                                           	je     0x1052de8f
1052de89:	83 47 04 01                                     	add    DWORD PTR [edi+0x4],0x1
1052de8d:	eb 37                                           	jmp    0x1052dec6
1052de8f:	6a 00                                           	push   0x0
1052de91:	6a 00                                           	push   0x0
1052de93:	6a 00                                           	push   0x0
1052de95:	6a 00                                           	push   0x0
1052de97:	68 84 9a b1 10                                  	push   0x10b19a84
1052de9c:	68 88 00 00 00                                  	push   0x88
1052dea1:	e8 0a b0 3e 00                                  	call   0x10918eb0
1052dea6:	83 c4 18                                        	add    esp,0x18
1052dea9:	85 c0                                           	test   eax,eax
1052deab:	74 19                                           	je     0x1052dec6
1052dead:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1052deb1:	83 c1 08                                        	add    ecx,0x8
1052deb4:	51                                              	push   ecx
1052deb5:	8b c8                                           	mov    ecx,eax
1052deb7:	e8 14 be e3 ff                                  	call   0x10369cd0
1052debc:	85 c0                                           	test   eax,eax
1052debe:	74 06                                           	je     0x1052dec6
1052dec0:	83 40 04 01                                     	add    DWORD PTR [eax+0x4],0x1
1052dec4:	8b f0                                           	mov    esi,eax
1052dec6:	8b 94 24 9c 00 00 00                            	mov    edx,DWORD PTR [esp+0x9c]
1052decd:	d9 84 24 90 00 00 00                            	fld    DWORD PTR [esp+0x90]
1052ded4:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
1052dedb:	8b 84 24 a0 00 00 00                            	mov    eax,DWORD PTR [esp+0xa0]
1052dee2:	89 54 24 70                                     	mov    DWORD PTR [esp+0x70],edx
1052dee6:	8b 94 24 98 00 00 00                            	mov    edx,DWORD PTR [esp+0x98]
1052deed:	51                                              	push   ecx
1052deee:	89 4c 24 7c                                     	mov    DWORD PTR [esp+0x7c],ecx
1052def2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052def5:	8b ce                                           	mov    ecx,esi
1052def7:	89 44 24 78                                     	mov    DWORD PTR [esp+0x78],eax
1052defb:	89 94 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],edx
1052df02:	e8 79 7c 42 00                                  	call   0x10955b80
1052df07:	8d 44 24 70                                     	lea    eax,[esp+0x70]
1052df0b:	50                                              	push   eax
1052df0c:	8b ce                                           	mov    ecx,esi
1052df0e:	e8 fd b9 e3 ff                                  	call   0x10369910
1052df13:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
1052df17:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
1052df1b:	2b dd                                           	sub    ebx,ebp
1052df1d:	c1 fb 04                                        	sar    ebx,0x4
1052df20:	53                                              	push   ebx
1052df21:	8b 5c 24 44                                     	mov    ebx,DWORD PTR [esp+0x44]
1052df25:	51                                              	push   ecx
1052df26:	53                                              	push   ebx
1052df27:	55                                              	push   ebp
1052df28:	8b ce                                           	mov    ecx,esi
1052df2a:	e8 41 c3 e3 ff                                  	call   0x1036a270
1052df2f:	d9 84 24 90 00 00 00                            	fld    DWORD PTR [esp+0x90]
1052df36:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1052df3a:	8b 51 08                                        	mov    edx,DWORD PTR [ecx+0x8]
1052df3d:	8b 84 24 8c 00 00 00                            	mov    eax,DWORD PTR [esp+0x8c]
1052df44:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
1052df47:	6a 00                                           	push   0x0
1052df49:	6a 00                                           	push   0x0
1052df4b:	6a 00                                           	push   0x0
1052df4d:	6a 01                                           	push   0x1
1052df4f:	83 ec 08                                        	sub    esp,0x8
1052df52:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052df56:	83 c1 08                                        	add    ecx,0x8
1052df59:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052df5c:	6a 00                                           	push   0x0
1052df5e:	56                                              	push   esi
1052df5f:	50                                              	push   eax
1052df60:	ff d2                                           	call   edx
1052df62:	8b 46 20                                        	mov    eax,DWORD PTR [esi+0x20]
1052df65:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1052df69:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1052df6c:	83 c0 ff                                        	add    eax,0xffffffff
1052df6f:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1052df72:	75 11                                           	jne    0x1052df85
1052df74:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1052df7b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052df7d:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052df7f:	6a 01                                           	push   0x1
1052df81:	8b ce                                           	mov    ecx,esi
1052df83:	ff d0                                           	call   eax
1052df85:	85 ff                                           	test   edi,edi
1052df87:	74 1c                                           	je     0x1052dfa5
1052df89:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
1052df8c:	83 c0 ff                                        	add    eax,0xffffffff
1052df8f:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
1052df92:	75 11                                           	jne    0x1052dfa5
1052df94:	c7 47 04 01 00 00 00                            	mov    DWORD PTR [edi+0x4],0x1
1052df9b:	8b 17                                           	mov    edx,DWORD PTR [edi]
1052df9d:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052df9f:	6a 01                                           	push   0x1
1052dfa1:	8b cf                                           	mov    ecx,edi
1052dfa3:	ff d0                                           	call   eax
1052dfa5:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
1052dfa9:	85 c0                                           	test   eax,eax
1052dfab:	74 09                                           	je     0x1052dfb6
1052dfad:	50                                              	push   eax
1052dfae:	e8 dd ae 3e 00                                  	call   0x10918e90
1052dfb3:	83 c4 04                                        	add    esp,0x4
1052dfb6:	85 db                                           	test   ebx,ebx
1052dfb8:	74 09                                           	je     0x1052dfc3
1052dfba:	53                                              	push   ebx
1052dfbb:	e8 d0 ae 3e 00                                  	call   0x10918e90
1052dfc0:	83 c4 04                                        	add    esp,0x4
1052dfc3:	85 ed                                           	test   ebp,ebp
1052dfc5:	74 09                                           	je     0x1052dfd0
1052dfc7:	55                                              	push   ebp
1052dfc8:	e8 c3 ae 3e 00                                  	call   0x10918e90
1052dfcd:	83 c4 04                                        	add    esp,0x4
1052dfd0:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1052dfd4:	8d 41 04                                        	lea    eax,[ecx+0x4]
1052dfd7:	8b d0                                           	mov    edx,eax
1052dfd9:	83 ce ff                                        	or     esi,0xffffffff
1052dfdc:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
1052dfe0:	4e                                              	dec    esi
1052dfe1:	75 0f                                           	jne    0x1052dff2
1052dfe3:	ba 01 00 00 00                                  	mov    edx,0x1
1052dfe8:	87 10                                           	xchg   DWORD PTR [eax],edx
1052dfea:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052dfec:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052dfee:	6a 01                                           	push   0x1
1052dff0:	ff d2                                           	call   edx
1052dff2:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1052dff6:	5f                                              	pop    edi
1052dff7:	5e                                              	pop    esi
1052dff8:	5d                                              	pop    ebp
1052dff9:	5b                                              	pop    ebx
1052dffa:	83 c4 70                                        	add    esp,0x70
1052dffd:	c3                                              	ret
1052dffe:	8b c5                                           	mov    eax,ebp
1052e000:	83 c9 ff                                        	or     ecx,0xffffffff
1052e003:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052e007:	49                                              	dec    ecx
1052e008:	75 12                                           	jne    0x1052e01c
1052e00a:	ba 01 00 00 00                                  	mov    edx,0x1
1052e00f:	87 55 00                                        	xchg   DWORD PTR [ebp+0x0],edx
1052e012:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1052e014:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052e016:	6a 01                                           	push   0x1
1052e018:	8b cb                                           	mov    ecx,ebx
1052e01a:	ff d2                                           	call   edx
1052e01c:	5f                                              	pop    edi
1052e01d:	5e                                              	pop    esi
1052e01e:	5d                                              	pop    ebp
1052e01f:	33 c0                                           	xor    eax,eax
1052e021:	5b                                              	pop    ebx
1052e022:	83 c4 70                                        	add    esp,0x70
1052e025:	c3                                              	ret
1052e026:	cc                                              	int3
1052e027:	cc                                              	int3
1052e028:	cc                                              	int3
1052e029:	cc                                              	int3
1052e02a:	cc                                              	int3
1052e02b:	cc                                              	int3
1052e02c:	cc                                              	int3
1052e02d:	cc                                              	int3
1052e02e:	cc                                              	int3
1052e02f:	cc                                              	int3

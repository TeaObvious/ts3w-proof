# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055f9d0 (Simulator_CreateScriptErrorFileImpl)
Paired Ghidra pseudocode: 1055F9D0_Simulator_CreateScriptErrorFileImpl.c
Window: [0x1055f9d0, 0x1055feb0) (1248 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055feb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055f9d0: 81 ec 8c 05 00 00 53 55 56 57 e8 e1 1f fc ff 8b
1055f9e0: 10 8b c8 8b 42 24 ff d0 50 8d 8c 24 90 01 00 00
1055f9f0: e8 9b 29 3c 00 8d 8c 24 8c 01 00 00 e8 df f2 4c
1055fa00: 00 50 e8 09 25 3b 00 33 ed 33 ff 33 f6 83 c4 04
1055fa10: 89 6c 24 5c 89 6c 24 60 89 6c 24 64 89 6c 24 68
1055fa20: 89 7c 24 4c 89 74 24 50 89 6c 24 54 c7 44 24 58
1055fa30: cc f6 b1 10 e8 67 f2 3a 00 33 c9 68 00 00 10 00
1055fa40: 89 4c 24 2c 89 4c 24 30 8d 4c 24 2c 6a 02 89 44
1055fa50: 24 38 8b c1 8b d1 55 89 4c 24 34 50 8d 8c 24 9c
1055fa60: 01 00 00 89 6c 24 44 c7 44 24 48 b0 f6 b1 10 89
1055fa70: 54 24 3c e8 68 f2 4c 00 50 8d 4c 24 70 e8 fe f7
1055fa80: 3a 00 8b 44 24 28 8d 4c 24 28 3b c1 8b d8 0f 84
1055fa90: da 00 00 00 8b 43 0c 55 68 8c f6 b1 10 50 e8 ad
1055faa0: 31 3d 00 83 c4 0c 84 c0 0f 84 ae 00 00 00 b8 44
1055fab0: 82 ca 10 8d 8c 24 8c 01 00 00 c7 44 24 1c 6c f6
1055fac0: b1 10 89 44 24 10 89 44 24 14 c7 44 24 18 46 82
1055fad0: ca 10 e8 09 f2 4c 00 66 39 28 8b c8 74 0a 8b ff
1055fae0: 83 c1 02 66 39 29 75 f8 2b c8 d1 f9 8d 14 48 52
1055faf0: 50 8d 4c 24 18 e8 c6 fd ab ff 8b 43 10 8b 4b 0c
1055fb00: 50 51 8d 4c 24 18 e8 a5 f8 ab ff 3b 74 24 54 73
1055fb10: 19 8b ce 83 c6 10 3b cd 89 74 24 50 74 1f 8d 54
1055fb20: 24 10 52 e8 f8 a7 b0 ff eb 13 8d 44 24 10 50 56
1055fb30: 8d 4c 24 54 e8 37 1b fd ff 8b 74 24 50 8b 4c 24
1055fb40: 18 8b 44 24 10 2b c8 83 e1 fe 83 f9 02 7e 0d 3b
1055fb50: c5 74 09 50 e8 37 93 3b 00 83 c4 04 8b 1b 8d 54
1055fb60: 24 28 3b da 0f 85 2a ff ff ff 8b 7c 24 4c 8b c6
1055fb70: 2b c7 c1 f8 04 83 f8 0a 76 43 68 f0 ec 55 10 56
1055fb80: 8d 8f a0 00 00 00 51 57 e8 a3 18 fd ff 83 c4 10
1055fb90: 3b fe 8b df bd 0a 00 00 00 74 20 eb 03 8d 49 00
1055fba0: 85 ed 7e 05 83 ed 01 eb 0b 8b 13 52 e8 df 0e 3b
1055fbb0: 00 83 c4 04 83 c3 10 3b de 75 e5 33 ed 8d 4c 24
1055fbc0: 28 e8 4a 27 b1 ff 3b fe 8b df 73 27 8d 64 24 00
1055fbd0: 8b 03 8b 4b 08 2b c8 83 e1 fe 83 f9 02 7e 0d 3b
1055fbe0: c5 74 09 50 e8 a7 92 3b 00 83 c4 04 83 c3 10 3b
1055fbf0: de 72 dd 3b fd 74 09 57 e8 93 92 3b 00 83 c4 04
1055fc00: 8b 9c 24 a0 05 00 00 89 2b e8 12 b5 ff ff 6a ff
1055fc10: 8d 4c 24 24 8b f8 e8 c5 d6 3c 00 55 8d 4c 24 24
1055fc20: e8 bb d6 3c 00 8d 94 24 8c 00 00 00 68 00 01 00
1055fc30: 00 52 e8 39 4f 3d 00 bd 44 82 ca 10 83 c4 08 8d
1055fc40: 4c 24 20 c7 44 24 1c 6c f6 b1 10 89 6c 24 10 89
1055fc50: 6c 24 14 c7 44 24 18 46 82 ca 10 e8 a0 d6 3c 00
1055fc60: 50 6a 0a e8 b8 cf 3c 00 83 c4 04 50 6a 09 e8 ad
1055fc70: cf 3c 00 83 c4 04 50 6a 08 e8 a2 cf 3c 00 83 c4
1055fc80: 04 50 6a 01 e8 97 cf 3c 00 83 c4 04 50 6a 06 e8
1055fc90: 8c cf 3c 00 83 c4 04 50 6a 02 e8 81 cf 3c 00 83
1055fca0: c4 04 50 8d 84 24 a8 00 00 00 50 8d 4c 24 30 68
1055fcb0: f8 f5 b1 10 51 e8 36 b3 b0 ff 8b 54 24 38 83 c4
1055fcc0: 28 6a 00 52 8d 8c 24 94 01 00 00 e8 50 29 3c 00
1055fcd0: 8d 8c 24 8c 01 00 00 e8 04 f0 4c 00 8b f0 6a 00
1055fce0: 56 c7 44 24 50 d4 f5 b1 10 89 6c 24 44 89 6c 24
1055fcf0: 48 c7 44 24 4c 46 82 ca 10 e8 e2 0c 3b 00 83 c4
1055fd00: 08 84 c0 74 76 8b 44 24 14 8b 6c 24 10 50 55 8d
1055fd10: 4c 24 44 e8 a8 fb ab ff 6a 00 6a 00 6a 00 6a 00
1055fd20: 68 b0 f5 b1 10 68 28 02 00 00 e8 81 91 3b 00 83
1055fd30: c4 18 85 c0 74 0c 56 8b c8 e8 f2 0a 3b 00 8b f0
1055fd40: eb 02 33 f6 8b 16 8b 42 4c 6a 00 6a 01 6a 03 6a
1055fd50: 02 8b ce ff d0 84 c0 74 11 8b 17 8b 82 c8 00 00
1055fd60: 00 6a 47 56 8b cf ff d0 89 03 83 3b 00 75 60 8b
1055fd70: 16 8b 02 6a 01 8b ce ff d0 eb 54 68 8c f5 b1 10
1055fd80: 6a ff 8d 4c 24 64 68 00 f4 b1 10 51 e8 1f 70 3c
1055fd90: 00 8d 54 24 4c 83 c4 10 3b c2 74 10 8b 48 04 8b
1055fda0: 10 51 52 8d 4c 24 44 e8 14 fb ab ff 8b 4c 24 64
1055fdb0: 8b 44 24 5c 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0
1055fdc0: 74 09 50 e8 c8 90 3b 00 83 c4 04 8b 6c 24 10 6a
1055fdd0: 01 6a 10 8d 54 24 44 52 6a 09 6a 13 8d 8c 24 80
1055fde0: 00 00 00 c7 84 24 80 00 00 00 b4 a5 ac 10 66 c7
1055fdf0: 84 24 8a 00 00 00 13 00 66 c7 84 24 88 00 00 00
1055fe00: 0b 00 e8 89 8d 3c 00 c7 44 24 24 00 00 00 00 e8
1055fe10: 0c b3 ff ff 8b 10 8b 52 50 8d 4c 24 24 51 8d 4c
1055fe20: 24 70 51 8b c8 ff d2 f6 44 24 74 04 8b 74 24 24
1055fe30: c7 44 24 6c b4 a5 ac 10 74 0b 6a 00 8d 4c 24 70
1055fe40: e8 4b 8c 3c 00 8b 4c 24 44 8b 44 24 3c 2b c8 83
1055fe50: e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 2f 90 3b
1055fe60: 00 83 c4 04 8b 54 24 18 2b d5 83 e2 fe 83 fa 02
1055fe70: 7e 0d 85 ed 74 09 55 e8 14 90 3b 00 83 c4 04 5f
1055fe80: 8b c6 5e 5d 5b 81 c4 8c 05 00 00 c3 cc cc cc cc
1055fe90: 8b 44 24 04 c7 00 98 fd c2 10 c2 04 00 cc cc cc
1055fea0: b8 ac fd b1 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055f9d0 <.text+0x55e9d0>:
1055f9d0:	81 ec 8c 05 00 00                               	sub    esp,0x58c
1055f9d6:	53                                              	push   ebx
1055f9d7:	55                                              	push   ebp
1055f9d8:	56                                              	push   esi
1055f9d9:	57                                              	push   edi
1055f9da:	e8 e1 1f fc ff                                  	call   0x105219c0
1055f9df:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f9e1:	8b c8                                           	mov    ecx,eax
1055f9e3:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
1055f9e6:	ff d0                                           	call   eax
1055f9e8:	50                                              	push   eax
1055f9e9:	8d 8c 24 90 01 00 00                            	lea    ecx,[esp+0x190]
1055f9f0:	e8 9b 29 3c 00                                  	call   0x10922390
1055f9f5:	8d 8c 24 8c 01 00 00                            	lea    ecx,[esp+0x18c]
1055f9fc:	e8 df f2 4c 00                                  	call   0x10a2ece0
1055fa01:	50                                              	push   eax
1055fa02:	e8 09 25 3b 00                                  	call   0x10911f10
1055fa07:	33 ed                                           	xor    ebp,ebp
1055fa09:	33 ff                                           	xor    edi,edi
1055fa0b:	33 f6                                           	xor    esi,esi
1055fa0d:	83 c4 04                                        	add    esp,0x4
1055fa10:	89 6c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebp
1055fa14:	89 6c 24 60                                     	mov    DWORD PTR [esp+0x60],ebp
1055fa18:	89 6c 24 64                                     	mov    DWORD PTR [esp+0x64],ebp
1055fa1c:	89 6c 24 68                                     	mov    DWORD PTR [esp+0x68],ebp
1055fa20:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
1055fa24:	89 74 24 50                                     	mov    DWORD PTR [esp+0x50],esi
1055fa28:	89 6c 24 54                                     	mov    DWORD PTR [esp+0x54],ebp
1055fa2c:	c7 44 24 58 cc f6 b1 10                         	mov    DWORD PTR [esp+0x58],0x10b1f6cc
1055fa34:	e8 67 f2 3a 00                                  	call   0x1090eca0
1055fa39:	33 c9                                           	xor    ecx,ecx
1055fa3b:	68 00 00 10 00                                  	push   0x100000
1055fa40:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
1055fa44:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
1055fa48:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1055fa4c:	6a 02                                           	push   0x2
1055fa4e:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
1055fa52:	8b c1                                           	mov    eax,ecx
1055fa54:	8b d1                                           	mov    edx,ecx
1055fa56:	55                                              	push   ebp
1055fa57:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
1055fa5b:	50                                              	push   eax
1055fa5c:	8d 8c 24 9c 01 00 00                            	lea    ecx,[esp+0x19c]
1055fa63:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
1055fa67:	c7 44 24 48 b0 f6 b1 10                         	mov    DWORD PTR [esp+0x48],0x10b1f6b0
1055fa6f:	89 54 24 3c                                     	mov    DWORD PTR [esp+0x3c],edx
1055fa73:	e8 68 f2 4c 00                                  	call   0x10a2ece0
1055fa78:	50                                              	push   eax
1055fa79:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
1055fa7d:	e8 fe f7 3a 00                                  	call   0x1090f280
1055fa82:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1055fa86:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1055fa8a:	3b c1                                           	cmp    eax,ecx
1055fa8c:	8b d8                                           	mov    ebx,eax
1055fa8e:	0f 84 da 00 00 00                               	je     0x1055fb6e
1055fa94:	8b 43 0c                                        	mov    eax,DWORD PTR [ebx+0xc]
1055fa97:	55                                              	push   ebp
1055fa98:	68 8c f6 b1 10                                  	push   0x10b1f68c
1055fa9d:	50                                              	push   eax
1055fa9e:	e8 ad 31 3d 00                                  	call   0x10932c50
1055faa3:	83 c4 0c                                        	add    esp,0xc
1055faa6:	84 c0                                           	test   al,al
1055faa8:	0f 84 ae 00 00 00                               	je     0x1055fb5c
1055faae:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1055fab3:	8d 8c 24 8c 01 00 00                            	lea    ecx,[esp+0x18c]
1055faba:	c7 44 24 1c 6c f6 b1 10                         	mov    DWORD PTR [esp+0x1c],0x10b1f66c
1055fac2:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1055fac6:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1055faca:	c7 44 24 18 46 82 ca 10                         	mov    DWORD PTR [esp+0x18],0x10ca8246
1055fad2:	e8 09 f2 4c 00                                  	call   0x10a2ece0
1055fad7:	66 39 28                                        	cmp    WORD PTR [eax],bp
1055fada:	8b c8                                           	mov    ecx,eax
1055fadc:	74 0a                                           	je     0x1055fae8
1055fade:	8b ff                                           	mov    edi,edi
1055fae0:	83 c1 02                                        	add    ecx,0x2
1055fae3:	66 39 29                                        	cmp    WORD PTR [ecx],bp
1055fae6:	75 f8                                           	jne    0x1055fae0
1055fae8:	2b c8                                           	sub    ecx,eax
1055faea:	d1 f9                                           	sar    ecx,1
1055faec:	8d 14 48                                        	lea    edx,[eax+ecx*2]
1055faef:	52                                              	push   edx
1055faf0:	50                                              	push   eax
1055faf1:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1055faf5:	e8 c6 fd ab ff                                  	call   0x1001f8c0
1055fafa:	8b 43 10                                        	mov    eax,DWORD PTR [ebx+0x10]
1055fafd:	8b 4b 0c                                        	mov    ecx,DWORD PTR [ebx+0xc]
1055fb00:	50                                              	push   eax
1055fb01:	51                                              	push   ecx
1055fb02:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1055fb06:	e8 a5 f8 ab ff                                  	call   0x1001f3b0
1055fb0b:	3b 74 24 54                                     	cmp    esi,DWORD PTR [esp+0x54]
1055fb0f:	73 19                                           	jae    0x1055fb2a
1055fb11:	8b ce                                           	mov    ecx,esi
1055fb13:	83 c6 10                                        	add    esi,0x10
1055fb16:	3b cd                                           	cmp    ecx,ebp
1055fb18:	89 74 24 50                                     	mov    DWORD PTR [esp+0x50],esi
1055fb1c:	74 1f                                           	je     0x1055fb3d
1055fb1e:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1055fb22:	52                                              	push   edx
1055fb23:	e8 f8 a7 b0 ff                                  	call   0x1006a320
1055fb28:	eb 13                                           	jmp    0x1055fb3d
1055fb2a:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1055fb2e:	50                                              	push   eax
1055fb2f:	56                                              	push   esi
1055fb30:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
1055fb34:	e8 37 1b fd ff                                  	call   0x10531670
1055fb39:	8b 74 24 50                                     	mov    esi,DWORD PTR [esp+0x50]
1055fb3d:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055fb41:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1055fb45:	2b c8                                           	sub    ecx,eax
1055fb47:	83 e1 fe                                        	and    ecx,0xfffffffe
1055fb4a:	83 f9 02                                        	cmp    ecx,0x2
1055fb4d:	7e 0d                                           	jle    0x1055fb5c
1055fb4f:	3b c5                                           	cmp    eax,ebp
1055fb51:	74 09                                           	je     0x1055fb5c
1055fb53:	50                                              	push   eax
1055fb54:	e8 37 93 3b 00                                  	call   0x10918e90
1055fb59:	83 c4 04                                        	add    esp,0x4
1055fb5c:	8b 1b                                           	mov    ebx,DWORD PTR [ebx]
1055fb5e:	8d 54 24 28                                     	lea    edx,[esp+0x28]
1055fb62:	3b da                                           	cmp    ebx,edx
1055fb64:	0f 85 2a ff ff ff                               	jne    0x1055fa94
1055fb6a:	8b 7c 24 4c                                     	mov    edi,DWORD PTR [esp+0x4c]
1055fb6e:	8b c6                                           	mov    eax,esi
1055fb70:	2b c7                                           	sub    eax,edi
1055fb72:	c1 f8 04                                        	sar    eax,0x4
1055fb75:	83 f8 0a                                        	cmp    eax,0xa
1055fb78:	76 43                                           	jbe    0x1055fbbd
1055fb7a:	68 f0 ec 55 10                                  	push   0x1055ecf0
1055fb7f:	56                                              	push   esi
1055fb80:	8d 8f a0 00 00 00                               	lea    ecx,[edi+0xa0]
1055fb86:	51                                              	push   ecx
1055fb87:	57                                              	push   edi
1055fb88:	e8 a3 18 fd ff                                  	call   0x10531430
1055fb8d:	83 c4 10                                        	add    esp,0x10
1055fb90:	3b fe                                           	cmp    edi,esi
1055fb92:	8b df                                           	mov    ebx,edi
1055fb94:	bd 0a 00 00 00                                  	mov    ebp,0xa
1055fb99:	74 20                                           	je     0x1055fbbb
1055fb9b:	eb 03                                           	jmp    0x1055fba0
1055fb9d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1055fba0:	85 ed                                           	test   ebp,ebp
1055fba2:	7e 05                                           	jle    0x1055fba9
1055fba4:	83 ed 01                                        	sub    ebp,0x1
1055fba7:	eb 0b                                           	jmp    0x1055fbb4
1055fba9:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1055fbab:	52                                              	push   edx
1055fbac:	e8 df 0e 3b 00                                  	call   0x10910a90
1055fbb1:	83 c4 04                                        	add    esp,0x4
1055fbb4:	83 c3 10                                        	add    ebx,0x10
1055fbb7:	3b de                                           	cmp    ebx,esi
1055fbb9:	75 e5                                           	jne    0x1055fba0
1055fbbb:	33 ed                                           	xor    ebp,ebp
1055fbbd:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1055fbc1:	e8 4a 27 b1 ff                                  	call   0x10072310
1055fbc6:	3b fe                                           	cmp    edi,esi
1055fbc8:	8b df                                           	mov    ebx,edi
1055fbca:	73 27                                           	jae    0x1055fbf3
1055fbcc:	8d 64 24 00                                     	lea    esp,[esp+0x0]
1055fbd0:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1055fbd2:	8b 4b 08                                        	mov    ecx,DWORD PTR [ebx+0x8]
1055fbd5:	2b c8                                           	sub    ecx,eax
1055fbd7:	83 e1 fe                                        	and    ecx,0xfffffffe
1055fbda:	83 f9 02                                        	cmp    ecx,0x2
1055fbdd:	7e 0d                                           	jle    0x1055fbec
1055fbdf:	3b c5                                           	cmp    eax,ebp
1055fbe1:	74 09                                           	je     0x1055fbec
1055fbe3:	50                                              	push   eax
1055fbe4:	e8 a7 92 3b 00                                  	call   0x10918e90
1055fbe9:	83 c4 04                                        	add    esp,0x4
1055fbec:	83 c3 10                                        	add    ebx,0x10
1055fbef:	3b de                                           	cmp    ebx,esi
1055fbf1:	72 dd                                           	jb     0x1055fbd0
1055fbf3:	3b fd                                           	cmp    edi,ebp
1055fbf5:	74 09                                           	je     0x1055fc00
1055fbf7:	57                                              	push   edi
1055fbf8:	e8 93 92 3b 00                                  	call   0x10918e90
1055fbfd:	83 c4 04                                        	add    esp,0x4
1055fc00:	8b 9c 24 a0 05 00 00                            	mov    ebx,DWORD PTR [esp+0x5a0]
1055fc07:	89 2b                                           	mov    DWORD PTR [ebx],ebp
1055fc09:	e8 12 b5 ff ff                                  	call   0x1055b120
1055fc0e:	6a ff                                           	push   0xffffffff
1055fc10:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1055fc14:	8b f8                                           	mov    edi,eax
1055fc16:	e8 c5 d6 3c 00                                  	call   0x1092d2e0
1055fc1b:	55                                              	push   ebp
1055fc1c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1055fc20:	e8 bb d6 3c 00                                  	call   0x1092d2e0
1055fc25:	8d 94 24 8c 00 00 00                            	lea    edx,[esp+0x8c]
1055fc2c:	68 00 01 00 00                                  	push   0x100
1055fc31:	52                                              	push   edx
1055fc32:	e8 39 4f 3d 00                                  	call   0x10934b70
1055fc37:	bd 44 82 ca 10                                  	mov    ebp,0x10ca8244
1055fc3c:	83 c4 08                                        	add    esp,0x8
1055fc3f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1055fc43:	c7 44 24 1c 6c f6 b1 10                         	mov    DWORD PTR [esp+0x1c],0x10b1f66c
1055fc4b:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
1055fc4f:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
1055fc53:	c7 44 24 18 46 82 ca 10                         	mov    DWORD PTR [esp+0x18],0x10ca8246
1055fc5b:	e8 a0 d6 3c 00                                  	call   0x1092d300
1055fc60:	50                                              	push   eax
1055fc61:	6a 0a                                           	push   0xa
1055fc63:	e8 b8 cf 3c 00                                  	call   0x1092cc20
1055fc68:	83 c4 04                                        	add    esp,0x4
1055fc6b:	50                                              	push   eax
1055fc6c:	6a 09                                           	push   0x9
1055fc6e:	e8 ad cf 3c 00                                  	call   0x1092cc20
1055fc73:	83 c4 04                                        	add    esp,0x4
1055fc76:	50                                              	push   eax
1055fc77:	6a 08                                           	push   0x8
1055fc79:	e8 a2 cf 3c 00                                  	call   0x1092cc20
1055fc7e:	83 c4 04                                        	add    esp,0x4
1055fc81:	50                                              	push   eax
1055fc82:	6a 01                                           	push   0x1
1055fc84:	e8 97 cf 3c 00                                  	call   0x1092cc20
1055fc89:	83 c4 04                                        	add    esp,0x4
1055fc8c:	50                                              	push   eax
1055fc8d:	6a 06                                           	push   0x6
1055fc8f:	e8 8c cf 3c 00                                  	call   0x1092cc20
1055fc94:	83 c4 04                                        	add    esp,0x4
1055fc97:	50                                              	push   eax
1055fc98:	6a 02                                           	push   0x2
1055fc9a:	e8 81 cf 3c 00                                  	call   0x1092cc20
1055fc9f:	83 c4 04                                        	add    esp,0x4
1055fca2:	50                                              	push   eax
1055fca3:	8d 84 24 a8 00 00 00                            	lea    eax,[esp+0xa8]
1055fcaa:	50                                              	push   eax
1055fcab:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1055fcaf:	68 f8 f5 b1 10                                  	push   0x10b1f5f8
1055fcb4:	51                                              	push   ecx
1055fcb5:	e8 36 b3 b0 ff                                  	call   0x1006aff0
1055fcba:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
1055fcbe:	83 c4 28                                        	add    esp,0x28
1055fcc1:	6a 00                                           	push   0x0
1055fcc3:	52                                              	push   edx
1055fcc4:	8d 8c 24 94 01 00 00                            	lea    ecx,[esp+0x194]
1055fccb:	e8 50 29 3c 00                                  	call   0x10922620
1055fcd0:	8d 8c 24 8c 01 00 00                            	lea    ecx,[esp+0x18c]
1055fcd7:	e8 04 f0 4c 00                                  	call   0x10a2ece0
1055fcdc:	8b f0                                           	mov    esi,eax
1055fcde:	6a 00                                           	push   0x0
1055fce0:	56                                              	push   esi
1055fce1:	c7 44 24 50 d4 f5 b1 10                         	mov    DWORD PTR [esp+0x50],0x10b1f5d4
1055fce9:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
1055fced:	89 6c 24 48                                     	mov    DWORD PTR [esp+0x48],ebp
1055fcf1:	c7 44 24 4c 46 82 ca 10                         	mov    DWORD PTR [esp+0x4c],0x10ca8246
1055fcf9:	e8 e2 0c 3b 00                                  	call   0x109109e0
1055fcfe:	83 c4 08                                        	add    esp,0x8
1055fd01:	84 c0                                           	test   al,al
1055fd03:	74 76                                           	je     0x1055fd7b
1055fd05:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1055fd09:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
1055fd0d:	50                                              	push   eax
1055fd0e:	55                                              	push   ebp
1055fd0f:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
1055fd13:	e8 a8 fb ab ff                                  	call   0x1001f8c0
1055fd18:	6a 00                                           	push   0x0
1055fd1a:	6a 00                                           	push   0x0
1055fd1c:	6a 00                                           	push   0x0
1055fd1e:	6a 00                                           	push   0x0
1055fd20:	68 b0 f5 b1 10                                  	push   0x10b1f5b0
1055fd25:	68 28 02 00 00                                  	push   0x228
1055fd2a:	e8 81 91 3b 00                                  	call   0x10918eb0
1055fd2f:	83 c4 18                                        	add    esp,0x18
1055fd32:	85 c0                                           	test   eax,eax
1055fd34:	74 0c                                           	je     0x1055fd42
1055fd36:	56                                              	push   esi
1055fd37:	8b c8                                           	mov    ecx,eax
1055fd39:	e8 f2 0a 3b 00                                  	call   0x10910830
1055fd3e:	8b f0                                           	mov    esi,eax
1055fd40:	eb 02                                           	jmp    0x1055fd44
1055fd42:	33 f6                                           	xor    esi,esi
1055fd44:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055fd46:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
1055fd49:	6a 00                                           	push   0x0
1055fd4b:	6a 01                                           	push   0x1
1055fd4d:	6a 03                                           	push   0x3
1055fd4f:	6a 02                                           	push   0x2
1055fd51:	8b ce                                           	mov    ecx,esi
1055fd53:	ff d0                                           	call   eax
1055fd55:	84 c0                                           	test   al,al
1055fd57:	74 11                                           	je     0x1055fd6a
1055fd59:	8b 17                                           	mov    edx,DWORD PTR [edi]
1055fd5b:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
1055fd61:	6a 47                                           	push   0x47
1055fd63:	56                                              	push   esi
1055fd64:	8b cf                                           	mov    ecx,edi
1055fd66:	ff d0                                           	call   eax
1055fd68:	89 03                                           	mov    DWORD PTR [ebx],eax
1055fd6a:	83 3b 00                                        	cmp    DWORD PTR [ebx],0x0
1055fd6d:	75 60                                           	jne    0x1055fdcf
1055fd6f:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055fd71:	8b 02                                           	mov    eax,DWORD PTR [edx]
1055fd73:	6a 01                                           	push   0x1
1055fd75:	8b ce                                           	mov    ecx,esi
1055fd77:	ff d0                                           	call   eax
1055fd79:	eb 54                                           	jmp    0x1055fdcf
1055fd7b:	68 8c f5 b1 10                                  	push   0x10b1f58c
1055fd80:	6a ff                                           	push   0xffffffff
1055fd82:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1055fd86:	68 00 f4 b1 10                                  	push   0x10b1f400
1055fd8b:	51                                              	push   ecx
1055fd8c:	e8 1f 70 3c 00                                  	call   0x10926db0
1055fd91:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
1055fd95:	83 c4 10                                        	add    esp,0x10
1055fd98:	3b c2                                           	cmp    eax,edx
1055fd9a:	74 10                                           	je     0x1055fdac
1055fd9c:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1055fd9f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055fda1:	51                                              	push   ecx
1055fda2:	52                                              	push   edx
1055fda3:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
1055fda7:	e8 14 fb ab ff                                  	call   0x1001f8c0
1055fdac:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
1055fdb0:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
1055fdb4:	2b c8                                           	sub    ecx,eax
1055fdb6:	83 e1 fe                                        	and    ecx,0xfffffffe
1055fdb9:	83 f9 02                                        	cmp    ecx,0x2
1055fdbc:	7e 0d                                           	jle    0x1055fdcb
1055fdbe:	85 c0                                           	test   eax,eax
1055fdc0:	74 09                                           	je     0x1055fdcb
1055fdc2:	50                                              	push   eax
1055fdc3:	e8 c8 90 3b 00                                  	call   0x10918e90
1055fdc8:	83 c4 04                                        	add    esp,0x4
1055fdcb:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
1055fdcf:	6a 01                                           	push   0x1
1055fdd1:	6a 10                                           	push   0x10
1055fdd3:	8d 54 24 44                                     	lea    edx,[esp+0x44]
1055fdd7:	52                                              	push   edx
1055fdd8:	6a 09                                           	push   0x9
1055fdda:	6a 13                                           	push   0x13
1055fddc:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
1055fde3:	c7 84 24 80 00 00 00 b4 a5 ac 10                	mov    DWORD PTR [esp+0x80],0x10aca5b4
1055fdee:	66 c7 84 24 8a 00 00 00 13 00                   	mov    WORD PTR [esp+0x8a],0x13
1055fdf8:	66 c7 84 24 88 00 00 00 0b 00                   	mov    WORD PTR [esp+0x88],0xb
1055fe02:	e8 89 8d 3c 00                                  	call   0x10928b90
1055fe07:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
1055fe0f:	e8 0c b3 ff ff                                  	call   0x1055b120
1055fe14:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055fe16:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1055fe19:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1055fe1d:	51                                              	push   ecx
1055fe1e:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
1055fe22:	51                                              	push   ecx
1055fe23:	8b c8                                           	mov    ecx,eax
1055fe25:	ff d2                                           	call   edx
1055fe27:	f6 44 24 74 04                                  	test   BYTE PTR [esp+0x74],0x4
1055fe2c:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
1055fe30:	c7 44 24 6c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x6c],0x10aca5b4
1055fe38:	74 0b                                           	je     0x1055fe45
1055fe3a:	6a 00                                           	push   0x0
1055fe3c:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
1055fe40:	e8 4b 8c 3c 00                                  	call   0x10928a90
1055fe45:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1055fe49:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
1055fe4d:	2b c8                                           	sub    ecx,eax
1055fe4f:	83 e1 fe                                        	and    ecx,0xfffffffe
1055fe52:	83 f9 02                                        	cmp    ecx,0x2
1055fe55:	7e 0d                                           	jle    0x1055fe64
1055fe57:	85 c0                                           	test   eax,eax
1055fe59:	74 09                                           	je     0x1055fe64
1055fe5b:	50                                              	push   eax
1055fe5c:	e8 2f 90 3b 00                                  	call   0x10918e90
1055fe61:	83 c4 04                                        	add    esp,0x4
1055fe64:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1055fe68:	2b d5                                           	sub    edx,ebp
1055fe6a:	83 e2 fe                                        	and    edx,0xfffffffe
1055fe6d:	83 fa 02                                        	cmp    edx,0x2
1055fe70:	7e 0d                                           	jle    0x1055fe7f
1055fe72:	85 ed                                           	test   ebp,ebp
1055fe74:	74 09                                           	je     0x1055fe7f
1055fe76:	55                                              	push   ebp
1055fe77:	e8 14 90 3b 00                                  	call   0x10918e90
1055fe7c:	83 c4 04                                        	add    esp,0x4
1055fe7f:	5f                                              	pop    edi
1055fe80:	8b c6                                           	mov    eax,esi
1055fe82:	5e                                              	pop    esi
1055fe83:	5d                                              	pop    ebp
1055fe84:	5b                                              	pop    ebx
1055fe85:	81 c4 8c 05 00 00                               	add    esp,0x58c
1055fe8b:	c3                                              	ret
1055fe8c:	cc                                              	int3
1055fe8d:	cc                                              	int3
1055fe8e:	cc                                              	int3
1055fe8f:	cc                                              	int3
1055fe90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1055fe94:	c7 00 98 fd c2 10                               	mov    DWORD PTR [eax],0x10c2fd98
1055fe9a:	c2 04 00                                        	ret    0x4
1055fe9d:	cc                                              	int3
1055fe9e:	cc                                              	int3
1055fe9f:	cc                                              	int3
1055fea0:	b8 ac fd b1 10                                  	mov    eax,0x10b1fdac
1055fea5:	c3                                              	ret
1055fea6:	cc                                              	int3
1055fea7:	cc                                              	int3
1055fea8:	cc                                              	int3
1055fea9:	cc                                              	int3
1055feaa:	cc                                              	int3
1055feab:	cc                                              	int3
1055feac:	cc                                              	int3
1055fead:	cc                                              	int3
1055feae:	cc                                              	int3
1055feaf:	cc                                              	int3

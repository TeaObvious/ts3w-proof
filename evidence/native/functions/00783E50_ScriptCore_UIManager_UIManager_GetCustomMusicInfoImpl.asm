# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00783e50 (ScriptCore.UIManager::UIManager_GetCustomMusicInfoImpl)
Paired Ghidra pseudocode: 00783E50_ScriptCore_UIManager_UIManager_GetCustomMusicInfoImpl.c
Window: [0x00783e50, 0x00784120) (720 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00783e50: 81 ec a0 06 00 00 53 33 db 89 5c 24 04 e8 2e 55
00783e60: fe ff 3b c3 89 44 24 28 0f 84 a4 02 00 00 a1 88
00783e70: 79 1d 01 55 56 57 83 c0 48 50 8d 4c 24 28 e8 ad
00783e80: ef ff ff 8b 6c 24 28 8b 7c 24 24 8b cd 2b cf b8
00783e90: 39 8e e3 38 f7 e9 c1 fa 05 8b ca c1 e9 1f 03 ca
00783ea0: 75 2c 8b 15 88 79 1d 01 83 c2 48 52 e8 6f 5f 0e
00783eb0: 00 a1 88 79 1d 01 83 c4 04 83 c0 48 50 8d 4c 24
00783ec0: 28 e8 ca fc ff ff 8b 6c 24 28 8b 7c 24 24 8b cd
00783ed0: 2b cf b8 39 8e e3 38 f7 e9 8b 84 24 b4 06 00 00
00783ee0: c1 fa 05 8b ca c1 e9 1f 03 ca 3b c1 0f 83 d5 01
00783ef0: 00 00 8d 14 c0 c1 e2 04 8b 04 3a 8d 2c 3a 50 8d
00783f00: 4c 24 18 89 5c 24 18 89 5c 24 1c 89 5c 24 20 c7
00783f10: 44 24 24 50 fc 00 01 e8 74 76 c8 ff 8d 45 13 8d
00783f20: 74 24 78 33 c9 2b f0 8a 10 88 14 06 38 18 74 0b
00783f30: 83 c1 01 83 c0 01 83 f9 1e 7c ec 3b cb 75 38 8b
00783f40: 45 00 50 8d 8c 24 a4 02 00 00 e8 21 a2 d6 ff 68
00783f50: 00 01 00 00 8d 8c 24 a4 00 00 00 51 8d 8c 24 a8
00783f60: 02 00 00 e8 58 9e d6 ff 8d 94 24 a0 00 00 00 52
00783f70: 68 48 fc 00 01 eb 35 83 f9 1e 75 26 8d 7c 24 78
00783f80: 88 9c 24 96 00 00 00 83 c7 ff 8d 9b 00 00 00 00
00783f90: 8a 47 01 83 c7 01 84 c0 75 f6 8b 0d e0 99 f9 00
00783fa0: 89 0f 8d 54 24 78 52 68 3c fc 00 01 8d 44 24 1c
00783fb0: 50 e8 8a b1 d2 ff 8d 45 31 8d b4 24 84 00 00 00
00783fc0: 83 c4 0c 33 c9 2b f0 8a 10 88 14 30 38 18 74 0b
00783fd0: 83 c1 01 83 c0 01 83 f9 1e 7c ec 83 f9 1e 75 21
00783fe0: 8d 7c 24 78 88 9c 24 96 00 00 00 83 c7 ff 8b ff
00783ff0: 8a 47 01 83 c7 01 84 c0 75 f6 a1 e0 99 f9 00 89
00784000: 07 8d 4c 24 78 51 8d 54 24 18 68 3c fc 00 01 52
00784010: e8 2b b1 d2 ff 83 c4 0c 6a 01 6a 10 8d 44 24 1c
00784020: 50 6a 09 be f4 a6 fb 00 6a 13 8d 4c 24 4c 89 74
00784030: 24 4c 66 89 5c 24 54 66 89 5c 24 56 e8 7f 19 d7
00784040: ff 8d 4c 24 38 51 8d 4c 24 5c 89 74 24 5c 66 89
00784050: 5c 24 64 66 89 5c 24 66 e8 53 24 d7 ff b3 04 84
00784060: 5c 24 40 89 74 24 38 74 0b 6a 00 8d 4c 24 3c e8
00784070: ec 16 d7 ff 8b 4c 24 34 8b 11 8b 52 50 8d 44 24
00784080: 10 50 8d 44 24 5c 50 ff d2 84 5c 24 60 89 74 24
00784090: 58 74 0b 6a 00 8d 4c 24 5c e8 c2 16 d7 ff 8b 4c
007840a0: 24 1c 8b 44 24 14 2b c8 83 e1 fe 83 f9 02 7e 0d
007840b0: 85 c0 74 09 50 e8 26 04 d6 ff 83 c4 04 8b 7c 24
007840c0: 24 8b 6c 24 28 33 db 3b fd 8b f7 73 29 8d 49 00
007840d0: 8b 06 8b 56 08 2b d0 83 e2 fe 83 fa 02 7e 0d 3b
007840e0: c3 74 09 50 e8 f7 03 d6 ff 83 c4 04 81 c6 90 00
007840f0: 00 00 3b f5 72 da 3b fb 74 09 57 e8 e0 03 d6 ff
00784100: 83 c4 04 8b 44 24 10 5f 5e 5d 5b 81 c4 a0 06 00
00784110: 00 c3 8b 44 24 04 5b 81 c4 a0 06 00 00 c3 cc cc

LINEAR DISASSEMBLY
00783e50 <.text+0x382e50>:
  783e50:	81 ec a0 06 00 00                               	sub    esp,0x6a0
  783e56:	53                                              	push   ebx
  783e57:	33 db                                           	xor    ebx,ebx
  783e59:	89 5c 24 04                                     	mov    DWORD PTR [esp+0x4],ebx
  783e5d:	e8 2e 55 fe ff                                  	call   0x769390
  783e62:	3b c3                                           	cmp    eax,ebx
  783e64:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  783e68:	0f 84 a4 02 00 00                               	je     0x784112
  783e6e:	a1 88 79 1d 01                                  	mov    eax,ds:0x11d7988
  783e73:	55                                              	push   ebp
  783e74:	56                                              	push   esi
  783e75:	57                                              	push   edi
  783e76:	83 c0 48                                        	add    eax,0x48
  783e79:	50                                              	push   eax
  783e7a:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  783e7e:	e8 ad ef ff ff                                  	call   0x782e30
  783e83:	8b 6c 24 28                                     	mov    ebp,DWORD PTR [esp+0x28]
  783e87:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
  783e8b:	8b cd                                           	mov    ecx,ebp
  783e8d:	2b cf                                           	sub    ecx,edi
  783e8f:	b8 39 8e e3 38                                  	mov    eax,0x38e38e39
  783e94:	f7 e9                                           	imul   ecx
  783e96:	c1 fa 05                                        	sar    edx,0x5
  783e99:	8b ca                                           	mov    ecx,edx
  783e9b:	c1 e9 1f                                        	shr    ecx,0x1f
  783e9e:	03 ca                                           	add    ecx,edx
  783ea0:	75 2c                                           	jne    0x783ece
  783ea2:	8b 15 88 79 1d 01                               	mov    edx,DWORD PTR ds:0x11d7988
  783ea8:	83 c2 48                                        	add    edx,0x48
  783eab:	52                                              	push   edx
  783eac:	e8 6f 5f 0e 00                                  	call   0x869e20
  783eb1:	a1 88 79 1d 01                                  	mov    eax,ds:0x11d7988
  783eb6:	83 c4 04                                        	add    esp,0x4
  783eb9:	83 c0 48                                        	add    eax,0x48
  783ebc:	50                                              	push   eax
  783ebd:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  783ec1:	e8 ca fc ff ff                                  	call   0x783b90
  783ec6:	8b 6c 24 28                                     	mov    ebp,DWORD PTR [esp+0x28]
  783eca:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
  783ece:	8b cd                                           	mov    ecx,ebp
  783ed0:	2b cf                                           	sub    ecx,edi
  783ed2:	b8 39 8e e3 38                                  	mov    eax,0x38e38e39
  783ed7:	f7 e9                                           	imul   ecx
  783ed9:	8b 84 24 b4 06 00 00                            	mov    eax,DWORD PTR [esp+0x6b4]
  783ee0:	c1 fa 05                                        	sar    edx,0x5
  783ee3:	8b ca                                           	mov    ecx,edx
  783ee5:	c1 e9 1f                                        	shr    ecx,0x1f
  783ee8:	03 ca                                           	add    ecx,edx
  783eea:	3b c1                                           	cmp    eax,ecx
  783eec:	0f 83 d5 01 00 00                               	jae    0x7840c7
  783ef2:	8d 14 c0                                        	lea    edx,[eax+eax*8]
  783ef5:	c1 e2 04                                        	shl    edx,0x4
  783ef8:	8b 04 3a                                        	mov    eax,DWORD PTR [edx+edi*1]
  783efb:	8d 2c 3a                                        	lea    ebp,[edx+edi*1]
  783efe:	50                                              	push   eax
  783eff:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  783f03:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  783f07:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  783f0b:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  783f0f:	c7 44 24 24 50 fc 00 01                         	mov    DWORD PTR [esp+0x24],0x100fc50
  783f17:	e8 74 76 c8 ff                                  	call   0x40b590
  783f1c:	8d 45 13                                        	lea    eax,[ebp+0x13]
  783f1f:	8d 74 24 78                                     	lea    esi,[esp+0x78]
  783f23:	33 c9                                           	xor    ecx,ecx
  783f25:	2b f0                                           	sub    esi,eax
  783f27:	8a 10                                           	mov    dl,BYTE PTR [eax]
  783f29:	88 14 06                                        	mov    BYTE PTR [esi+eax*1],dl
  783f2c:	38 18                                           	cmp    BYTE PTR [eax],bl
  783f2e:	74 0b                                           	je     0x783f3b
  783f30:	83 c1 01                                        	add    ecx,0x1
  783f33:	83 c0 01                                        	add    eax,0x1
  783f36:	83 f9 1e                                        	cmp    ecx,0x1e
  783f39:	7c ec                                           	jl     0x783f27
  783f3b:	3b cb                                           	cmp    ecx,ebx
  783f3d:	75 38                                           	jne    0x783f77
  783f3f:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  783f42:	50                                              	push   eax
  783f43:	8d 8c 24 a4 02 00 00                            	lea    ecx,[esp+0x2a4]
  783f4a:	e8 21 a2 d6 ff                                  	call   0x4ee170
  783f4f:	68 00 01 00 00                                  	push   0x100
  783f54:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  783f5b:	51                                              	push   ecx
  783f5c:	8d 8c 24 a8 02 00 00                            	lea    ecx,[esp+0x2a8]
  783f63:	e8 58 9e d6 ff                                  	call   0x4eddc0
  783f68:	8d 94 24 a0 00 00 00                            	lea    edx,[esp+0xa0]
  783f6f:	52                                              	push   edx
  783f70:	68 48 fc 00 01                                  	push   0x100fc48
  783f75:	eb 35                                           	jmp    0x783fac
  783f77:	83 f9 1e                                        	cmp    ecx,0x1e
  783f7a:	75 26                                           	jne    0x783fa2
  783f7c:	8d 7c 24 78                                     	lea    edi,[esp+0x78]
  783f80:	88 9c 24 96 00 00 00                            	mov    BYTE PTR [esp+0x96],bl
  783f87:	83 c7 ff                                        	add    edi,0xffffffff
  783f8a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  783f90:	8a 47 01                                        	mov    al,BYTE PTR [edi+0x1]
  783f93:	83 c7 01                                        	add    edi,0x1
  783f96:	84 c0                                           	test   al,al
  783f98:	75 f6                                           	jne    0x783f90
  783f9a:	8b 0d e0 99 f9 00                               	mov    ecx,DWORD PTR ds:0xf999e0
  783fa0:	89 0f                                           	mov    DWORD PTR [edi],ecx
  783fa2:	8d 54 24 78                                     	lea    edx,[esp+0x78]
  783fa6:	52                                              	push   edx
  783fa7:	68 3c fc 00 01                                  	push   0x100fc3c
  783fac:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  783fb0:	50                                              	push   eax
  783fb1:	e8 8a b1 d2 ff                                  	call   0x4af140
  783fb6:	8d 45 31                                        	lea    eax,[ebp+0x31]
  783fb9:	8d b4 24 84 00 00 00                            	lea    esi,[esp+0x84]
  783fc0:	83 c4 0c                                        	add    esp,0xc
  783fc3:	33 c9                                           	xor    ecx,ecx
  783fc5:	2b f0                                           	sub    esi,eax
  783fc7:	8a 10                                           	mov    dl,BYTE PTR [eax]
  783fc9:	88 14 30                                        	mov    BYTE PTR [eax+esi*1],dl
  783fcc:	38 18                                           	cmp    BYTE PTR [eax],bl
  783fce:	74 0b                                           	je     0x783fdb
  783fd0:	83 c1 01                                        	add    ecx,0x1
  783fd3:	83 c0 01                                        	add    eax,0x1
  783fd6:	83 f9 1e                                        	cmp    ecx,0x1e
  783fd9:	7c ec                                           	jl     0x783fc7
  783fdb:	83 f9 1e                                        	cmp    ecx,0x1e
  783fde:	75 21                                           	jne    0x784001
  783fe0:	8d 7c 24 78                                     	lea    edi,[esp+0x78]
  783fe4:	88 9c 24 96 00 00 00                            	mov    BYTE PTR [esp+0x96],bl
  783feb:	83 c7 ff                                        	add    edi,0xffffffff
  783fee:	8b ff                                           	mov    edi,edi
  783ff0:	8a 47 01                                        	mov    al,BYTE PTR [edi+0x1]
  783ff3:	83 c7 01                                        	add    edi,0x1
  783ff6:	84 c0                                           	test   al,al
  783ff8:	75 f6                                           	jne    0x783ff0
  783ffa:	a1 e0 99 f9 00                                  	mov    eax,ds:0xf999e0
  783fff:	89 07                                           	mov    DWORD PTR [edi],eax
  784001:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  784005:	51                                              	push   ecx
  784006:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  78400a:	68 3c fc 00 01                                  	push   0x100fc3c
  78400f:	52                                              	push   edx
  784010:	e8 2b b1 d2 ff                                  	call   0x4af140
  784015:	83 c4 0c                                        	add    esp,0xc
  784018:	6a 01                                           	push   0x1
  78401a:	6a 10                                           	push   0x10
  78401c:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  784020:	50                                              	push   eax
  784021:	6a 09                                           	push   0x9
  784023:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  784028:	6a 13                                           	push   0x13
  78402a:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  78402e:	89 74 24 4c                                     	mov    DWORD PTR [esp+0x4c],esi
  784032:	66 89 5c 24 54                                  	mov    WORD PTR [esp+0x54],bx
  784037:	66 89 5c 24 56                                  	mov    WORD PTR [esp+0x56],bx
  78403c:	e8 7f 19 d7 ff                                  	call   0x4f59c0
  784041:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  784045:	51                                              	push   ecx
  784046:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  78404a:	89 74 24 5c                                     	mov    DWORD PTR [esp+0x5c],esi
  78404e:	66 89 5c 24 64                                  	mov    WORD PTR [esp+0x64],bx
  784053:	66 89 5c 24 66                                  	mov    WORD PTR [esp+0x66],bx
  784058:	e8 53 24 d7 ff                                  	call   0x4f64b0
  78405d:	b3 04                                           	mov    bl,0x4
  78405f:	84 5c 24 40                                     	test   BYTE PTR [esp+0x40],bl
  784063:	89 74 24 38                                     	mov    DWORD PTR [esp+0x38],esi
  784067:	74 0b                                           	je     0x784074
  784069:	6a 00                                           	push   0x0
  78406b:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  78406f:	e8 ec 16 d7 ff                                  	call   0x4f5760
  784074:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  784078:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  78407a:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  78407d:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  784081:	50                                              	push   eax
  784082:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
  784086:	50                                              	push   eax
  784087:	ff d2                                           	call   edx
  784089:	84 5c 24 60                                     	test   BYTE PTR [esp+0x60],bl
  78408d:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
  784091:	74 0b                                           	je     0x78409e
  784093:	6a 00                                           	push   0x0
  784095:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  784099:	e8 c2 16 d7 ff                                  	call   0x4f5760
  78409e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7840a2:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7840a6:	2b c8                                           	sub    ecx,eax
  7840a8:	83 e1 fe                                        	and    ecx,0xfffffffe
  7840ab:	83 f9 02                                        	cmp    ecx,0x2
  7840ae:	7e 0d                                           	jle    0x7840bd
  7840b0:	85 c0                                           	test   eax,eax
  7840b2:	74 09                                           	je     0x7840bd
  7840b4:	50                                              	push   eax
  7840b5:	e8 26 04 d6 ff                                  	call   0x4e44e0
  7840ba:	83 c4 04                                        	add    esp,0x4
  7840bd:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
  7840c1:	8b 6c 24 28                                     	mov    ebp,DWORD PTR [esp+0x28]
  7840c5:	33 db                                           	xor    ebx,ebx
  7840c7:	3b fd                                           	cmp    edi,ebp
  7840c9:	8b f7                                           	mov    esi,edi
  7840cb:	73 29                                           	jae    0x7840f6
  7840cd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  7840d0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7840d2:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  7840d5:	2b d0                                           	sub    edx,eax
  7840d7:	83 e2 fe                                        	and    edx,0xfffffffe
  7840da:	83 fa 02                                        	cmp    edx,0x2
  7840dd:	7e 0d                                           	jle    0x7840ec
  7840df:	3b c3                                           	cmp    eax,ebx
  7840e1:	74 09                                           	je     0x7840ec
  7840e3:	50                                              	push   eax
  7840e4:	e8 f7 03 d6 ff                                  	call   0x4e44e0
  7840e9:	83 c4 04                                        	add    esp,0x4
  7840ec:	81 c6 90 00 00 00                               	add    esi,0x90
  7840f2:	3b f5                                           	cmp    esi,ebp
  7840f4:	72 da                                           	jb     0x7840d0
  7840f6:	3b fb                                           	cmp    edi,ebx
  7840f8:	74 09                                           	je     0x784103
  7840fa:	57                                              	push   edi
  7840fb:	e8 e0 03 d6 ff                                  	call   0x4e44e0
  784100:	83 c4 04                                        	add    esp,0x4
  784103:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  784107:	5f                                              	pop    edi
  784108:	5e                                              	pop    esi
  784109:	5d                                              	pop    ebp
  78410a:	5b                                              	pop    ebx
  78410b:	81 c4 a0 06 00 00                               	add    esp,0x6a0
  784111:	c3                                              	ret
  784112:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  784116:	5b                                              	pop    ebx
  784117:	81 c4 a0 06 00 00                               	add    esp,0x6a0
  78411d:	c3                                              	ret
  78411e:	cc                                              	int3
  78411f:	cc                                              	int3

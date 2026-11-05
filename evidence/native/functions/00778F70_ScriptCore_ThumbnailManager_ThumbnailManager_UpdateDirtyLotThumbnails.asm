# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00778f70 (ScriptCore.ThumbnailManager::ThumbnailManager_UpdateDirtyLotThumbnails)
Paired Ghidra pseudocode: 00778F70_ScriptCore_ThumbnailManager_ThumbnailManager_UpdateDirtyLotThumbnails.c
Window: [0x00778f70, 0x00779200) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00778f70: 55 8b ec 83 e4 f8 81 ec 84 01 00 00 53 56 57 e8
00778f80: 0c 04 ff ff 8b f0 8b 06 8b 90 18 01 00 00 8b ce
00778f90: 89 74 24 2c ff d2 8b 3d c4 db 1e 01 89 44 24 18
00778fa0: a1 30 ec 1e 01 33 db 3b fb 89 54 24 1c c6 44 24
00778fb0: 12 00 89 44 24 34 74 7e 3b c3 74 7a 53 53 53 53
00778fc0: 68 44 e2 00 01 6a 38 c6 44 24 2a 01 88 5c 24 2b
00778fd0: e8 2b b5 d6 ff 83 c4 18 3b c3 0f 84 af 00 00 00
00778fe0: 8b 4d 08 8b 54 24 1c 51 8b 4c 24 1c 52 51 8b c8
00778ff0: e8 7b ec ff ff 3b c3 89 44 24 14 74 09 8b 10 8b
00779000: c8 8b 42 04 ff d0 6a 01 8b cf e8 91 f7 4e 00 8b
00779010: 48 04 2b 08 8b d3 c1 f9 02 89 44 24 30 89 4c 24
00779020: 28 89 54 24 24 75 7d 8b 4c 24 14 3b cb 74 07 8b
00779030: 01 8b 50 08 ff d2 8a 44 24 12 8b 4c 24 1c 88 44
00779040: 24 48 53 8d 44 24 3c 50 8b 44 24 20 51 8b 4d 08
00779050: bf f4 a6 fb 00 89 7c 24 44 66 c7 44 24 4e 01 00
00779060: 66 89 5c 24 4c 8b 16 8b 92 30 01 00 00 50 51 8b
00779070: ce ff d2 f6 44 24 40 04 89 7c 24 38 74 0a 53 8d
00779080: 4c 24 3c e8 d8 c6 d7 ff 5f 5e 5b 8b e5 5d c3 89
00779090: 5c 24 14 e9 6e ff ff ff eb 06 8d 9b 00 00 00 00
007790a0: 8b 44 24 30 8b 00 8b 04 90 3b c3 0f 84 e9 00 00
007790b0: 00 8b 70 48 8b 78 4c 8d 4c 24 68 e8 40 d4 e6 ff
007790c0: 89 b4 24 e0 00 00 00 89 9c 24 ec 00 00 00 89 74
007790d0: 24 58 89 5c 24 60 c7 84 24 e8 00 00 00 4c ee 6f
007790e0: 43 89 bc 24 e4 00 00 00 33 f6 bb 01 00 00 00 f6
007790f0: c3 04 74 2a 8b 54 24 58 83 ec 10 8b c4 89 10 8d
00779100: 8e c4 7f 4e d8 89 78 04 89 48 08 33 c9 51 89 48
00779110: 0c 56 8d 8c 24 80 00 00 00 e8 92 db e6 ff 83 c6
00779120: 01 03 db 83 fe 04 72 c7 8b 74 24 34 8d 44 24 68
00779130: 50 8b ce e8 98 54 5d 00 84 c0 75 20 8b 4c 24 14
00779140: 51 6a 00 6a 00 6a 00 8d 54 24 78 52 8b ce e8 fd
00779150: 48 5e 00 84 c0 74 05 c6 44 24 13 01 8b 84 24 f8
00779160: 00 00 00 85 c0 74 12 3b 84 24 08 01 00 00 74 09
00779170: 50 e8 6a b3 d6 ff 83 c4 04 8b 44 24 68 85 c0 74
00779180: 0f 3b 44 24 78 74 09 50 e8 53 b3 d6 ff 83 c4 04
00779190: 8b 4c 24 28 8b 74 24 2c 33 db 8b 54 24 24 83 c2
007791a0: 01 3b d1 89 54 24 24 0f 82 f3 fe ff ff 80 7c 24
007791b0: 13 00 0f 84 6f fe ff ff 8b 4d 08 8b 54 24 1c 8b
007791c0: 06 53 51 8b 4c 24 20 6a ff 52 8b 90 20 01 00 00
007791d0: 51 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce ff
007791e0: d2 8b 4c 24 14 3b cb 0f 84 9b fe ff ff 8b 01 8b
007791f0: 50 08 ff d2 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00778f70 <.text+0x377f70>:
  778f70:	55                                              	push   ebp
  778f71:	8b ec                                           	mov    ebp,esp
  778f73:	83 e4 f8                                        	and    esp,0xfffffff8
  778f76:	81 ec 84 01 00 00                               	sub    esp,0x184
  778f7c:	53                                              	push   ebx
  778f7d:	56                                              	push   esi
  778f7e:	57                                              	push   edi
  778f7f:	e8 0c 04 ff ff                                  	call   0x769390
  778f84:	8b f0                                           	mov    esi,eax
  778f86:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778f88:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  778f8e:	8b ce                                           	mov    ecx,esi
  778f90:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  778f94:	ff d2                                           	call   edx
  778f96:	8b 3d c4 db 1e 01                               	mov    edi,DWORD PTR ds:0x11edbc4
  778f9c:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  778fa0:	a1 30 ec 1e 01                                  	mov    eax,ds:0x11eec30
  778fa5:	33 db                                           	xor    ebx,ebx
  778fa7:	3b fb                                           	cmp    edi,ebx
  778fa9:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  778fad:	c6 44 24 12 00                                  	mov    BYTE PTR [esp+0x12],0x0
  778fb2:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  778fb6:	74 7e                                           	je     0x779036
  778fb8:	3b c3                                           	cmp    eax,ebx
  778fba:	74 7a                                           	je     0x779036
  778fbc:	53                                              	push   ebx
  778fbd:	53                                              	push   ebx
  778fbe:	53                                              	push   ebx
  778fbf:	53                                              	push   ebx
  778fc0:	68 44 e2 00 01                                  	push   0x100e244
  778fc5:	6a 38                                           	push   0x38
  778fc7:	c6 44 24 2a 01                                  	mov    BYTE PTR [esp+0x2a],0x1
  778fcc:	88 5c 24 2b                                     	mov    BYTE PTR [esp+0x2b],bl
  778fd0:	e8 2b b5 d6 ff                                  	call   0x4e4500
  778fd5:	83 c4 18                                        	add    esp,0x18
  778fd8:	3b c3                                           	cmp    eax,ebx
  778fda:	0f 84 af 00 00 00                               	je     0x77908f
  778fe0:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  778fe3:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  778fe7:	51                                              	push   ecx
  778fe8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  778fec:	52                                              	push   edx
  778fed:	51                                              	push   ecx
  778fee:	8b c8                                           	mov    ecx,eax
  778ff0:	e8 7b ec ff ff                                  	call   0x777c70
  778ff5:	3b c3                                           	cmp    eax,ebx
  778ff7:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  778ffb:	74 09                                           	je     0x779006
  778ffd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  778fff:	8b c8                                           	mov    ecx,eax
  779001:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  779004:	ff d0                                           	call   eax
  779006:	6a 01                                           	push   0x1
  779008:	8b cf                                           	mov    ecx,edi
  77900a:	e8 91 f7 4e 00                                  	call   0xc687a0
  77900f:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  779012:	2b 08                                           	sub    ecx,DWORD PTR [eax]
  779014:	8b d3                                           	mov    edx,ebx
  779016:	c1 f9 02                                        	sar    ecx,0x2
  779019:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  77901d:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  779021:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  779025:	75 7d                                           	jne    0x7790a4
  779027:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77902b:	3b cb                                           	cmp    ecx,ebx
  77902d:	74 07                                           	je     0x779036
  77902f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  779031:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  779034:	ff d2                                           	call   edx
  779036:	8a 44 24 12                                     	mov    al,BYTE PTR [esp+0x12]
  77903a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77903e:	88 44 24 48                                     	mov    BYTE PTR [esp+0x48],al
  779042:	53                                              	push   ebx
  779043:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  779047:	50                                              	push   eax
  779048:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  77904c:	51                                              	push   ecx
  77904d:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  779050:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  779055:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
  779059:	66 c7 44 24 4e 01 00                            	mov    WORD PTR [esp+0x4e],0x1
  779060:	66 89 5c 24 4c                                  	mov    WORD PTR [esp+0x4c],bx
  779065:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779067:	8b 92 30 01 00 00                               	mov    edx,DWORD PTR [edx+0x130]
  77906d:	50                                              	push   eax
  77906e:	51                                              	push   ecx
  77906f:	8b ce                                           	mov    ecx,esi
  779071:	ff d2                                           	call   edx
  779073:	f6 44 24 40 04                                  	test   BYTE PTR [esp+0x40],0x4
  779078:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  77907c:	74 0a                                           	je     0x779088
  77907e:	53                                              	push   ebx
  77907f:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  779083:	e8 d8 c6 d7 ff                                  	call   0x4f5760
  779088:	5f                                              	pop    edi
  779089:	5e                                              	pop    esi
  77908a:	5b                                              	pop    ebx
  77908b:	8b e5                                           	mov    esp,ebp
  77908d:	5d                                              	pop    ebp
  77908e:	c3                                              	ret
  77908f:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  779093:	e9 6e ff ff ff                                  	jmp    0x779006
  779098:	eb 06                                           	jmp    0x7790a0
  77909a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  7790a0:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7790a4:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7790a6:	8b 04 90                                        	mov    eax,DWORD PTR [eax+edx*4]
  7790a9:	3b c3                                           	cmp    eax,ebx
  7790ab:	0f 84 e9 00 00 00                               	je     0x77919a
  7790b1:	8b 70 48                                        	mov    esi,DWORD PTR [eax+0x48]
  7790b4:	8b 78 4c                                        	mov    edi,DWORD PTR [eax+0x4c]
  7790b7:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  7790bb:	e8 40 d4 e6 ff                                  	call   0x5e6500
  7790c0:	89 b4 24 e0 00 00 00                            	mov    DWORD PTR [esp+0xe0],esi
  7790c7:	89 9c 24 ec 00 00 00                            	mov    DWORD PTR [esp+0xec],ebx
  7790ce:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
  7790d2:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
  7790d6:	c7 84 24 e8 00 00 00 4c ee 6f 43                	mov    DWORD PTR [esp+0xe8],0x436fee4c
  7790e1:	89 bc 24 e4 00 00 00                            	mov    DWORD PTR [esp+0xe4],edi
  7790e8:	33 f6                                           	xor    esi,esi
  7790ea:	bb 01 00 00 00                                  	mov    ebx,0x1
  7790ef:	f6 c3 04                                        	test   bl,0x4
  7790f2:	74 2a                                           	je     0x77911e
  7790f4:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
  7790f8:	83 ec 10                                        	sub    esp,0x10
  7790fb:	8b c4                                           	mov    eax,esp
  7790fd:	89 10                                           	mov    DWORD PTR [eax],edx
  7790ff:	8d 8e c4 7f 4e d8                               	lea    ecx,[esi-0x27b1803c]
  779105:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
  779108:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  77910b:	33 c9                                           	xor    ecx,ecx
  77910d:	51                                              	push   ecx
  77910e:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  779111:	56                                              	push   esi
  779112:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  779119:	e8 92 db e6 ff                                  	call   0x5e6cb0
  77911e:	83 c6 01                                        	add    esi,0x1
  779121:	03 db                                           	add    ebx,ebx
  779123:	83 fe 04                                        	cmp    esi,0x4
  779126:	72 c7                                           	jb     0x7790ef
  779128:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
  77912c:	8d 44 24 68                                     	lea    eax,[esp+0x68]
  779130:	50                                              	push   eax
  779131:	8b ce                                           	mov    ecx,esi
  779133:	e8 98 54 5d 00                                  	call   0xd4e5d0
  779138:	84 c0                                           	test   al,al
  77913a:	75 20                                           	jne    0x77915c
  77913c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  779140:	51                                              	push   ecx
  779141:	6a 00                                           	push   0x0
  779143:	6a 00                                           	push   0x0
  779145:	6a 00                                           	push   0x0
  779147:	8d 54 24 78                                     	lea    edx,[esp+0x78]
  77914b:	52                                              	push   edx
  77914c:	8b ce                                           	mov    ecx,esi
  77914e:	e8 fd 48 5e 00                                  	call   0xd5da50
  779153:	84 c0                                           	test   al,al
  779155:	74 05                                           	je     0x77915c
  779157:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
  77915c:	8b 84 24 f8 00 00 00                            	mov    eax,DWORD PTR [esp+0xf8]
  779163:	85 c0                                           	test   eax,eax
  779165:	74 12                                           	je     0x779179
  779167:	3b 84 24 08 01 00 00                            	cmp    eax,DWORD PTR [esp+0x108]
  77916e:	74 09                                           	je     0x779179
  779170:	50                                              	push   eax
  779171:	e8 6a b3 d6 ff                                  	call   0x4e44e0
  779176:	83 c4 04                                        	add    esp,0x4
  779179:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  77917d:	85 c0                                           	test   eax,eax
  77917f:	74 0f                                           	je     0x779190
  779181:	3b 44 24 78                                     	cmp    eax,DWORD PTR [esp+0x78]
  779185:	74 09                                           	je     0x779190
  779187:	50                                              	push   eax
  779188:	e8 53 b3 d6 ff                                  	call   0x4e44e0
  77918d:	83 c4 04                                        	add    esp,0x4
  779190:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  779194:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  779198:	33 db                                           	xor    ebx,ebx
  77919a:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  77919e:	83 c2 01                                        	add    edx,0x1
  7791a1:	3b d1                                           	cmp    edx,ecx
  7791a3:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  7791a7:	0f 82 f3 fe ff ff                               	jb     0x7790a0
  7791ad:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  7791b2:	0f 84 6f fe ff ff                               	je     0x779027
  7791b8:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  7791bb:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7791bf:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7791c1:	53                                              	push   ebx
  7791c2:	51                                              	push   ecx
  7791c3:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  7791c7:	6a ff                                           	push   0xffffffff
  7791c9:	52                                              	push   edx
  7791ca:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
  7791d0:	51                                              	push   ecx
  7791d1:	8b ce                                           	mov    ecx,esi
  7791d3:	ff d2                                           	call   edx
  7791d5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7791d7:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  7791dd:	8b ce                                           	mov    ecx,esi
  7791df:	ff d2                                           	call   edx
  7791e1:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7791e5:	3b cb                                           	cmp    ecx,ebx
  7791e7:	0f 84 9b fe ff ff                               	je     0x779088
  7791ed:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7791ef:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7791f2:	ff d2                                           	call   edx
  7791f4:	5f                                              	pop    edi
  7791f5:	5e                                              	pop    esi
  7791f6:	5b                                              	pop    ebx
  7791f7:	8b e5                                           	mov    esp,ebp
  7791f9:	5d                                              	pop    ebp
  7791fa:	c3                                              	ret
  7791fb:	cc                                              	int3
  7791fc:	cc                                              	int3
  7791fd:	cc                                              	int3
  7791fe:	cc                                              	int3
  7791ff:	cc                                              	int3

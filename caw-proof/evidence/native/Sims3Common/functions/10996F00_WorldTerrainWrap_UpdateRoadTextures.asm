# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996f00 (WorldTerrainWrap_UpdateRoadTextures)
Paired Ghidra pseudocode: 10996F00_WorldTerrainWrap_UpdateRoadTextures.c
Window: [0x10996f00, 0x10997170) (624 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996f00: 55 8b ec 83 e4 f0 83 ec 54 53 33 db 39 5d 0c 56
10996f10: 57 0f 84 47 02 00 00 39 5d 20 0f 84 3e 02 00 00
10996f20: 39 5d 34 0f 84 35 02 00 00 39 5d 48 0f 84 2c 02
10996f30: 00 00 39 5d 70 0f 84 23 02 00 00 39 9d 84 00 00
10996f40: 00 0f 84 17 02 00 00 39 9d 98 00 00 00 0f 84 0b
10996f50: 02 00 00 a1 c4 00 c7 10 8b 70 5c 0f b7 7d 08 8b
10996f60: ce 89 44 24 0c e8 56 95 7a ff 3b f8 0f 83 ec 01
10996f70: 00 00 f3 0f 10 05 fc df aa 10 8d 44 24 30 50 8d
10996f80: 4c 24 14 51 53 8d 55 10 f3 0f 11 44 24 38 f3 0f
10996f90: 11 44 24 34 f3 0f 11 44 24 30 f3 0f 11 44 24 2c
10996fa0: 0f 28 44 24 2c 52 8d 44 24 50 50 89 5c 24 24 89
10996fb0: 5c 24 28 89 5c 24 2c 89 5c 24 30 0f 29 44 24 34
10996fc0: 0f 29 44 24 44 e8 d6 6a bc ff 8b 4d 0c 83 c4 08
10996fd0: 50 51 53 57 8b ce e8 b5 fe 7a ff 0f 28 44 24 20
10996fe0: 8d 54 24 30 52 8d 45 4c 50 8d 4c 24 48 51 0f 29
10996ff0: 44 24 3c e8 a8 6a bc ff 8b 55 48 83 c4 08 50 52
10997000: 8d 45 38 50 8d 4c 24 60 51 e8 92 6a bc ff 8b 55
10997010: 34 83 c4 08 50 52 6a 01 57 8b ce e8 70 fe 7a ff
10997020: 0f 28 44 24 20 8d 44 24 30 50 8d 4c 24 14 51 53
10997030: 8d 55 60 52 8d 44 24 60 50 0f 29 44 24 44 e8 5d
10997040: 6a bc ff 8b 4d 5c 83 c4 08 50 51 6a 06 57 8b ce
10997050: e8 3b fe 7a ff 0f 28 44 24 20 8d 54 24 30 0f 29
10997060: 44 24 30 52 8d 85 88 00 00 00 50 8d 4c 24 58 51
10997070: e8 2b 6a bc ff 8b 95 84 00 00 00 83 c4 08 50 52
10997080: 8d 45 74 50 8d 4c 24 50 51 e8 12 6a bc ff 8b 55
10997090: 70 83 c4 08 50 52 6a 02 57 8b ce e8 f0 fd 7a ff
109970a0: 0f 28 44 24 20 8d 44 24 30 50 8d 4c 24 14 51 53
109970b0: 8d 95 9c 00 00 00 52 8d 44 24 60 50 0f 29 44 24
109970c0: 44 e8 da 69 bc ff 8b 8d 98 00 00 00 83 c4 08 50
109970d0: 51 6a 03 57 8b ce e8 b5 fd 7a ff f3 0f 10 05 10
109970e0: 9f c5 10 f3 0f 10 0d 48 fa ab 10 8d 54 24 30 52
109970f0: 8d 44 24 14 50 53 8d 4d 24 f3 0f 11 44 24 38 f3
10997100: 0f 11 44 24 34 f3 0f 11 4c 24 30 f3 0f 11 44 24
10997110: 2c 0f 28 44 24 2c 51 8d 54 24 60 52 0f 29 44 24
10997120: 44 e8 7a 69 bc ff 83 c4 08 50 8b 45 20 50 6a 04
10997130: 57 8b ce e8 58 fd 7a ff 8d 4c 24 50 51 8b 4c 24
10997140: 10 e8 4a 20 84 ff 50 8b ce e8 a2 9e 7a ff 8b ce
10997150: e8 fb bf 7b ff b0 01 5f 5e 5b 8b e5 5d c3 5f 5e
10997160: 32 c0 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996f00 <.text+0x995f00>:
10996f00:	55                                              	push   ebp
10996f01:	8b ec                                           	mov    ebp,esp
10996f03:	83 e4 f0                                        	and    esp,0xfffffff0
10996f06:	83 ec 54                                        	sub    esp,0x54
10996f09:	53                                              	push   ebx
10996f0a:	33 db                                           	xor    ebx,ebx
10996f0c:	39 5d 0c                                        	cmp    DWORD PTR [ebp+0xc],ebx
10996f0f:	56                                              	push   esi
10996f10:	57                                              	push   edi
10996f11:	0f 84 47 02 00 00                               	je     0x1099715e
10996f17:	39 5d 20                                        	cmp    DWORD PTR [ebp+0x20],ebx
10996f1a:	0f 84 3e 02 00 00                               	je     0x1099715e
10996f20:	39 5d 34                                        	cmp    DWORD PTR [ebp+0x34],ebx
10996f23:	0f 84 35 02 00 00                               	je     0x1099715e
10996f29:	39 5d 48                                        	cmp    DWORD PTR [ebp+0x48],ebx
10996f2c:	0f 84 2c 02 00 00                               	je     0x1099715e
10996f32:	39 5d 70                                        	cmp    DWORD PTR [ebp+0x70],ebx
10996f35:	0f 84 23 02 00 00                               	je     0x1099715e
10996f3b:	39 9d 84 00 00 00                               	cmp    DWORD PTR [ebp+0x84],ebx
10996f41:	0f 84 17 02 00 00                               	je     0x1099715e
10996f47:	39 9d 98 00 00 00                               	cmp    DWORD PTR [ebp+0x98],ebx
10996f4d:	0f 84 0b 02 00 00                               	je     0x1099715e
10996f53:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10996f58:	8b 70 5c                                        	mov    esi,DWORD PTR [eax+0x5c]
10996f5b:	0f b7 7d 08                                     	movzx  edi,WORD PTR [ebp+0x8]
10996f5f:	8b ce                                           	mov    ecx,esi
10996f61:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10996f65:	e8 56 95 7a ff                                  	call   0x101404c0
10996f6a:	3b f8                                           	cmp    edi,eax
10996f6c:	0f 83 ec 01 00 00                               	jae    0x1099715e
10996f72:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
10996f7a:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10996f7e:	50                                              	push   eax
10996f7f:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10996f83:	51                                              	push   ecx
10996f84:	53                                              	push   ebx
10996f85:	8d 55 10                                        	lea    edx,[ebp+0x10]
10996f88:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
10996f8e:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10996f94:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
10996f9a:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
10996fa0:	0f 28 44 24 2c                                  	movaps xmm0,XMMWORD PTR [esp+0x2c]
10996fa5:	52                                              	push   edx
10996fa6:	8d 44 24 50                                     	lea    eax,[esp+0x50]
10996faa:	50                                              	push   eax
10996fab:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
10996faf:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
10996fb3:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
10996fb7:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
10996fbb:	0f 29 44 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm0
10996fc0:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
10996fc5:	e8 d6 6a bc ff                                  	call   0x1055daa0
10996fca:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10996fcd:	83 c4 08                                        	add    esp,0x8
10996fd0:	50                                              	push   eax
10996fd1:	51                                              	push   ecx
10996fd2:	53                                              	push   ebx
10996fd3:	57                                              	push   edi
10996fd4:	8b ce                                           	mov    ecx,esi
10996fd6:	e8 b5 fe 7a ff                                  	call   0x10146e90
10996fdb:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
10996fe0:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10996fe4:	52                                              	push   edx
10996fe5:	8d 45 4c                                        	lea    eax,[ebp+0x4c]
10996fe8:	50                                              	push   eax
10996fe9:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10996fed:	51                                              	push   ecx
10996fee:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
10996ff3:	e8 a8 6a bc ff                                  	call   0x1055daa0
10996ff8:	8b 55 48                                        	mov    edx,DWORD PTR [ebp+0x48]
10996ffb:	83 c4 08                                        	add    esp,0x8
10996ffe:	50                                              	push   eax
10996fff:	52                                              	push   edx
10997000:	8d 45 38                                        	lea    eax,[ebp+0x38]
10997003:	50                                              	push   eax
10997004:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10997008:	51                                              	push   ecx
10997009:	e8 92 6a bc ff                                  	call   0x1055daa0
1099700e:	8b 55 34                                        	mov    edx,DWORD PTR [ebp+0x34]
10997011:	83 c4 08                                        	add    esp,0x8
10997014:	50                                              	push   eax
10997015:	52                                              	push   edx
10997016:	6a 01                                           	push   0x1
10997018:	57                                              	push   edi
10997019:	8b ce                                           	mov    ecx,esi
1099701b:	e8 70 fe 7a ff                                  	call   0x10146e90
10997020:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
10997025:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10997029:	50                                              	push   eax
1099702a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1099702e:	51                                              	push   ecx
1099702f:	53                                              	push   ebx
10997030:	8d 55 60                                        	lea    edx,[ebp+0x60]
10997033:	52                                              	push   edx
10997034:	8d 44 24 60                                     	lea    eax,[esp+0x60]
10997038:	50                                              	push   eax
10997039:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
1099703e:	e8 5d 6a bc ff                                  	call   0x1055daa0
10997043:	8b 4d 5c                                        	mov    ecx,DWORD PTR [ebp+0x5c]
10997046:	83 c4 08                                        	add    esp,0x8
10997049:	50                                              	push   eax
1099704a:	51                                              	push   ecx
1099704b:	6a 06                                           	push   0x6
1099704d:	57                                              	push   edi
1099704e:	8b ce                                           	mov    ecx,esi
10997050:	e8 3b fe 7a ff                                  	call   0x10146e90
10997055:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
1099705a:	8d 54 24 30                                     	lea    edx,[esp+0x30]
1099705e:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10997063:	52                                              	push   edx
10997064:	8d 85 88 00 00 00                               	lea    eax,[ebp+0x88]
1099706a:	50                                              	push   eax
1099706b:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
1099706f:	51                                              	push   ecx
10997070:	e8 2b 6a bc ff                                  	call   0x1055daa0
10997075:	8b 95 84 00 00 00                               	mov    edx,DWORD PTR [ebp+0x84]
1099707b:	83 c4 08                                        	add    esp,0x8
1099707e:	50                                              	push   eax
1099707f:	52                                              	push   edx
10997080:	8d 45 74                                        	lea    eax,[ebp+0x74]
10997083:	50                                              	push   eax
10997084:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10997088:	51                                              	push   ecx
10997089:	e8 12 6a bc ff                                  	call   0x1055daa0
1099708e:	8b 55 70                                        	mov    edx,DWORD PTR [ebp+0x70]
10997091:	83 c4 08                                        	add    esp,0x8
10997094:	50                                              	push   eax
10997095:	52                                              	push   edx
10997096:	6a 02                                           	push   0x2
10997098:	57                                              	push   edi
10997099:	8b ce                                           	mov    ecx,esi
1099709b:	e8 f0 fd 7a ff                                  	call   0x10146e90
109970a0:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
109970a5:	8d 44 24 30                                     	lea    eax,[esp+0x30]
109970a9:	50                                              	push   eax
109970aa:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109970ae:	51                                              	push   ecx
109970af:	53                                              	push   ebx
109970b0:	8d 95 9c 00 00 00                               	lea    edx,[ebp+0x9c]
109970b6:	52                                              	push   edx
109970b7:	8d 44 24 60                                     	lea    eax,[esp+0x60]
109970bb:	50                                              	push   eax
109970bc:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
109970c1:	e8 da 69 bc ff                                  	call   0x1055daa0
109970c6:	8b 8d 98 00 00 00                               	mov    ecx,DWORD PTR [ebp+0x98]
109970cc:	83 c4 08                                        	add    esp,0x8
109970cf:	50                                              	push   eax
109970d0:	51                                              	push   ecx
109970d1:	6a 03                                           	push   0x3
109970d3:	57                                              	push   edi
109970d4:	8b ce                                           	mov    ecx,esi
109970d6:	e8 b5 fd 7a ff                                  	call   0x10146e90
109970db:	f3 0f 10 05 10 9f c5 10                         	movss  xmm0,DWORD PTR ds:0x10c59f10
109970e3:	f3 0f 10 0d 48 fa ab 10                         	movss  xmm1,DWORD PTR ds:0x10abfa48
109970eb:	8d 54 24 30                                     	lea    edx,[esp+0x30]
109970ef:	52                                              	push   edx
109970f0:	8d 44 24 14                                     	lea    eax,[esp+0x14]
109970f4:	50                                              	push   eax
109970f5:	53                                              	push   ebx
109970f6:	8d 4d 24                                        	lea    ecx,[ebp+0x24]
109970f9:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
109970ff:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10997105:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [esp+0x30],xmm1
1099710b:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
10997111:	0f 28 44 24 2c                                  	movaps xmm0,XMMWORD PTR [esp+0x2c]
10997116:	51                                              	push   ecx
10997117:	8d 54 24 60                                     	lea    edx,[esp+0x60]
1099711b:	52                                              	push   edx
1099711c:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
10997121:	e8 7a 69 bc ff                                  	call   0x1055daa0
10997126:	83 c4 08                                        	add    esp,0x8
10997129:	50                                              	push   eax
1099712a:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
1099712d:	50                                              	push   eax
1099712e:	6a 04                                           	push   0x4
10997130:	57                                              	push   edi
10997131:	8b ce                                           	mov    ecx,esi
10997133:	e8 58 fd 7a ff                                  	call   0x10146e90
10997138:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1099713c:	51                                              	push   ecx
1099713d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10997141:	e8 4a 20 84 ff                                  	call   0x101d9190
10997146:	50                                              	push   eax
10997147:	8b ce                                           	mov    ecx,esi
10997149:	e8 a2 9e 7a ff                                  	call   0x10140ff0
1099714e:	8b ce                                           	mov    ecx,esi
10997150:	e8 fb bf 7b ff                                  	call   0x10153150
10997155:	b0 01                                           	mov    al,0x1
10997157:	5f                                              	pop    edi
10997158:	5e                                              	pop    esi
10997159:	5b                                              	pop    ebx
1099715a:	8b e5                                           	mov    esp,ebp
1099715c:	5d                                              	pop    ebp
1099715d:	c3                                              	ret
1099715e:	5f                                              	pop    edi
1099715f:	5e                                              	pop    esi
10997160:	32 c0                                           	xor    al,al
10997162:	5b                                              	pop    ebx
10997163:	8b e5                                           	mov    esp,ebp
10997165:	5d                                              	pop    ebp
10997166:	c3                                              	ret
10997167:	cc                                              	int3
10997168:	cc                                              	int3
10997169:	cc                                              	int3
1099716a:	cc                                              	int3
1099716b:	cc                                              	int3
1099716c:	cc                                              	int3
1099716d:	cc                                              	int3
1099716e:	cc                                              	int3
1099716f:	cc                                              	int3

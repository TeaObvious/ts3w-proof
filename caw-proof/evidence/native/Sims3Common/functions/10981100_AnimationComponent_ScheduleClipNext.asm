# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981100 (AnimationComponent_ScheduleClipNext)
Paired Ghidra pseudocode: 10981100_AnimationComponent_ScheduleClipNext.c
Window: [0x10981100, 0x10981250) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981100: 81 ec f0 01 00 00 8b 84 24 fc 01 00 00 8b 48 08
10981110: 8b 50 0c 89 4c 24 04 8b 08 89 54 24 08 8b 50 04
10981120: 89 4c 24 0c 89 54 24 10 e8 a3 3f f6 ff 8b 10 8b
10981130: 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 10 51 8d
10981140: 4c 24 18 51 8b c8 ff d2 84 c0 0f 84 f6 00 00 00
10981150: 53 55 56 57 8b 7c 24 10 8d 4c 24 24 e8 df 19 db
10981160: ff 8b b4 24 d4 01 00 00 3b fe 8b ac 24 08 02 00
10981170: 00 89 ac 24 e8 01 00 00 74 20 85 ff 74 08 8b 07
10981180: 8b 10 8b cf ff d2 85 f6 89 bc 24 d4 01 00 00 74
10981190: 09 8b 06 8b 50 04 8b ce ff d2 8a 84 24 14 02 00
109811a0: 00 8b 9c 24 04 02 00 00 f3 0f 10 84 24 10 02 00
109811b0: 00 8d 4c 24 24 51 8b cb 88 84 24 00 02 00 00 f3
109811c0: 0f 11 84 24 f4 01 00 00 c7 84 24 e8 01 00 00 01
109811d0: 00 00 00 e8 78 e8 da ff 8b f0 85 f6 74 32 d9 05
109811e0: 84 e1 aa 10 83 46 04 01 8b 53 08 8b 42 14 6a 00
109811f0: 6a 00 6a 00 6a 00 83 ec 08 d9 5c 24 04 8d 4b 08
10981200: d9 84 24 28 02 00 00 d9 1c 24 6a 01 56 55 ff d0
10981210: 8b 17 8b 42 04 8b cf ff d0 85 f6 74 1c 8b 46 04
10981220: 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b
10981230: 16 8b 02 6a 01 8b ce ff d0 8d 4c 24 24 e8 2e 67
10981240: c6 ff 5f 5e 5d 5b 81 c4 f0 01 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10981100 <.text+0x980100>:
10981100:	81 ec f0 01 00 00                               	sub    esp,0x1f0
10981106:	8b 84 24 fc 01 00 00                            	mov    eax,DWORD PTR [esp+0x1fc]
1098110d:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
10981110:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10981113:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10981117:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10981119:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1098111d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10981120:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
10981124:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10981128:	e8 a3 3f f6 ff                                  	call   0x108e50d0
1098112d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098112f:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10981132:	6a 00                                           	push   0x0
10981134:	6a 00                                           	push   0x0
10981136:	6a 00                                           	push   0x0
10981138:	6a 00                                           	push   0x0
1098113a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1098113e:	51                                              	push   ecx
1098113f:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10981143:	51                                              	push   ecx
10981144:	8b c8                                           	mov    ecx,eax
10981146:	ff d2                                           	call   edx
10981148:	84 c0                                           	test   al,al
1098114a:	0f 84 f6 00 00 00                               	je     0x10981246
10981150:	53                                              	push   ebx
10981151:	55                                              	push   ebp
10981152:	56                                              	push   esi
10981153:	57                                              	push   edi
10981154:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
10981158:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098115c:	e8 df 19 db ff                                  	call   0x10732b40
10981161:	8b b4 24 d4 01 00 00                            	mov    esi,DWORD PTR [esp+0x1d4]
10981168:	3b fe                                           	cmp    edi,esi
1098116a:	8b ac 24 08 02 00 00                            	mov    ebp,DWORD PTR [esp+0x208]
10981171:	89 ac 24 e8 01 00 00                            	mov    DWORD PTR [esp+0x1e8],ebp
10981178:	74 20                                           	je     0x1098119a
1098117a:	85 ff                                           	test   edi,edi
1098117c:	74 08                                           	je     0x10981186
1098117e:	8b 07                                           	mov    eax,DWORD PTR [edi]
10981180:	8b 10                                           	mov    edx,DWORD PTR [eax]
10981182:	8b cf                                           	mov    ecx,edi
10981184:	ff d2                                           	call   edx
10981186:	85 f6                                           	test   esi,esi
10981188:	89 bc 24 d4 01 00 00                            	mov    DWORD PTR [esp+0x1d4],edi
1098118f:	74 09                                           	je     0x1098119a
10981191:	8b 06                                           	mov    eax,DWORD PTR [esi]
10981193:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10981196:	8b ce                                           	mov    ecx,esi
10981198:	ff d2                                           	call   edx
1098119a:	8a 84 24 14 02 00 00                            	mov    al,BYTE PTR [esp+0x214]
109811a1:	8b 9c 24 04 02 00 00                            	mov    ebx,DWORD PTR [esp+0x204]
109811a8:	f3 0f 10 84 24 10 02 00 00                      	movss  xmm0,DWORD PTR [esp+0x210]
109811b1:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
109811b5:	51                                              	push   ecx
109811b6:	8b cb                                           	mov    ecx,ebx
109811b8:	88 84 24 00 02 00 00                            	mov    BYTE PTR [esp+0x200],al
109811bf:	f3 0f 11 84 24 f4 01 00 00                      	movss  DWORD PTR [esp+0x1f4],xmm0
109811c8:	c7 84 24 e8 01 00 00 01 00 00 00                	mov    DWORD PTR [esp+0x1e8],0x1
109811d3:	e8 78 e8 da ff                                  	call   0x1072fa50
109811d8:	8b f0                                           	mov    esi,eax
109811da:	85 f6                                           	test   esi,esi
109811dc:	74 32                                           	je     0x10981210
109811de:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
109811e4:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
109811e8:	8b 53 08                                        	mov    edx,DWORD PTR [ebx+0x8]
109811eb:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
109811ee:	6a 00                                           	push   0x0
109811f0:	6a 00                                           	push   0x0
109811f2:	6a 00                                           	push   0x0
109811f4:	6a 00                                           	push   0x0
109811f6:	83 ec 08                                        	sub    esp,0x8
109811f9:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
109811fd:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
10981200:	d9 84 24 28 02 00 00                            	fld    DWORD PTR [esp+0x228]
10981207:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098120a:	6a 01                                           	push   0x1
1098120c:	56                                              	push   esi
1098120d:	55                                              	push   ebp
1098120e:	ff d0                                           	call   eax
10981210:	8b 17                                           	mov    edx,DWORD PTR [edi]
10981212:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10981215:	8b cf                                           	mov    ecx,edi
10981217:	ff d0                                           	call   eax
10981219:	85 f6                                           	test   esi,esi
1098121b:	74 1c                                           	je     0x10981239
1098121d:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
10981220:	83 c0 ff                                        	add    eax,0xffffffff
10981223:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10981226:	75 11                                           	jne    0x10981239
10981228:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1098122f:	8b 16                                           	mov    edx,DWORD PTR [esi]
10981231:	8b 02                                           	mov    eax,DWORD PTR [edx]
10981233:	6a 01                                           	push   0x1
10981235:	8b ce                                           	mov    ecx,esi
10981237:	ff d0                                           	call   eax
10981239:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098123d:	e8 2e 67 c6 ff                                  	call   0x105e7970
10981242:	5f                                              	pop    edi
10981243:	5e                                              	pop    esi
10981244:	5d                                              	pop    ebp
10981245:	5b                                              	pop    ebx
10981246:	81 c4 f0 01 00 00                               	add    esp,0x1f0
1098124c:	c3                                              	ret
1098124d:	cc                                              	int3
1098124e:	cc                                              	int3
1098124f:	cc                                              	int3

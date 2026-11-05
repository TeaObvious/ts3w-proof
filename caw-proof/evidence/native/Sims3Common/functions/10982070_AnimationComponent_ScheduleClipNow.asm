# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982070 (AnimationComponent_ScheduleClipNow)
Paired Ghidra pseudocode: 10982070_AnimationComponent_ScheduleClipNow.c
Window: [0x10982070, 0x109821c0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x109821c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982070: 81 ec f0 01 00 00 8b 84 24 fc 01 00 00 8b 48 08
10982080: 8b 50 0c 89 4c 24 04 8b 08 89 54 24 08 8b 50 04
10982090: 89 4c 24 0c 89 54 24 10 e8 33 30 f6 ff 8b 10 8b
109820a0: 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 10 51 8d
109820b0: 4c 24 18 51 8b c8 ff d2 84 c0 0f 84 f6 00 00 00
109820c0: 53 55 56 57 8b 7c 24 10 8d 4c 24 24 e8 6f 0a db
109820d0: ff 8b b4 24 d4 01 00 00 3b fe 8b ac 24 08 02 00
109820e0: 00 89 ac 24 e8 01 00 00 74 20 85 ff 74 08 8b 07
109820f0: 8b 10 8b cf ff d2 85 f6 89 bc 24 d4 01 00 00 74
10982100: 09 8b 06 8b 50 04 8b ce ff d2 8a 84 24 14 02 00
10982110: 00 8b 9c 24 04 02 00 00 f3 0f 10 84 24 10 02 00
10982120: 00 8d 4c 24 24 51 8b cb 88 84 24 00 02 00 00 f3
10982130: 0f 11 84 24 f4 01 00 00 c7 84 24 e8 01 00 00 00
10982140: 00 00 00 e8 08 d9 da ff 8b f0 85 f6 74 32 d9 05
10982150: 84 e1 aa 10 83 46 04 01 8b 53 08 8b 42 14 6a 00
10982160: 6a 00 6a 00 6a 00 83 ec 08 d9 5c 24 04 8d 4b 08
10982170: d9 84 24 28 02 00 00 d9 1c 24 6a 02 56 55 ff d0
10982180: 8b 17 8b 42 04 8b cf ff d0 85 f6 74 1c 8b 46 04
10982190: 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b
109821a0: 16 8b 02 6a 01 8b ce ff d0 8d 4c 24 24 e8 be 57
109821b0: c6 ff 5f 5e 5d 5b 81 c4 f0 01 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10982070 <.text+0x981070>:
10982070:	81 ec f0 01 00 00                               	sub    esp,0x1f0
10982076:	8b 84 24 fc 01 00 00                            	mov    eax,DWORD PTR [esp+0x1fc]
1098207d:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
10982080:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10982083:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10982087:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10982089:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1098208d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10982090:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
10982094:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10982098:	e8 33 30 f6 ff                                  	call   0x108e50d0
1098209d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098209f:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
109820a2:	6a 00                                           	push   0x0
109820a4:	6a 00                                           	push   0x0
109820a6:	6a 00                                           	push   0x0
109820a8:	6a 00                                           	push   0x0
109820aa:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
109820ae:	51                                              	push   ecx
109820af:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109820b3:	51                                              	push   ecx
109820b4:	8b c8                                           	mov    ecx,eax
109820b6:	ff d2                                           	call   edx
109820b8:	84 c0                                           	test   al,al
109820ba:	0f 84 f6 00 00 00                               	je     0x109821b6
109820c0:	53                                              	push   ebx
109820c1:	55                                              	push   ebp
109820c2:	56                                              	push   esi
109820c3:	57                                              	push   edi
109820c4:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
109820c8:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
109820cc:	e8 6f 0a db ff                                  	call   0x10732b40
109820d1:	8b b4 24 d4 01 00 00                            	mov    esi,DWORD PTR [esp+0x1d4]
109820d8:	3b fe                                           	cmp    edi,esi
109820da:	8b ac 24 08 02 00 00                            	mov    ebp,DWORD PTR [esp+0x208]
109820e1:	89 ac 24 e8 01 00 00                            	mov    DWORD PTR [esp+0x1e8],ebp
109820e8:	74 20                                           	je     0x1098210a
109820ea:	85 ff                                           	test   edi,edi
109820ec:	74 08                                           	je     0x109820f6
109820ee:	8b 07                                           	mov    eax,DWORD PTR [edi]
109820f0:	8b 10                                           	mov    edx,DWORD PTR [eax]
109820f2:	8b cf                                           	mov    ecx,edi
109820f4:	ff d2                                           	call   edx
109820f6:	85 f6                                           	test   esi,esi
109820f8:	89 bc 24 d4 01 00 00                            	mov    DWORD PTR [esp+0x1d4],edi
109820ff:	74 09                                           	je     0x1098210a
10982101:	8b 06                                           	mov    eax,DWORD PTR [esi]
10982103:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10982106:	8b ce                                           	mov    ecx,esi
10982108:	ff d2                                           	call   edx
1098210a:	8a 84 24 14 02 00 00                            	mov    al,BYTE PTR [esp+0x214]
10982111:	8b 9c 24 04 02 00 00                            	mov    ebx,DWORD PTR [esp+0x204]
10982118:	f3 0f 10 84 24 10 02 00 00                      	movss  xmm0,DWORD PTR [esp+0x210]
10982121:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10982125:	51                                              	push   ecx
10982126:	8b cb                                           	mov    ecx,ebx
10982128:	88 84 24 00 02 00 00                            	mov    BYTE PTR [esp+0x200],al
1098212f:	f3 0f 11 84 24 f4 01 00 00                      	movss  DWORD PTR [esp+0x1f4],xmm0
10982138:	c7 84 24 e8 01 00 00 00 00 00 00                	mov    DWORD PTR [esp+0x1e8],0x0
10982143:	e8 08 d9 da ff                                  	call   0x1072fa50
10982148:	8b f0                                           	mov    esi,eax
1098214a:	85 f6                                           	test   esi,esi
1098214c:	74 32                                           	je     0x10982180
1098214e:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
10982154:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
10982158:	8b 53 08                                        	mov    edx,DWORD PTR [ebx+0x8]
1098215b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1098215e:	6a 00                                           	push   0x0
10982160:	6a 00                                           	push   0x0
10982162:	6a 00                                           	push   0x0
10982164:	6a 00                                           	push   0x0
10982166:	83 ec 08                                        	sub    esp,0x8
10982169:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1098216d:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
10982170:	d9 84 24 28 02 00 00                            	fld    DWORD PTR [esp+0x228]
10982177:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098217a:	6a 02                                           	push   0x2
1098217c:	56                                              	push   esi
1098217d:	55                                              	push   ebp
1098217e:	ff d0                                           	call   eax
10982180:	8b 17                                           	mov    edx,DWORD PTR [edi]
10982182:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10982185:	8b cf                                           	mov    ecx,edi
10982187:	ff d0                                           	call   eax
10982189:	85 f6                                           	test   esi,esi
1098218b:	74 1c                                           	je     0x109821a9
1098218d:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
10982190:	83 c0 ff                                        	add    eax,0xffffffff
10982193:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10982196:	75 11                                           	jne    0x109821a9
10982198:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1098219f:	8b 16                                           	mov    edx,DWORD PTR [esi]
109821a1:	8b 02                                           	mov    eax,DWORD PTR [edx]
109821a3:	6a 01                                           	push   0x1
109821a5:	8b ce                                           	mov    ecx,esi
109821a7:	ff d0                                           	call   eax
109821a9:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
109821ad:	e8 be 57 c6 ff                                  	call   0x105e7970
109821b2:	5f                                              	pop    edi
109821b3:	5e                                              	pop    esi
109821b4:	5d                                              	pop    ebp
109821b5:	5b                                              	pop    ebx
109821b6:	81 c4 f0 01 00 00                               	add    esp,0x1f0
109821bc:	c3                                              	ret
109821bd:	cc                                              	int3
109821be:	cc                                              	int3
109821bf:	cc                                              	int3

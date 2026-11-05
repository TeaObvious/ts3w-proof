# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098b050 (ResourceMgr_Create)
Paired Ghidra pseudocode: 1098B050_ResourceMgr_Create.c
Window: [0x1098b050, 0x1098b230) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098b230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098b050: 57 33 ff 39 3d 78 80 cb 10 0f 85 bc 01 00 00 57
1098b060: 57 57 57 68 84 6f b9 10 6a 20 e8 41 de f8 ff 83
1098b070: c4 18 3b c7 74 3c f3 0f 10 05 d4 b0 ac 10 f3 0f
1098b080: 11 40 10 f3 0f 10 05 fc df aa 10 f3 0f 11 40 14
1098b090: c7 40 1c 68 6f b9 10 c7 40 08 01 00 00 00 c7 40
1098b0a0: 04 f8 71 c5 10 89 78 0c 89 78 18 a3 78 80 cb 10
1098b0b0: eb 06 89 3d 78 80 cb 10 56 e8 12 a0 f5 ff 8b f0
1098b0c0: e8 6b 4f b4 ff 57 57 57 57 68 4c 6f b9 10 6a 08
1098b0d0: e8 8b df f8 ff 83 c4 18 3b c7 74 15 c7 00 44 74
1098b0e0: ac 10 33 c9 8d 50 04 87 0a c7 00 90 6e b9 10 eb
1098b0f0: 02 33 c0 8b 16 57 50 8b 42 28 6a 01 8b ce ff d0
1098b100: 57 57 57 57 68 3c 6f b9 10 6a 10 e8 50 df f8 ff
1098b110: 83 c4 18 3b c7 74 09 8b c8 e8 82 9f b8 ff eb 02
1098b120: 33 c0 8b 16 57 50 8b 42 28 6a 01 8b ce ff d0 57
1098b130: 57 57 57 68 24 6f b9 10 6a 08 e8 21 df f8 ff 83
1098b140: c4 18 3b c7 74 15 c7 00 44 74 ac 10 33 c9 8d 50
1098b150: 04 87 0a c7 00 98 b3 b2 10 eb 02 33 c0 8b 16 57
1098b160: 50 8b 42 28 6a 01 8b ce ff d0 57 57 57 57 68 10
1098b170: 6f b9 10 6a 10 e8 e6 de f8 ff 83 c4 18 3b c7 74
1098b180: 09 8b c8 e8 58 49 e4 ff eb 02 33 c0 8b 16 57 50
1098b190: 8b 42 28 6a 01 8b ce ff d0 57 57 57 57 68 fc 6e
1098b1a0: b9 10 6a 10 e8 b7 de f8 ff 83 c4 18 3b c7 74 09
1098b1b0: 8b c8 e8 69 ca 9e ff eb 02 33 c0 8b 16 57 50 8b
1098b1c0: 42 28 6a 01 8b ce ff d0 57 57 57 57 68 e8 6e b9
1098b1d0: 10 6a 10 e8 88 de f8 ff 83 c4 18 3b c7 74 09 8b
1098b1e0: c8 e8 5a bc 9e ff eb 02 33 c0 8b 16 57 50 8b 42
1098b1f0: 28 6a 01 8b ce ff d0 6a 01 e8 e2 ec a4 ff 83 c4
1098b200: 04 e8 5a c8 9e ff e8 d5 67 b9 ff e8 10 4f c3 ff
1098b210: e8 ab de c3 ff e8 56 db d9 ff 5e b8 01 00 00 00
1098b220: 5f c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098b050 <.text+0x98a050>:
1098b050:	57                                              	push   edi
1098b051:	33 ff                                           	xor    edi,edi
1098b053:	39 3d 78 80 cb 10                               	cmp    DWORD PTR ds:0x10cb8078,edi
1098b059:	0f 85 bc 01 00 00                               	jne    0x1098b21b
1098b05f:	57                                              	push   edi
1098b060:	57                                              	push   edi
1098b061:	57                                              	push   edi
1098b062:	57                                              	push   edi
1098b063:	68 84 6f b9 10                                  	push   0x10b96f84
1098b068:	6a 20                                           	push   0x20
1098b06a:	e8 41 de f8 ff                                  	call   0x10918eb0
1098b06f:	83 c4 18                                        	add    esp,0x18
1098b072:	3b c7                                           	cmp    eax,edi
1098b074:	74 3c                                           	je     0x1098b0b2
1098b076:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1098b07e:	f3 0f 11 40 10                                  	movss  DWORD PTR [eax+0x10],xmm0
1098b083:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
1098b08b:	f3 0f 11 40 14                                  	movss  DWORD PTR [eax+0x14],xmm0
1098b090:	c7 40 1c 68 6f b9 10                            	mov    DWORD PTR [eax+0x1c],0x10b96f68
1098b097:	c7 40 08 01 00 00 00                            	mov    DWORD PTR [eax+0x8],0x1
1098b09e:	c7 40 04 f8 71 c5 10                            	mov    DWORD PTR [eax+0x4],0x10c571f8
1098b0a5:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
1098b0a8:	89 78 18                                        	mov    DWORD PTR [eax+0x18],edi
1098b0ab:	a3 78 80 cb 10                                  	mov    ds:0x10cb8078,eax
1098b0b0:	eb 06                                           	jmp    0x1098b0b8
1098b0b2:	89 3d 78 80 cb 10                               	mov    DWORD PTR ds:0x10cb8078,edi
1098b0b8:	56                                              	push   esi
1098b0b9:	e8 12 a0 f5 ff                                  	call   0x108e50d0
1098b0be:	8b f0                                           	mov    esi,eax
1098b0c0:	e8 6b 4f b4 ff                                  	call   0x104d0030
1098b0c5:	57                                              	push   edi
1098b0c6:	57                                              	push   edi
1098b0c7:	57                                              	push   edi
1098b0c8:	57                                              	push   edi
1098b0c9:	68 4c 6f b9 10                                  	push   0x10b96f4c
1098b0ce:	6a 08                                           	push   0x8
1098b0d0:	e8 8b df f8 ff                                  	call   0x10919060
1098b0d5:	83 c4 18                                        	add    esp,0x18
1098b0d8:	3b c7                                           	cmp    eax,edi
1098b0da:	74 15                                           	je     0x1098b0f1
1098b0dc:	c7 00 44 74 ac 10                               	mov    DWORD PTR [eax],0x10ac7444
1098b0e2:	33 c9                                           	xor    ecx,ecx
1098b0e4:	8d 50 04                                        	lea    edx,[eax+0x4]
1098b0e7:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1098b0e9:	c7 00 90 6e b9 10                               	mov    DWORD PTR [eax],0x10b96e90
1098b0ef:	eb 02                                           	jmp    0x1098b0f3
1098b0f1:	33 c0                                           	xor    eax,eax
1098b0f3:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b0f5:	57                                              	push   edi
1098b0f6:	50                                              	push   eax
1098b0f7:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1098b0fa:	6a 01                                           	push   0x1
1098b0fc:	8b ce                                           	mov    ecx,esi
1098b0fe:	ff d0                                           	call   eax
1098b100:	57                                              	push   edi
1098b101:	57                                              	push   edi
1098b102:	57                                              	push   edi
1098b103:	57                                              	push   edi
1098b104:	68 3c 6f b9 10                                  	push   0x10b96f3c
1098b109:	6a 10                                           	push   0x10
1098b10b:	e8 50 df f8 ff                                  	call   0x10919060
1098b110:	83 c4 18                                        	add    esp,0x18
1098b113:	3b c7                                           	cmp    eax,edi
1098b115:	74 09                                           	je     0x1098b120
1098b117:	8b c8                                           	mov    ecx,eax
1098b119:	e8 82 9f b8 ff                                  	call   0x105150a0
1098b11e:	eb 02                                           	jmp    0x1098b122
1098b120:	33 c0                                           	xor    eax,eax
1098b122:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b124:	57                                              	push   edi
1098b125:	50                                              	push   eax
1098b126:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1098b129:	6a 01                                           	push   0x1
1098b12b:	8b ce                                           	mov    ecx,esi
1098b12d:	ff d0                                           	call   eax
1098b12f:	57                                              	push   edi
1098b130:	57                                              	push   edi
1098b131:	57                                              	push   edi
1098b132:	57                                              	push   edi
1098b133:	68 24 6f b9 10                                  	push   0x10b96f24
1098b138:	6a 08                                           	push   0x8
1098b13a:	e8 21 df f8 ff                                  	call   0x10919060
1098b13f:	83 c4 18                                        	add    esp,0x18
1098b142:	3b c7                                           	cmp    eax,edi
1098b144:	74 15                                           	je     0x1098b15b
1098b146:	c7 00 44 74 ac 10                               	mov    DWORD PTR [eax],0x10ac7444
1098b14c:	33 c9                                           	xor    ecx,ecx
1098b14e:	8d 50 04                                        	lea    edx,[eax+0x4]
1098b151:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1098b153:	c7 00 98 b3 b2 10                               	mov    DWORD PTR [eax],0x10b2b398
1098b159:	eb 02                                           	jmp    0x1098b15d
1098b15b:	33 c0                                           	xor    eax,eax
1098b15d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b15f:	57                                              	push   edi
1098b160:	50                                              	push   eax
1098b161:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1098b164:	6a 01                                           	push   0x1
1098b166:	8b ce                                           	mov    ecx,esi
1098b168:	ff d0                                           	call   eax
1098b16a:	57                                              	push   edi
1098b16b:	57                                              	push   edi
1098b16c:	57                                              	push   edi
1098b16d:	57                                              	push   edi
1098b16e:	68 10 6f b9 10                                  	push   0x10b96f10
1098b173:	6a 10                                           	push   0x10
1098b175:	e8 e6 de f8 ff                                  	call   0x10919060
1098b17a:	83 c4 18                                        	add    esp,0x18
1098b17d:	3b c7                                           	cmp    eax,edi
1098b17f:	74 09                                           	je     0x1098b18a
1098b181:	8b c8                                           	mov    ecx,eax
1098b183:	e8 58 49 e4 ff                                  	call   0x107cfae0
1098b188:	eb 02                                           	jmp    0x1098b18c
1098b18a:	33 c0                                           	xor    eax,eax
1098b18c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b18e:	57                                              	push   edi
1098b18f:	50                                              	push   eax
1098b190:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1098b193:	6a 01                                           	push   0x1
1098b195:	8b ce                                           	mov    ecx,esi
1098b197:	ff d0                                           	call   eax
1098b199:	57                                              	push   edi
1098b19a:	57                                              	push   edi
1098b19b:	57                                              	push   edi
1098b19c:	57                                              	push   edi
1098b19d:	68 fc 6e b9 10                                  	push   0x10b96efc
1098b1a2:	6a 10                                           	push   0x10
1098b1a4:	e8 b7 de f8 ff                                  	call   0x10919060
1098b1a9:	83 c4 18                                        	add    esp,0x18
1098b1ac:	3b c7                                           	cmp    eax,edi
1098b1ae:	74 09                                           	je     0x1098b1b9
1098b1b0:	8b c8                                           	mov    ecx,eax
1098b1b2:	e8 69 ca 9e ff                                  	call   0x10377c20
1098b1b7:	eb 02                                           	jmp    0x1098b1bb
1098b1b9:	33 c0                                           	xor    eax,eax
1098b1bb:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b1bd:	57                                              	push   edi
1098b1be:	50                                              	push   eax
1098b1bf:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1098b1c2:	6a 01                                           	push   0x1
1098b1c4:	8b ce                                           	mov    ecx,esi
1098b1c6:	ff d0                                           	call   eax
1098b1c8:	57                                              	push   edi
1098b1c9:	57                                              	push   edi
1098b1ca:	57                                              	push   edi
1098b1cb:	57                                              	push   edi
1098b1cc:	68 e8 6e b9 10                                  	push   0x10b96ee8
1098b1d1:	6a 10                                           	push   0x10
1098b1d3:	e8 88 de f8 ff                                  	call   0x10919060
1098b1d8:	83 c4 18                                        	add    esp,0x18
1098b1db:	3b c7                                           	cmp    eax,edi
1098b1dd:	74 09                                           	je     0x1098b1e8
1098b1df:	8b c8                                           	mov    ecx,eax
1098b1e1:	e8 5a bc 9e ff                                  	call   0x10376e40
1098b1e6:	eb 02                                           	jmp    0x1098b1ea
1098b1e8:	33 c0                                           	xor    eax,eax
1098b1ea:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b1ec:	57                                              	push   edi
1098b1ed:	50                                              	push   eax
1098b1ee:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1098b1f1:	6a 01                                           	push   0x1
1098b1f3:	8b ce                                           	mov    ecx,esi
1098b1f5:	ff d0                                           	call   eax
1098b1f7:	6a 01                                           	push   0x1
1098b1f9:	e8 e2 ec a4 ff                                  	call   0x103d9ee0
1098b1fe:	83 c4 04                                        	add    esp,0x4
1098b201:	e8 5a c8 9e ff                                  	call   0x10377a60
1098b206:	e8 d5 67 b9 ff                                  	call   0x105219e0
1098b20b:	e8 10 4f c3 ff                                  	call   0x105c0120
1098b210:	e8 ab de c3 ff                                  	call   0x105c90c0
1098b215:	e8 56 db d9 ff                                  	call   0x10728d70
1098b21a:	5e                                              	pop    esi
1098b21b:	b8 01 00 00 00                                  	mov    eax,0x1
1098b220:	5f                                              	pop    edi
1098b221:	c3                                              	ret
1098b222:	cc                                              	int3
1098b223:	cc                                              	int3
1098b224:	cc                                              	int3
1098b225:	cc                                              	int3
1098b226:	cc                                              	int3
1098b227:	cc                                              	int3
1098b228:	cc                                              	int3
1098b229:	cc                                              	int3
1098b22a:	cc                                              	int3
1098b22b:	cc                                              	int3
1098b22c:	cc                                              	int3
1098b22d:	cc                                              	int3
1098b22e:	cc                                              	int3
1098b22f:	cc                                              	int3

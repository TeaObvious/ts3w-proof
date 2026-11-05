# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e100 (SacsWrap_MulticastDecisionGraphNode_GetTargets)
Paired Ghidra pseudocode: 1098E100_SacsWrap_MulticastDecisionGraphNode_GetTargets.c
Window: [0x1098e100, 0x1098e240) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e100: 8b 44 24 04 83 ec 28 85 c0 55 0f 84 22 01 00 00
1098e110: 83 7c 24 34 00 8b 6c 24 38 74 08 85 ed 0f 84 0f
1098e120: 01 00 00 f3 0f 10 05 d4 b0 ac 10 8b 48 38 8b 50
1098e130: 34 8b 40 34 f3 0f 11 44 24 1c f3 0f 10 05 fc df
1098e140: aa 10 f3 0f 11 44 24 20 c7 44 24 28 78 70 b9 10
1098e150: c7 44 24 14 01 00 00 00 c7 44 24 10 f8 71 c5 10
1098e160: c7 44 24 18 00 00 00 00 c7 44 24 24 00 00 00 00
1098e170: 8d 14 8a 8b 08 85 c9 56 8b 32 75 11 83 c0 04 39
1098e180: 08 75 08 83 c0 04 83 38 00 74 f8 8b 08 52 56 50
1098e190: 51 8d 4c 24 20 e8 a6 75 c5 ff 8b 54 24 14 8b 02
1098e1a0: 85 c0 8b ca 75 14 39 42 04 8d 4a 04 75 0a 8b ff
1098e1b0: 83 c1 04 83 39 00 74 f8 8b 01 8b 74 24 18 53 8b
1098e1c0: 1c b2 33 f6 3b c3 89 5c 24 0c 74 32 8d 64 24 00
1098e1d0: 3b 74 24 3c 73 0a 8b 18 89 5c b5 00 8b 5c 24 0c
1098e1e0: 8b 40 04 83 c6 01 85 c0 75 10 8d 9b 00 00 00 00
1098e1f0: 8b 41 04 83 c1 04 85 c0 74 f6 3b c3 75 d2 8b 44
1098e200: 24 1c 50 52 8d 4c 24 1c e8 03 d7 c5 ff 83 7c 24
1098e210: 1c 01 c7 44 24 20 00 00 00 00 5b 76 0d 8b 4c 24
1098e220: 14 51 e8 69 ac f8 ff 83 c4 04 8b c6 5e 5d 83 c4
1098e230: 28 c3 33 c0 5d 83 c4 28 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e100 <.text+0x98d100>:
1098e100:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098e104:	83 ec 28                                        	sub    esp,0x28
1098e107:	85 c0                                           	test   eax,eax
1098e109:	55                                              	push   ebp
1098e10a:	0f 84 22 01 00 00                               	je     0x1098e232
1098e110:	83 7c 24 34 00                                  	cmp    DWORD PTR [esp+0x34],0x0
1098e115:	8b 6c 24 38                                     	mov    ebp,DWORD PTR [esp+0x38]
1098e119:	74 08                                           	je     0x1098e123
1098e11b:	85 ed                                           	test   ebp,ebp
1098e11d:	0f 84 0f 01 00 00                               	je     0x1098e232
1098e123:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1098e12b:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
1098e12e:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
1098e131:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
1098e134:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1098e13a:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
1098e142:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1098e148:	c7 44 24 28 78 70 b9 10                         	mov    DWORD PTR [esp+0x28],0x10b97078
1098e150:	c7 44 24 14 01 00 00 00                         	mov    DWORD PTR [esp+0x14],0x1
1098e158:	c7 44 24 10 f8 71 c5 10                         	mov    DWORD PTR [esp+0x10],0x10c571f8
1098e160:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
1098e168:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
1098e170:	8d 14 8a                                        	lea    edx,[edx+ecx*4]
1098e173:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1098e175:	85 c9                                           	test   ecx,ecx
1098e177:	56                                              	push   esi
1098e178:	8b 32                                           	mov    esi,DWORD PTR [edx]
1098e17a:	75 11                                           	jne    0x1098e18d
1098e17c:	83 c0 04                                        	add    eax,0x4
1098e17f:	39 08                                           	cmp    DWORD PTR [eax],ecx
1098e181:	75 08                                           	jne    0x1098e18b
1098e183:	83 c0 04                                        	add    eax,0x4
1098e186:	83 38 00                                        	cmp    DWORD PTR [eax],0x0
1098e189:	74 f8                                           	je     0x1098e183
1098e18b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1098e18d:	52                                              	push   edx
1098e18e:	56                                              	push   esi
1098e18f:	50                                              	push   eax
1098e190:	51                                              	push   ecx
1098e191:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098e195:	e8 a6 75 c5 ff                                  	call   0x105e5740
1098e19a:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1098e19e:	8b 02                                           	mov    eax,DWORD PTR [edx]
1098e1a0:	85 c0                                           	test   eax,eax
1098e1a2:	8b ca                                           	mov    ecx,edx
1098e1a4:	75 14                                           	jne    0x1098e1ba
1098e1a6:	39 42 04                                        	cmp    DWORD PTR [edx+0x4],eax
1098e1a9:	8d 4a 04                                        	lea    ecx,[edx+0x4]
1098e1ac:	75 0a                                           	jne    0x1098e1b8
1098e1ae:	8b ff                                           	mov    edi,edi
1098e1b0:	83 c1 04                                        	add    ecx,0x4
1098e1b3:	83 39 00                                        	cmp    DWORD PTR [ecx],0x0
1098e1b6:	74 f8                                           	je     0x1098e1b0
1098e1b8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098e1ba:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1098e1be:	53                                              	push   ebx
1098e1bf:	8b 1c b2                                        	mov    ebx,DWORD PTR [edx+esi*4]
1098e1c2:	33 f6                                           	xor    esi,esi
1098e1c4:	3b c3                                           	cmp    eax,ebx
1098e1c6:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
1098e1ca:	74 32                                           	je     0x1098e1fe
1098e1cc:	8d 64 24 00                                     	lea    esp,[esp+0x0]
1098e1d0:	3b 74 24 3c                                     	cmp    esi,DWORD PTR [esp+0x3c]
1098e1d4:	73 0a                                           	jae    0x1098e1e0
1098e1d6:	8b 18                                           	mov    ebx,DWORD PTR [eax]
1098e1d8:	89 5c b5 00                                     	mov    DWORD PTR [ebp+esi*4+0x0],ebx
1098e1dc:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
1098e1e0:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
1098e1e3:	83 c6 01                                        	add    esi,0x1
1098e1e6:	85 c0                                           	test   eax,eax
1098e1e8:	75 10                                           	jne    0x1098e1fa
1098e1ea:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098e1f0:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
1098e1f3:	83 c1 04                                        	add    ecx,0x4
1098e1f6:	85 c0                                           	test   eax,eax
1098e1f8:	74 f6                                           	je     0x1098e1f0
1098e1fa:	3b c3                                           	cmp    eax,ebx
1098e1fc:	75 d2                                           	jne    0x1098e1d0
1098e1fe:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098e202:	50                                              	push   eax
1098e203:	52                                              	push   edx
1098e204:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1098e208:	e8 03 d7 c5 ff                                  	call   0x105eb910
1098e20d:	83 7c 24 1c 01                                  	cmp    DWORD PTR [esp+0x1c],0x1
1098e212:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
1098e21a:	5b                                              	pop    ebx
1098e21b:	76 0d                                           	jbe    0x1098e22a
1098e21d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098e221:	51                                              	push   ecx
1098e222:	e8 69 ac f8 ff                                  	call   0x10918e90
1098e227:	83 c4 04                                        	add    esp,0x4
1098e22a:	8b c6                                           	mov    eax,esi
1098e22c:	5e                                              	pop    esi
1098e22d:	5d                                              	pop    ebp
1098e22e:	83 c4 28                                        	add    esp,0x28
1098e231:	c3                                              	ret
1098e232:	33 c0                                           	xor    eax,eax
1098e234:	5d                                              	pop    ebp
1098e235:	83 c4 28                                        	add    esp,0x28
1098e238:	c3                                              	ret
1098e239:	cc                                              	int3
1098e23a:	cc                                              	int3
1098e23b:	cc                                              	int3
1098e23c:	cc                                              	int3
1098e23d:	cc                                              	int3
1098e23e:	cc                                              	int3
1098e23f:	cc                                              	int3

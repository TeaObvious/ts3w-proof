# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097e1b0 (App3D_DumpMemorySummary)
Paired Ghidra pseudocode: 1097E1B0_App3D_DumpMemorySummary.c
Window: [0x1097e1b0, 0x1097e260) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097e260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097e1b0: 83 ec 10 56 8b 74 24 18 85 f6 75 07 32 c0 5e 83
1097e1c0: c4 10 c3 57 e8 c7 46 da ff 8b 38 85 ff 75 08 5f
1097e1d0: 32 c0 5e 83 c4 10 c3 66 83 3e 00 b8 44 82 ca 10
1097e1e0: 89 44 24 08 89 44 24 0c c7 44 24 14 c0 60 b9 10
1097e1f0: c7 44 24 10 46 82 ca 10 8b c6 74 0d 8d 64 24 00
1097e200: 83 c0 02 66 83 38 00 75 f7 2b c6 d1 f8 53 8d 04
1097e210: 46 50 56 8d 4c 24 14 e8 a4 16 6a ff 8b 74 24 0c
1097e220: 6a 00 6a 00 56 8b cf e8 e4 62 da ff 8b 4c 24 14
1097e230: 2b ce 83 e1 fe 83 f9 02 8a d8 7e 0d 85 f6 74 09
1097e240: 56 e8 4a ac f9 ff 83 c4 04 8a c3 5b 5f 5e 83 c4
1097e250: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097e1b0 <.text+0x97d1b0>:
1097e1b0:	83 ec 10                                        	sub    esp,0x10
1097e1b3:	56                                              	push   esi
1097e1b4:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1097e1b8:	85 f6                                           	test   esi,esi
1097e1ba:	75 07                                           	jne    0x1097e1c3
1097e1bc:	32 c0                                           	xor    al,al
1097e1be:	5e                                              	pop    esi
1097e1bf:	83 c4 10                                        	add    esp,0x10
1097e1c2:	c3                                              	ret
1097e1c3:	57                                              	push   edi
1097e1c4:	e8 c7 46 da ff                                  	call   0x10722890
1097e1c9:	8b 38                                           	mov    edi,DWORD PTR [eax]
1097e1cb:	85 ff                                           	test   edi,edi
1097e1cd:	75 08                                           	jne    0x1097e1d7
1097e1cf:	5f                                              	pop    edi
1097e1d0:	32 c0                                           	xor    al,al
1097e1d2:	5e                                              	pop    esi
1097e1d3:	83 c4 10                                        	add    esp,0x10
1097e1d6:	c3                                              	ret
1097e1d7:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
1097e1db:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1097e1e0:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1097e1e4:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1097e1e8:	c7 44 24 14 c0 60 b9 10                         	mov    DWORD PTR [esp+0x14],0x10b960c0
1097e1f0:	c7 44 24 10 46 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8246
1097e1f8:	8b c6                                           	mov    eax,esi
1097e1fa:	74 0d                                           	je     0x1097e209
1097e1fc:	8d 64 24 00                                     	lea    esp,[esp+0x0]
1097e200:	83 c0 02                                        	add    eax,0x2
1097e203:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1097e207:	75 f7                                           	jne    0x1097e200
1097e209:	2b c6                                           	sub    eax,esi
1097e20b:	d1 f8                                           	sar    eax,1
1097e20d:	53                                              	push   ebx
1097e20e:	8d 04 46                                        	lea    eax,[esi+eax*2]
1097e211:	50                                              	push   eax
1097e212:	56                                              	push   esi
1097e213:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1097e217:	e8 a4 16 6a ff                                  	call   0x1001f8c0
1097e21c:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1097e220:	6a 00                                           	push   0x0
1097e222:	6a 00                                           	push   0x0
1097e224:	56                                              	push   esi
1097e225:	8b cf                                           	mov    ecx,edi
1097e227:	e8 e4 62 da ff                                  	call   0x10724510
1097e22c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097e230:	2b ce                                           	sub    ecx,esi
1097e232:	83 e1 fe                                        	and    ecx,0xfffffffe
1097e235:	83 f9 02                                        	cmp    ecx,0x2
1097e238:	8a d8                                           	mov    bl,al
1097e23a:	7e 0d                                           	jle    0x1097e249
1097e23c:	85 f6                                           	test   esi,esi
1097e23e:	74 09                                           	je     0x1097e249
1097e240:	56                                              	push   esi
1097e241:	e8 4a ac f9 ff                                  	call   0x10918e90
1097e246:	83 c4 04                                        	add    esp,0x4
1097e249:	8a c3                                           	mov    al,bl
1097e24b:	5b                                              	pop    ebx
1097e24c:	5f                                              	pop    edi
1097e24d:	5e                                              	pop    esi
1097e24e:	83 c4 10                                        	add    esp,0x10
1097e251:	c3                                              	ret
1097e252:	cc                                              	int3
1097e253:	cc                                              	int3
1097e254:	cc                                              	int3
1097e255:	cc                                              	int3
1097e256:	cc                                              	int3
1097e257:	cc                                              	int3
1097e258:	cc                                              	int3
1097e259:	cc                                              	int3
1097e25a:	cc                                              	int3
1097e25b:	cc                                              	int3
1097e25c:	cc                                              	int3
1097e25d:	cc                                              	int3
1097e25e:	cc                                              	int3
1097e25f:	cc                                              	int3

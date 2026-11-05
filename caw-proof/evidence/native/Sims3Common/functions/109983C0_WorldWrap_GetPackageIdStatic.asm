# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109983c0 (WorldWrap_GetPackageIdStatic)
Paired Ghidra pseudocode: 109983C0_WorldWrap_GetPackageIdStatic.c
Window: [0x109983c0, 0x10998450) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109983c0: 81 ec c0 00 00 00 53 55 56 57 8d 4c 24 30 33 f6
109983d0: 33 ff 33 db 33 ed e8 55 3c a0 ff 8b 8c 24 d8 00
109983e0: 00 00 55 8d 44 24 34 50 51 e8 a2 fe ff ff 83 c4
109983f0: 0c 84 c0 74 2e 8d 94 24 80 00 00 00 52 8d 4c 24
10998400: 14 e8 ba b1 f9 ff 8d 44 24 10 50 8d 4c 24 24 51
10998410: e8 db 56 bc ff 8b 30 8b 78 04 8b 58 08 8b 68 0c
10998420: 83 c4 08 8d 4c 24 30 e8 c4 3c a0 ff 8b 84 24 d4
10998430: 00 00 00 89 30 89 78 04 5f 89 58 08 5e 89 68 0c
10998440: 5d 5b 81 c4 c0 00 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109983c0 <.text+0x9973c0>:
109983c0:	81 ec c0 00 00 00                               	sub    esp,0xc0
109983c6:	53                                              	push   ebx
109983c7:	55                                              	push   ebp
109983c8:	56                                              	push   esi
109983c9:	57                                              	push   edi
109983ca:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
109983ce:	33 f6                                           	xor    esi,esi
109983d0:	33 ff                                           	xor    edi,edi
109983d2:	33 db                                           	xor    ebx,ebx
109983d4:	33 ed                                           	xor    ebp,ebp
109983d6:	e8 55 3c a0 ff                                  	call   0x1039c030
109983db:	8b 8c 24 d8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd8]
109983e2:	55                                              	push   ebp
109983e3:	8d 44 24 34                                     	lea    eax,[esp+0x34]
109983e7:	50                                              	push   eax
109983e8:	51                                              	push   ecx
109983e9:	e8 a2 fe ff ff                                  	call   0x10998290
109983ee:	83 c4 0c                                        	add    esp,0xc
109983f1:	84 c0                                           	test   al,al
109983f3:	74 2e                                           	je     0x10998423
109983f5:	8d 94 24 80 00 00 00                            	lea    edx,[esp+0x80]
109983fc:	52                                              	push   edx
109983fd:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10998401:	e8 ba b1 f9 ff                                  	call   0x109335c0
10998406:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1099840a:	50                                              	push   eax
1099840b:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1099840f:	51                                              	push   ecx
10998410:	e8 db 56 bc ff                                  	call   0x1055daf0
10998415:	8b 30                                           	mov    esi,DWORD PTR [eax]
10998417:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
1099841a:	8b 58 08                                        	mov    ebx,DWORD PTR [eax+0x8]
1099841d:	8b 68 0c                                        	mov    ebp,DWORD PTR [eax+0xc]
10998420:	83 c4 08                                        	add    esp,0x8
10998423:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10998427:	e8 c4 3c a0 ff                                  	call   0x1039c0f0
1099842c:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
10998433:	89 30                                           	mov    DWORD PTR [eax],esi
10998435:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
10998438:	5f                                              	pop    edi
10998439:	89 58 08                                        	mov    DWORD PTR [eax+0x8],ebx
1099843c:	5e                                              	pop    esi
1099843d:	89 68 0c                                        	mov    DWORD PTR [eax+0xc],ebp
10998440:	5d                                              	pop    ebp
10998441:	5b                                              	pop    ebx
10998442:	81 c4 c0 00 00 00                               	add    esp,0xc0
10998448:	c3                                              	ret
10998449:	cc                                              	int3
1099844a:	cc                                              	int3
1099844b:	cc                                              	int3
1099844c:	cc                                              	int3
1099844d:	cc                                              	int3
1099844e:	cc                                              	int3
1099844f:	cc                                              	int3

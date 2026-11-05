# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0059d230 (DirectTargetOf_LocalizedStringService_LocalizedStringService_GetLocale)
Paired Ghidra pseudocode: 0059D230_DirectTargetOf_LocalizedStringService_LocalizedStringService_GetLocale.c
Window: [0x0059d230, 0x0059d300) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x0059d300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0059d230: 83 ec 34 57 33 ff 39 3d d0 f2 1c 01 0f 84 b1 00
0059d240: 00 00 56 e8 48 c1 1c 00 8b f0 a1 d0 f2 1c 01 83
0059d250: c0 28 50 8d 4c 24 10 89 7c 24 10 89 7c 24 14 89
0059d260: 7c 24 18 c7 44 24 1c 20 ad fd 00 e8 20 e3 e6 ff
0059d270: 6a 01 6a 10 8d 4c 24 14 51 6a 09 6a 13 8d 4c 24
0059d280: 30 c7 44 24 30 f4 a6 fb 00 66 89 7c 24 38 66 89
0059d290: 7c 24 3a e8 28 87 f5 ff 8d 44 24 08 89 7c 24 08
0059d2a0: 8b 16 8b 52 50 50 8d 4c 24 20 51 8b ce ff d2 f6
0059d2b0: 44 24 24 04 8b 74 24 08 c7 44 24 1c f4 a6 fb 00
0059d2c0: 74 0a 57 8d 4c 24 20 e8 94 84 f5 ff 8b 4c 24 14
0059d2d0: 8b 44 24 0c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7
0059d2e0: 74 09 50 e8 f8 71 f4 ff 83 c4 04 8b c6 5e 5f 83
0059d2f0: c4 34 c3 33 c0 5f 83 c4 34 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0059d230 <.text+0x19c230>:
  59d230:	83 ec 34                                        	sub    esp,0x34
  59d233:	57                                              	push   edi
  59d234:	33 ff                                           	xor    edi,edi
  59d236:	39 3d d0 f2 1c 01                               	cmp    DWORD PTR ds:0x11cf2d0,edi
  59d23c:	0f 84 b1 00 00 00                               	je     0x59d2f3
  59d242:	56                                              	push   esi
  59d243:	e8 48 c1 1c 00                                  	call   0x769390
  59d248:	8b f0                                           	mov    esi,eax
  59d24a:	a1 d0 f2 1c 01                                  	mov    eax,ds:0x11cf2d0
  59d24f:	83 c0 28                                        	add    eax,0x28
  59d252:	50                                              	push   eax
  59d253:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  59d257:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  59d25b:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  59d25f:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  59d263:	c7 44 24 1c 20 ad fd 00                         	mov    DWORD PTR [esp+0x1c],0xfdad20
  59d26b:	e8 20 e3 e6 ff                                  	call   0x40b590
  59d270:	6a 01                                           	push   0x1
  59d272:	6a 10                                           	push   0x10
  59d274:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  59d278:	51                                              	push   ecx
  59d279:	6a 09                                           	push   0x9
  59d27b:	6a 13                                           	push   0x13
  59d27d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  59d281:	c7 44 24 30 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x30],0xfba6f4
  59d289:	66 89 7c 24 38                                  	mov    WORD PTR [esp+0x38],di
  59d28e:	66 89 7c 24 3a                                  	mov    WORD PTR [esp+0x3a],di
  59d293:	e8 28 87 f5 ff                                  	call   0x4f59c0
  59d298:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  59d29c:	89 7c 24 08                                     	mov    DWORD PTR [esp+0x8],edi
  59d2a0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  59d2a2:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  59d2a5:	50                                              	push   eax
  59d2a6:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  59d2aa:	51                                              	push   ecx
  59d2ab:	8b ce                                           	mov    ecx,esi
  59d2ad:	ff d2                                           	call   edx
  59d2af:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  59d2b4:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  59d2b8:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  59d2c0:	74 0a                                           	je     0x59d2cc
  59d2c2:	57                                              	push   edi
  59d2c3:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  59d2c7:	e8 94 84 f5 ff                                  	call   0x4f5760
  59d2cc:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  59d2d0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  59d2d4:	2b c8                                           	sub    ecx,eax
  59d2d6:	83 e1 fe                                        	and    ecx,0xfffffffe
  59d2d9:	83 f9 02                                        	cmp    ecx,0x2
  59d2dc:	7e 0d                                           	jle    0x59d2eb
  59d2de:	3b c7                                           	cmp    eax,edi
  59d2e0:	74 09                                           	je     0x59d2eb
  59d2e2:	50                                              	push   eax
  59d2e3:	e8 f8 71 f4 ff                                  	call   0x4e44e0
  59d2e8:	83 c4 04                                        	add    esp,0x4
  59d2eb:	8b c6                                           	mov    eax,esi
  59d2ed:	5e                                              	pop    esi
  59d2ee:	5f                                              	pop    edi
  59d2ef:	83 c4 34                                        	add    esp,0x34
  59d2f2:	c3                                              	ret
  59d2f3:	33 c0                                           	xor    eax,eax
  59d2f5:	5f                                              	pop    edi
  59d2f6:	83 c4 34                                        	add    esp,0x34
  59d2f9:	c3                                              	ret
  59d2fa:	cc                                              	int3
  59d2fb:	cc                                              	int3
  59d2fc:	cc                                              	int3
  59d2fd:	cc                                              	int3
  59d2fe:	cc                                              	int3
  59d2ff:	cc                                              	int3

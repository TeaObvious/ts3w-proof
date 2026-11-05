# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0059d300 (DirectTargetOf_LocalizedStringService_LocalizedStringService_GetLocalizedLogoSuffix)
Paired Ghidra pseudocode: 0059D300_DirectTargetOf_LocalizedStringService_LocalizedStringService_GetLocalizedLogoSuffix.c
Window: [0x0059d300, 0x0059d3d0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x0059d3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0059d300: 83 ec 34 57 33 ff 39 3d d0 f2 1c 01 0f 84 b4 00
0059d310: 00 00 56 e8 78 c0 1c 00 8b 0d d0 f2 1c 01 8b f0
0059d320: e8 0b ea ff ff 50 8d 4c 24 10 89 7c 24 10 89 7c
0059d330: 24 14 89 7c 24 18 c7 44 24 1c 20 ad fd 00 e8 4d
0059d340: e2 e6 ff 6a 01 6a 10 8d 44 24 14 50 6a 09 6a 13
0059d350: 8d 4c 24 30 c7 44 24 30 f4 a6 fb 00 66 89 7c 24
0059d360: 38 66 89 7c 24 3a e8 55 86 f5 ff 8d 44 24 08 89
0059d370: 7c 24 08 8b 16 8b 52 50 50 8d 4c 24 20 51 8b ce
0059d380: ff d2 f6 44 24 24 04 8b 74 24 08 c7 44 24 1c f4
0059d390: a6 fb 00 74 0a 57 8d 4c 24 20 e8 c1 83 f5 ff 8b
0059d3a0: 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83 f9 02 7e
0059d3b0: 0d 3b c7 74 09 50 e8 25 71 f4 ff 83 c4 04 8b c6
0059d3c0: 5e 5f 83 c4 34 c3 33 c0 5f 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
0059d300 <.text+0x19c300>:
  59d300:	83 ec 34                                        	sub    esp,0x34
  59d303:	57                                              	push   edi
  59d304:	33 ff                                           	xor    edi,edi
  59d306:	39 3d d0 f2 1c 01                               	cmp    DWORD PTR ds:0x11cf2d0,edi
  59d30c:	0f 84 b4 00 00 00                               	je     0x59d3c6
  59d312:	56                                              	push   esi
  59d313:	e8 78 c0 1c 00                                  	call   0x769390
  59d318:	8b 0d d0 f2 1c 01                               	mov    ecx,DWORD PTR ds:0x11cf2d0
  59d31e:	8b f0                                           	mov    esi,eax
  59d320:	e8 0b ea ff ff                                  	call   0x59bd30
  59d325:	50                                              	push   eax
  59d326:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  59d32a:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  59d32e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  59d332:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  59d336:	c7 44 24 1c 20 ad fd 00                         	mov    DWORD PTR [esp+0x1c],0xfdad20
  59d33e:	e8 4d e2 e6 ff                                  	call   0x40b590
  59d343:	6a 01                                           	push   0x1
  59d345:	6a 10                                           	push   0x10
  59d347:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  59d34b:	50                                              	push   eax
  59d34c:	6a 09                                           	push   0x9
  59d34e:	6a 13                                           	push   0x13
  59d350:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  59d354:	c7 44 24 30 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x30],0xfba6f4
  59d35c:	66 89 7c 24 38                                  	mov    WORD PTR [esp+0x38],di
  59d361:	66 89 7c 24 3a                                  	mov    WORD PTR [esp+0x3a],di
  59d366:	e8 55 86 f5 ff                                  	call   0x4f59c0
  59d36b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  59d36f:	89 7c 24 08                                     	mov    DWORD PTR [esp+0x8],edi
  59d373:	8b 16                                           	mov    edx,DWORD PTR [esi]
  59d375:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  59d378:	50                                              	push   eax
  59d379:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  59d37d:	51                                              	push   ecx
  59d37e:	8b ce                                           	mov    ecx,esi
  59d380:	ff d2                                           	call   edx
  59d382:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  59d387:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  59d38b:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  59d393:	74 0a                                           	je     0x59d39f
  59d395:	57                                              	push   edi
  59d396:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  59d39a:	e8 c1 83 f5 ff                                  	call   0x4f5760
  59d39f:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  59d3a3:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  59d3a7:	2b c8                                           	sub    ecx,eax
  59d3a9:	83 e1 fe                                        	and    ecx,0xfffffffe
  59d3ac:	83 f9 02                                        	cmp    ecx,0x2
  59d3af:	7e 0d                                           	jle    0x59d3be
  59d3b1:	3b c7                                           	cmp    eax,edi
  59d3b3:	74 09                                           	je     0x59d3be
  59d3b5:	50                                              	push   eax
  59d3b6:	e8 25 71 f4 ff                                  	call   0x4e44e0
  59d3bb:	83 c4 04                                        	add    esp,0x4
  59d3be:	8b c6                                           	mov    eax,esi
  59d3c0:	5e                                              	pop    esi
  59d3c1:	5f                                              	pop    edi
  59d3c2:	83 c4 34                                        	add    esp,0x34
  59d3c5:	c3                                              	ret
  59d3c6:	33 c0                                           	xor    eax,eax
  59d3c8:	5f                                              	pop    edi
  59d3c9:	83 c4 34                                        	add    esp,0x34
  59d3cc:	c3                                              	ret
  59d3cd:	cc                                              	int3
  59d3ce:	cc                                              	int3
  59d3cf:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0059d3d0 (DirectTargetOf_LocalizedStringService_LocalizedStringService_GetLocalizedLogoSuffixEP)
Paired Ghidra pseudocode: 0059D3D0_DirectTargetOf_LocalizedStringService_LocalizedStringService_GetLocalizedLogoSuffixEP.c
Window: [0x0059d3d0, 0x0059d4a0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x0059d4a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0059d3d0: 83 ec 34 57 33 ff 39 3d d0 f2 1c 01 0f 84 b4 00
0059d3e0: 00 00 56 e8 a8 bf 1c 00 8b 0d d0 f2 1c 01 8b f0
0059d3f0: e8 0b ee ff ff 50 8d 4c 24 10 89 7c 24 10 89 7c
0059d400: 24 14 89 7c 24 18 c7 44 24 1c 20 ad fd 00 e8 7d
0059d410: e1 e6 ff 6a 01 6a 10 8d 44 24 14 50 6a 09 6a 13
0059d420: 8d 4c 24 30 c7 44 24 30 f4 a6 fb 00 66 89 7c 24
0059d430: 38 66 89 7c 24 3a e8 85 85 f5 ff 8d 44 24 08 89
0059d440: 7c 24 08 8b 16 8b 52 50 50 8d 4c 24 20 51 8b ce
0059d450: ff d2 f6 44 24 24 04 8b 74 24 08 c7 44 24 1c f4
0059d460: a6 fb 00 74 0a 57 8d 4c 24 20 e8 f1 82 f5 ff 8b
0059d470: 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83 f9 02 7e
0059d480: 0d 3b c7 74 09 50 e8 55 70 f4 ff 83 c4 04 8b c6
0059d490: 5e 5f 83 c4 34 c3 33 c0 5f 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
0059d3d0 <.text+0x19c3d0>:
  59d3d0:	83 ec 34                                        	sub    esp,0x34
  59d3d3:	57                                              	push   edi
  59d3d4:	33 ff                                           	xor    edi,edi
  59d3d6:	39 3d d0 f2 1c 01                               	cmp    DWORD PTR ds:0x11cf2d0,edi
  59d3dc:	0f 84 b4 00 00 00                               	je     0x59d496
  59d3e2:	56                                              	push   esi
  59d3e3:	e8 a8 bf 1c 00                                  	call   0x769390
  59d3e8:	8b 0d d0 f2 1c 01                               	mov    ecx,DWORD PTR ds:0x11cf2d0
  59d3ee:	8b f0                                           	mov    esi,eax
  59d3f0:	e8 0b ee ff ff                                  	call   0x59c200
  59d3f5:	50                                              	push   eax
  59d3f6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  59d3fa:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  59d3fe:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  59d402:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  59d406:	c7 44 24 1c 20 ad fd 00                         	mov    DWORD PTR [esp+0x1c],0xfdad20
  59d40e:	e8 7d e1 e6 ff                                  	call   0x40b590
  59d413:	6a 01                                           	push   0x1
  59d415:	6a 10                                           	push   0x10
  59d417:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  59d41b:	50                                              	push   eax
  59d41c:	6a 09                                           	push   0x9
  59d41e:	6a 13                                           	push   0x13
  59d420:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  59d424:	c7 44 24 30 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x30],0xfba6f4
  59d42c:	66 89 7c 24 38                                  	mov    WORD PTR [esp+0x38],di
  59d431:	66 89 7c 24 3a                                  	mov    WORD PTR [esp+0x3a],di
  59d436:	e8 85 85 f5 ff                                  	call   0x4f59c0
  59d43b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  59d43f:	89 7c 24 08                                     	mov    DWORD PTR [esp+0x8],edi
  59d443:	8b 16                                           	mov    edx,DWORD PTR [esi]
  59d445:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  59d448:	50                                              	push   eax
  59d449:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  59d44d:	51                                              	push   ecx
  59d44e:	8b ce                                           	mov    ecx,esi
  59d450:	ff d2                                           	call   edx
  59d452:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  59d457:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  59d45b:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  59d463:	74 0a                                           	je     0x59d46f
  59d465:	57                                              	push   edi
  59d466:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  59d46a:	e8 f1 82 f5 ff                                  	call   0x4f5760
  59d46f:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  59d473:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  59d477:	2b c8                                           	sub    ecx,eax
  59d479:	83 e1 fe                                        	and    ecx,0xfffffffe
  59d47c:	83 f9 02                                        	cmp    ecx,0x2
  59d47f:	7e 0d                                           	jle    0x59d48e
  59d481:	3b c7                                           	cmp    eax,edi
  59d483:	74 09                                           	je     0x59d48e
  59d485:	50                                              	push   eax
  59d486:	e8 55 70 f4 ff                                  	call   0x4e44e0
  59d48b:	83 c4 04                                        	add    esp,0x4
  59d48e:	8b c6                                           	mov    eax,esi
  59d490:	5e                                              	pop    esi
  59d491:	5f                                              	pop    edi
  59d492:	83 c4 34                                        	add    esp,0x34
  59d495:	c3                                              	ret
  59d496:	33 c0                                           	xor    eax,eax
  59d498:	5f                                              	pop    edi
  59d499:	83 c4 34                                        	add    esp,0x34
  59d49c:	c3                                              	ret
  59d49d:	cc                                              	int3
  59d49e:	cc                                              	int3
  59d49f:	cc                                              	int3

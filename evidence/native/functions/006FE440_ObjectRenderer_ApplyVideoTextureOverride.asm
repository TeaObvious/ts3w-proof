# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x006fe440 ObjectRenderer_ApplyVideoTextureOverride
# Complete current Ghidra body [006fe440, 006fe515] inclusive: 80 instructions/214 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and stored-vs-inferred ABI limits: 006FE440_ObjectRenderer_ApplyVideoTextureOverride.c
# Actual RET0xC consumes three stackDWORDs; stored prototype omits third texture word. AL-only result, not fullEAX boolean.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006fe440 <.text+0x2fd440>:
  6fe440:	83 ec 08                                        	sub    esp,0x8
  6fe443:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  6fe447:	53                                              	push   ebx
  6fe448:	56                                              	push   esi
  6fe449:	8b f1                                           	mov    esi,ecx
  6fe44b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  6fe44f:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  6fe453:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  6fe457:	52                                              	push   edx
  6fe458:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  6fe45c:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  6fe460:	50                                              	push   eax
  6fe461:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  6fe464:	e8 f7 f8 ff ff                                  	call   0x6fdd60
  6fe469:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  6fe46d:	3b 86 28 10 00 00                               	cmp    eax,DWORD PTR [esi+0x1028]
  6fe473:	0f 84 93 00 00 00                               	je     0x6fe50c
  6fe479:	85 c0                                           	test   eax,eax
  6fe47b:	0f 84 8b 00 00 00                               	je     0x6fe50c
  6fe481:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  6fe484:	85 c9                                           	test   ecx,ecx
  6fe486:	0f 84 80 00 00 00                               	je     0x6fe50c
  6fe48c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  6fe48e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  6fe491:	68 88 1d 7f 01                                  	push   0x17f1d88
  6fe496:	ff d0                                           	call   eax
  6fe498:	8b d8                                           	mov    ebx,eax
  6fe49a:	85 db                                           	test   ebx,ebx
  6fe49c:	74 6e                                           	je     0x6fe50c
  6fe49e:	57                                              	push   edi
  6fe49f:	33 ff                                           	xor    edi,edi
  6fe4a1:	57                                              	push   edi
  6fe4a2:	57                                              	push   edi
  6fe4a3:	57                                              	push   edi
  6fe4a4:	57                                              	push   edi
  6fe4a5:	68 e0 af ff 00                                  	push   0xffafe0
  6fe4aa:	57                                              	push   edi
  6fe4ab:	6a 04                                           	push   0x4
  6fe4ad:	6a 0c                                           	push   0xc
  6fe4af:	e8 6c 60 de ff                                  	call   0x4e4520
  6fe4b4:	83 c4 20                                        	add    esp,0x20
  6fe4b7:	85 c0                                           	test   eax,eax
  6fe4b9:	74 1c                                           	je     0x6fe4d7
  6fe4bb:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  6fe4bf:	51                                              	push   ecx
  6fe4c0:	8b c8                                           	mov    ecx,eax
  6fe4c2:	e8 c9 6f 02 00                                  	call   0x725490
  6fe4c7:	8b f0                                           	mov    esi,eax
  6fe4c9:	85 f6                                           	test   esi,esi
  6fe4cb:	74 0a                                           	je     0x6fe4d7
  6fe4cd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6fe4cf:	8b 02                                           	mov    eax,DWORD PTR [edx]
  6fe4d1:	8b ce                                           	mov    ecx,esi
  6fe4d3:	ff d0                                           	call   eax
  6fe4d5:	8b fe                                           	mov    edi,esi
  6fe4d7:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  6fe4d9:	8b 82 80 00 00 00                               	mov    eax,DWORD PTR [edx+0x80]
  6fe4df:	68 2c af ff 00                                  	push   0xffaf2c
  6fe4e4:	57                                              	push   edi
  6fe4e5:	8b cb                                           	mov    ecx,ebx
  6fe4e7:	ff d0                                           	call   eax
  6fe4e9:	8d 8b 10 02 00 00                               	lea    ecx,[ebx+0x210]
  6fe4ef:	e8 0c e7 fd ff                                  	call   0x6dcc00
  6fe4f4:	85 ff                                           	test   edi,edi
  6fe4f6:	74 09                                           	je     0x6fe501
  6fe4f8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  6fe4fa:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  6fe4fd:	8b cf                                           	mov    ecx,edi
  6fe4ff:	ff d0                                           	call   eax
  6fe501:	5f                                              	pop    edi
  6fe502:	5e                                              	pop    esi
  6fe503:	b0 01                                           	mov    al,0x1
  6fe505:	5b                                              	pop    ebx
  6fe506:	83 c4 08                                        	add    esp,0x8
  6fe509:	c2 0c 00                                        	ret    0xc
  6fe50c:	5e                                              	pop    esi
  6fe50d:	32 c0                                           	xor    al,al
  6fe50f:	5b                                              	pop    ebx
  6fe510:	83 c4 08                                        	add    esp,0x8
  6fe513:	c2 0c 00                                        	ret    0xc

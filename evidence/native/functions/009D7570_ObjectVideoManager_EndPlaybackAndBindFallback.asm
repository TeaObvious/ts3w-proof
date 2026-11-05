# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x009d7570 ObjectVideoManager_EndPlaybackAndBindFallback
# Complete current Ghidra body [009d7570, 009d7659] inclusive: 86 instructions/234 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and stored-vs-inferred ABI limits: 009D7570_ObjectVideoManager_EndPlaybackAndBindFallback.c
# Actual RET8 returns output iterator pointer inEAX despite stored undefined return. Texture word passed to006FE440 is absent from its incomplete stored C prototype.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009d7570 <.text+0x5d6570>:
  9d7570:	51                                              	push   ecx
  9d7571:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  9d7575:	56                                              	push   esi
  9d7576:	8b 30                                           	mov    esi,DWORD PTR [eax]
  9d7578:	57                                              	push   edi
  9d7579:	6a 00                                           	push   0x0
  9d757b:	6a 00                                           	push   0x0
  9d757d:	6a 00                                           	push   0x0
  9d757f:	6a 00                                           	push   0x0
  9d7581:	68 30 2d 05 01                                  	push   0x1052d30
  9d7586:	6a 10                                           	push   0x10
  9d7588:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  9d758c:	e8 6f cf b0 ff                                  	call   0x4e4500
  9d7591:	83 c4 18                                        	add    esp,0x18
  9d7594:	85 c0                                           	test   eax,eax
  9d7596:	0f 84 b7 00 00 00                               	je     0x9d7653
  9d759c:	c7 00 1c c9 06 01                               	mov    DWORD PTR [eax],0x106c91c
  9d75a2:	33 c9                                           	xor    ecx,ecx
  9d75a4:	8d 50 04                                        	lea    edx,[eax+0x4]
  9d75a7:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  9d75a9:	c7 00 1c c9 06 01                               	mov    DWORD PTR [eax],0x106c91c
  9d75af:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9d75b1:	8b f8                                           	mov    edi,eax
  9d75b3:	8b c8                                           	mov    ecx,eax
  9d75b5:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  9d75b8:	ff d0                                           	call   eax
  9d75ba:	8b 4e 70                                        	mov    ecx,DWORD PTR [esi+0x70]
  9d75bd:	53                                              	push   ebx
  9d75be:	55                                              	push   ebp
  9d75bf:	89 4f 08                                        	mov    DWORD PTR [edi+0x8],ecx
  9d75c2:	8b 56 74                                        	mov    edx,DWORD PTR [esi+0x74]
  9d75c5:	57                                              	push   edi
  9d75c6:	68 e5 8b 16 06                                  	push   0x6168be5
  9d75cb:	89 57 0c                                        	mov    DWORD PTR [edi+0xc],edx
  9d75ce:	e8 3d bc df ff                                  	call   0x7d3210
  9d75d3:	8b 07                                           	mov    eax,DWORD PTR [edi]
  9d75d5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9d75d8:	83 c4 08                                        	add    esp,0x8
  9d75db:	8b cf                                           	mov    ecx,edi
  9d75dd:	ff d2                                           	call   edx
  9d75df:	8b 3d 9c a9 1e 01                               	mov    edi,DWORD PTR ds:0x11ea99c
  9d75e5:	8b 5e 70                                        	mov    ebx,DWORD PTR [esi+0x70]
  9d75e8:	8b 6e 74                                        	mov    ebp,DWORD PTR [esi+0x74]
  9d75eb:	e8 f0 65 d2 ff                                  	call   0x6fdbe0
  9d75f0:	85 c0                                           	test   eax,eax
  9d75f2:	74 0a                                           	je     0x9d75fe
  9d75f4:	57                                              	push   edi
  9d75f5:	55                                              	push   ebp
  9d75f6:	53                                              	push   ebx
  9d75f7:	8b c8                                           	mov    ecx,eax
  9d75f9:	e8 42 6e d2 ff                                  	call   0x6fe440
  9d75fe:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  9d7602:	6a 01                                           	push   0x1
  9d7604:	56                                              	push   esi
  9d7605:	e8 d6 fa ff ff                                  	call   0x9d70e0
  9d760a:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  9d760e:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9d7610:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  9d7613:	8b 38                                           	mov    edi,DWORD PTR [eax]
  9d7615:	89 39                                           	mov    DWORD PTR [ecx],edi
  9d7617:	89 4f 04                                        	mov    DWORD PTR [edi+0x4],ecx
  9d761a:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  9d761d:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
  9d7620:	2b c8                                           	sub    ecx,eax
  9d7622:	83 f9 01                                        	cmp    ecx,0x1
  9d7625:	5d                                              	pop    ebp
  9d7626:	5b                                              	pop    ebx
  9d7627:	7e 12                                           	jle    0x9d763b
  9d7629:	85 c0                                           	test   eax,eax
  9d762b:	74 0e                                           	je     0x9d763b
  9d762d:	3b 46 18                                        	cmp    eax,DWORD PTR [esi+0x18]
  9d7630:	74 09                                           	je     0x9d763b
  9d7632:	50                                              	push   eax
  9d7633:	e8 a8 ce b0 ff                                  	call   0x4e44e0
  9d7638:	83 c4 04                                        	add    esp,0x4
  9d763b:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  9d7641:	56                                              	push   esi
  9d7642:	e8 29 e8 b0 ff                                  	call   0x4e5e70
  9d7647:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  9d764b:	89 38                                           	mov    DWORD PTR [eax],edi
  9d764d:	5f                                              	pop    edi
  9d764e:	5e                                              	pop    esi
  9d764f:	59                                              	pop    ecx
  9d7650:	c2 08 00                                        	ret    0x8
  9d7653:	33 ff                                           	xor    edi,edi
  9d7655:	e9 60 ff ff ff                                  	jmp    0x9d75ba

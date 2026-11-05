# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x0079a3c0 ShaderParameterRegistry_FindOrCreateHashRowIndex
# Complete actual Ghidra owned ranges: 0079a3c0..0079a461; 57 instructions/162 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 0079A3C0_ShaderParameterRegistry_FindOrCreateHashRowIndex.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079a3c0 <.text+0x3993c0>:
  79a3c0:	83 ec 0c                                        	sub    esp,0xc
  79a3c3:	53                                              	push   ebx
  79a3c4:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  79a3c8:	55                                              	push   ebp
  79a3c9:	56                                              	push   esi
  79a3ca:	8b f1                                           	mov    esi,ecx
  79a3cc:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  79a3d0:	50                                              	push   eax
  79a3d1:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  79a3d5:	8d 6e 14                                        	lea    ebp,[esi+0x14]
  79a3d8:	51                                              	push   ecx
  79a3d9:	8b cd                                           	mov    ecx,ebp
  79a3db:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  79a3df:	e8 fc fd ff ff                                  	call   0x79a1e0
  79a3e4:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  79a3e8:	3b 86 20 01 00 00                               	cmp    eax,DWORD PTR [esi+0x120]
  79a3ee:	74 0a                                           	je     0x79a3fa
  79a3f0:	2b 06                                           	sub    eax,DWORD PTR [esi]
  79a3f2:	c1 f8 03                                        	sar    eax,0x3
  79a3f5:	83 f8 ff                                        	cmp    eax,0xffffffff
  79a3f8:	75 5f                                           	jne    0x79a459
  79a3fa:	8b 16                                           	mov    edx,DWORD PTR [esi]
  79a3fc:	57                                              	push   edi
  79a3fd:	8b 7e 08                                        	mov    edi,DWORD PTR [esi+0x8]
  79a400:	8d 04 fd 00 00 00 00                            	lea    eax,[edi*8+0x0]
  79a407:	89 5c 10 04                                     	mov    DWORD PTR [eax+edx*1+0x4],ebx
  79a40b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  79a40d:	33 db                                           	xor    ebx,ebx
  79a40f:	88 5c 24 20                                     	mov    BYTE PTR [esp+0x20],bl
  79a413:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  79a417:	51                                              	push   ecx
  79a418:	03 d0                                           	add    edx,eax
  79a41a:	52                                              	push   edx
  79a41b:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  79a41f:	50                                              	push   eax
  79a420:	8b cd                                           	mov    ecx,ebp
  79a422:	e8 29 fe ff ff                                  	call   0x79a250
  79a427:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  79a42a:	8b c7                                           	mov    eax,edi
  79a42c:	c1 e0 04                                        	shl    eax,0x4
  79a42f:	89 5c 01 0c                                     	mov    DWORD PTR [ecx+eax*1+0xc],ebx
  79a433:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  79a436:	89 1c 10                                        	mov    DWORD PTR [eax+edx*1],ebx
  79a439:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  79a43c:	66 c7 44 01 04 ff ff                            	mov    WORD PTR [ecx+eax*1+0x4],0xffff
  79a443:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  79a446:	89 5c 02 08                                     	mov    DWORD PTR [edx+eax*1+0x8],ebx
  79a44a:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  79a44d:	66 89 5c 01 06                                  	mov    WORD PTR [ecx+eax*1+0x6],bx
  79a452:	83 46 08 01                                     	add    DWORD PTR [esi+0x8],0x1
  79a456:	8b c7                                           	mov    eax,edi
  79a458:	5f                                              	pop    edi
  79a459:	5e                                              	pop    esi
  79a45a:	5d                                              	pop    ebp
  79a45b:	5b                                              	pop    ebx
  79a45c:	83 c4 0c                                        	add    esp,0xc
  79a45f:	c2 04 00                                        	ret    0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073c790 (ScriptCore.CacheManager::CacheManager_IsCachingAllowed)
Paired Ghidra pseudocode: 0073C790_ScriptCore_CacheManager_CacheManager_IsCachingAllowed.c
Window: [0x0073c790, 0x0073c890) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073c890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073c790: 83 ec 20 53 33 db 38 1d f0 eb 15 01 75 07 32 c0
0073c7a0: 5b 83 c4 20 c3 56 e8 d5 36 d7 ff 8b f0 3b f3 75
0073c7b0: 08 5e 32 c0 5b 83 c4 20 c3 57 e8 d1 cb 02 00 8b
0073c7c0: 4c 24 30 8b 10 8b 52 58 51 8b c8 ff d2 50 e8 ed
0073c7d0: 38 09 00 89 54 24 24 83 c4 04 89 44 24 1c c7 44
0073c7e0: 24 24 84 35 b4 82 89 5c 24 28 8b 06 8b 50 44 8d
0073c7f0: 4c 24 1c 51 8b ce ff d2 8b f8 3b fb 74 7d 89 5c
0073c800: 24 0c 89 5c 24 10 89 5c 24 14 c7 44 24 18 dc 06
0073c810: 00 01 8b 07 8b 50 30 53 8d 4c 24 10 51 8b cf ff
0073c820: d2 8b 4c 24 0c 8b 44 24 10 3b c8 74 27 8d 49 00
0073c830: 8b 16 83 c0 f0 50 8b 42 44 8b ce ff d0 3b c7 75
0073c840: 29 8b 44 24 10 8b 4c 24 0c 83 e8 10 3b c8 89 44
0073c850: 24 10 75 dc 3b cb 74 09 51 e8 82 7c da ff 83 c4
0073c860: 04 5f 5e b0 01 5b 83 c4 20 c3 8b 44 24 0c 3b c3
0073c870: 74 09 50 e8 68 7c da ff 83 c4 04 5f 5e 32 c0 5b
0073c880: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073c790 <.text+0x33b790>:
  73c790:	83 ec 20                                        	sub    esp,0x20
  73c793:	53                                              	push   ebx
  73c794:	33 db                                           	xor    ebx,ebx
  73c796:	38 1d f0 eb 15 01                               	cmp    BYTE PTR ds:0x115ebf0,bl
  73c79c:	75 07                                           	jne    0x73c7a5
  73c79e:	32 c0                                           	xor    al,al
  73c7a0:	5b                                              	pop    ebx
  73c7a1:	83 c4 20                                        	add    esp,0x20
  73c7a4:	c3                                              	ret
  73c7a5:	56                                              	push   esi
  73c7a6:	e8 d5 36 d7 ff                                  	call   0x4afe80
  73c7ab:	8b f0                                           	mov    esi,eax
  73c7ad:	3b f3                                           	cmp    esi,ebx
  73c7af:	75 08                                           	jne    0x73c7b9
  73c7b1:	5e                                              	pop    esi
  73c7b2:	32 c0                                           	xor    al,al
  73c7b4:	5b                                              	pop    ebx
  73c7b5:	83 c4 20                                        	add    esp,0x20
  73c7b8:	c3                                              	ret
  73c7b9:	57                                              	push   edi
  73c7ba:	e8 d1 cb 02 00                                  	call   0x769390
  73c7bf:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  73c7c3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73c7c5:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  73c7c8:	51                                              	push   ecx
  73c7c9:	8b c8                                           	mov    ecx,eax
  73c7cb:	ff d2                                           	call   edx
  73c7cd:	50                                              	push   eax
  73c7ce:	e8 ed 38 09 00                                  	call   0x7d00c0
  73c7d3:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  73c7d7:	83 c4 04                                        	add    esp,0x4
  73c7da:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  73c7de:	c7 44 24 24 84 35 b4 82                         	mov    DWORD PTR [esp+0x24],0x82b43584
  73c7e6:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  73c7ea:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73c7ec:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  73c7ef:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  73c7f3:	51                                              	push   ecx
  73c7f4:	8b ce                                           	mov    ecx,esi
  73c7f6:	ff d2                                           	call   edx
  73c7f8:	8b f8                                           	mov    edi,eax
  73c7fa:	3b fb                                           	cmp    edi,ebx
  73c7fc:	74 7d                                           	je     0x73c87b
  73c7fe:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
  73c802:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  73c806:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  73c80a:	c7 44 24 18 dc 06 00 01                         	mov    DWORD PTR [esp+0x18],0x10006dc
  73c812:	8b 07                                           	mov    eax,DWORD PTR [edi]
  73c814:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  73c817:	53                                              	push   ebx
  73c818:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73c81c:	51                                              	push   ecx
  73c81d:	8b cf                                           	mov    ecx,edi
  73c81f:	ff d2                                           	call   edx
  73c821:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73c825:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  73c829:	3b c8                                           	cmp    ecx,eax
  73c82b:	74 27                                           	je     0x73c854
  73c82d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  73c830:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c832:	83 c0 f0                                        	add    eax,0xfffffff0
  73c835:	50                                              	push   eax
  73c836:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
  73c839:	8b ce                                           	mov    ecx,esi
  73c83b:	ff d0                                           	call   eax
  73c83d:	3b c7                                           	cmp    eax,edi
  73c83f:	75 29                                           	jne    0x73c86a
  73c841:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  73c845:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73c849:	83 e8 10                                        	sub    eax,0x10
  73c84c:	3b c8                                           	cmp    ecx,eax
  73c84e:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  73c852:	75 dc                                           	jne    0x73c830
  73c854:	3b cb                                           	cmp    ecx,ebx
  73c856:	74 09                                           	je     0x73c861
  73c858:	51                                              	push   ecx
  73c859:	e8 82 7c da ff                                  	call   0x4e44e0
  73c85e:	83 c4 04                                        	add    esp,0x4
  73c861:	5f                                              	pop    edi
  73c862:	5e                                              	pop    esi
  73c863:	b0 01                                           	mov    al,0x1
  73c865:	5b                                              	pop    ebx
  73c866:	83 c4 20                                        	add    esp,0x20
  73c869:	c3                                              	ret
  73c86a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  73c86e:	3b c3                                           	cmp    eax,ebx
  73c870:	74 09                                           	je     0x73c87b
  73c872:	50                                              	push   eax
  73c873:	e8 68 7c da ff                                  	call   0x4e44e0
  73c878:	83 c4 04                                        	add    esp,0x4
  73c87b:	5f                                              	pop    edi
  73c87c:	5e                                              	pop    esi
  73c87d:	32 c0                                           	xor    al,al
  73c87f:	5b                                              	pop    ebx
  73c880:	83 c4 20                                        	add    esp,0x20
  73c883:	c3                                              	ret
  73c884:	cc                                              	int3
  73c885:	cc                                              	int3
  73c886:	cc                                              	int3
  73c887:	cc                                              	int3
  73c888:	cc                                              	int3
  73c889:	cc                                              	int3
  73c88a:	cc                                              	int3
  73c88b:	cc                                              	int3
  73c88c:	cc                                              	int3
  73c88d:	cc                                              	int3
  73c88e:	cc                                              	int3
  73c88f:	cc                                              	int3

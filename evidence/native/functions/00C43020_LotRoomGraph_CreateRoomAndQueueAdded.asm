# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00c43020 LotRoomGraph_CreateRoomAndQueueAdded
# Complete Ghidra body [00c43020, 00c4311d] inclusive: 98 body instructions, 254 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 254 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00C43020_LotRoomGraph_CreateRoomAndQueueAdded.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c43020 <.text+0x842020>:
  c43020:	83 ec 08                                        	sub    esp,0x8
  c43023:	53                                              	push   ebx
  c43024:	56                                              	push   esi
  c43025:	57                                              	push   edi
  c43026:	8b f9                                           	mov    edi,ecx
  c43028:	8b 47 60                                        	mov    eax,DWORD PTR [edi+0x60]
  c4302b:	50                                              	push   eax
  c4302c:	6a 10                                           	push   0x10
  c4302e:	e8 9d a5 01 00                                  	call   0xc5d5d0
  c43033:	83 c4 08                                        	add    esp,0x8
  c43036:	85 c0                                           	test   eax,eax
  c43038:	74 0b                                           	je     0xc43045
  c4303a:	8b c8                                           	mov    ecx,eax
  c4303c:	e8 cf a4 01 00                                  	call   0xc5d510
  c43041:	8b d8                                           	mov    ebx,eax
  c43043:	eb 02                                           	jmp    0xc43047
  c43045:	33 db                                           	xor    ebx,ebx
  c43047:	8b 47 30                                        	mov    eax,DWORD PTR [edi+0x30]
  c4304a:	2b 47 2c                                        	sub    eax,DWORD PTR [edi+0x2c]
  c4304d:	8d 4f 2c                                        	lea    ecx,[edi+0x2c]
  c43050:	c1 f8 02                                        	sar    eax,0x2
  c43053:	33 f6                                           	xor    esi,esi
  c43055:	85 c0                                           	test   eax,eax
  c43057:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
  c4305b:	7e 15                                           	jle    0xc43072
  c4305d:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  c4305f:	55                                              	push   ebp
  c43060:	8b 2a                                           	mov    ebp,DWORD PTR [edx]
  c43062:	39 75 00                                        	cmp    DWORD PTR [ebp+0x0],esi
  c43065:	7f 0a                                           	jg     0xc43071
  c43067:	83 c6 01                                        	add    esi,0x1
  c4306a:	83 c2 04                                        	add    edx,0x4
  c4306d:	3b f0                                           	cmp    esi,eax
  c4306f:	7c ef                                           	jl     0xc43060
  c43071:	5d                                              	pop    ebp
  c43072:	89 33                                           	mov    DWORD PTR [ebx],esi
  c43074:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  c43077:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
  c4307a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  c4307c:	8d 14 b2                                        	lea    edx,[edx+esi*4]
  c4307f:	74 12                                           	je     0xc43093
  c43081:	3b d0                                           	cmp    edx,eax
  c43083:	75 0e                                           	jne    0xc43093
  c43085:	85 c0                                           	test   eax,eax
  c43087:	8d 50 04                                        	lea    edx,[eax+0x4]
  c4308a:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  c4308d:	74 13                                           	je     0xc430a2
  c4308f:	89 18                                           	mov    DWORD PTR [eax],ebx
  c43091:	eb 0f                                           	jmp    0xc430a2
  c43093:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  c43097:	50                                              	push   eax
  c43098:	52                                              	push   edx
  c43099:	e8 82 f3 d3 ff                                  	call   0x982420
  c4309e:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  c430a2:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  c430a5:	85 c0                                           	test   eax,eax
  c430a7:	74 6c                                           	je     0xc43115
  c430a9:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  c430ac:	83 f8 03                                        	cmp    eax,0x3
  c430af:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  c430b7:	77 5c                                           	ja     0xc43115
  c430b9:	ff 24 85 20 31 c4 00                            	jmp    DWORD PTR [eax*4+0xc43120]
  c430c0:	ba 8c d8 51 52                                  	mov    edx,0x5251d88c
  c430c5:	eb 13                                           	jmp    0xc430da
  c430c7:	ba 78 d9 51 32                                  	mov    edx,0x3251d978
  c430cc:	eb 0c                                           	jmp    0xc430da
  c430ce:	ba 80 d9 51 32                                  	mov    edx,0x3251d980
  c430d3:	eb 05                                           	jmp    0xc430da
  c430d5:	ba b7 bd 29 0a                                  	mov    edx,0xa29bdb7
  c430da:	8b 47 50                                        	mov    eax,DWORD PTR [edi+0x50]
  c430dd:	3b 47 54                                        	cmp    eax,DWORD PTR [edi+0x54]
  c430e0:	8d 4f 4c                                        	lea    ecx,[edi+0x4c]
  c430e3:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  c430e7:	66 89 74 24 10                                  	mov    WORD PTR [esp+0x10],si
  c430ec:	73 1c                                           	jae    0xc4310a
  c430ee:	85 c0                                           	test   eax,eax
  c430f0:	8d 70 08                                        	lea    esi,[eax+0x8]
  c430f3:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  c430f6:	74 1d                                           	je     0xc43115
  c430f8:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  c430fc:	5f                                              	pop    edi
  c430fd:	89 10                                           	mov    DWORD PTR [eax],edx
  c430ff:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  c43102:	5e                                              	pop    esi
  c43103:	8b c3                                           	mov    eax,ebx
  c43105:	5b                                              	pop    ebx
  c43106:	83 c4 08                                        	add    esp,0x8
  c43109:	c3                                              	ret
  c4310a:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  c4310e:	52                                              	push   edx
  c4310f:	50                                              	push   eax
  c43110:	e8 2b 94 7c ff                                  	call   0x40c540
  c43115:	5f                                              	pop    edi
  c43116:	5e                                              	pop    esi
  c43117:	8b c3                                           	mov    eax,ebx
  c43119:	5b                                              	pop    ebx
  c4311a:	83 c4 08                                        	add    esp,0x8
  c4311d:	c3                                              	ret

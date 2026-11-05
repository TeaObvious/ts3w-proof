# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00c413f0 LotRoomGraph_SubmitQueuedRoomMessages
# Complete Ghidra body [00c413f0, 00c41490] inclusive: 58 body instructions, 161 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 161 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00C413F0_LotRoomGraph_SubmitQueuedRoomMessages.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c413f0 <.text+0x8403f0>:
  c413f0:	53                                              	push   ebx
  c413f1:	55                                              	push   ebp
  c413f2:	8b d9                                           	mov    ebx,ecx
  c413f4:	8b 6b 50                                        	mov    ebp,DWORD PTR [ebx+0x50]
  c413f7:	2b 6b 4c                                        	sub    ebp,DWORD PTR [ebx+0x4c]
  c413fa:	c1 fd 03                                        	sar    ebp,0x3
  c413fd:	0f 84 8b 00 00 00                               	je     0xc4148e
  c41403:	83 7b 04 00                                     	cmp    DWORD PTR [ebx+0x4],0x0
  c41407:	0f 84 81 00 00 00                               	je     0xc4148e
  c4140d:	56                                              	push   esi
  c4140e:	33 f6                                           	xor    esi,esi
  c41410:	85 ed                                           	test   ebp,ebp
  c41412:	76 56                                           	jbe    0xc4146a
  c41414:	57                                              	push   edi
  c41415:	8b 43 4c                                        	mov    eax,DWORD PTR [ebx+0x4c]
  c41418:	6a 18                                           	push   0x18
  c4141a:	8d 3c f0                                        	lea    edi,[eax+esi*8]
  c4141d:	e8 2e dd e9 ff                                  	call   0xadf150
  c41422:	83 c4 04                                        	add    esp,0x4
  c41425:	85 c0                                           	test   eax,eax
  c41427:	74 15                                           	je     0xc4143e
  c41429:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  c4142f:	33 c9                                           	xor    ecx,ecx
  c41431:	8d 50 04                                        	lea    edx,[eax+0x4]
  c41434:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  c41436:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  c4143c:	eb 02                                           	jmp    0xc41440
  c4143e:	33 c0                                           	xor    eax,eax
  c41440:	8b 4b 08                                        	mov    ecx,DWORD PTR [ebx+0x8]
  c41443:	8b 51 48                                        	mov    edx,DWORD PTR [ecx+0x48]
  c41446:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  c41449:	8b 49 4c                                        	mov    ecx,DWORD PTR [ecx+0x4c]
  c4144c:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  c4144f:	0f bf 57 04                                     	movsx  edx,WORD PTR [edi+0x4]
  c41453:	50                                              	push   eax
  c41454:	89 50 10                                        	mov    DWORD PTR [eax+0x10],edx
  c41457:	8b 07                                           	mov    eax,DWORD PTR [edi]
  c41459:	50                                              	push   eax
  c4145a:	e8 b1 1d b9 ff                                  	call   0x7d3210
  c4145f:	83 c6 01                                        	add    esi,0x1
  c41462:	83 c4 08                                        	add    esp,0x8
  c41465:	3b f5                                           	cmp    esi,ebp
  c41467:	72 ac                                           	jb     0xc41415
  c41469:	5f                                              	pop    edi
  c4146a:	8b 4b 4c                                        	mov    ecx,DWORD PTR [ebx+0x4c]
  c4146d:	89 4b 50                                        	mov    DWORD PTR [ebx+0x50],ecx
  c41470:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  c41473:	83 7a 0c 00                                     	cmp    DWORD PTR [edx+0xc],0x0
  c41477:	5e                                              	pop    esi
  c41478:	75 14                                           	jne    0xc4148e
  c4147a:	8b 43 08                                        	mov    eax,DWORD PTR [ebx+0x8]
  c4147d:	8b 80 98 02 00 00                               	mov    eax,DWORD PTR [eax+0x298]
  c41483:	85 c0                                           	test   eax,eax
  c41485:	74 07                                           	je     0xc4148e
  c41487:	c6 80 f4 01 00 00 01                            	mov    BYTE PTR [eax+0x1f4],0x1
  c4148e:	5d                                              	pop    ebp
  c4148f:	5b                                              	pop    ebx
  c41490:	c3                                              	ret

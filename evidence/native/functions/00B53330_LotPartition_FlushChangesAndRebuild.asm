# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00b53330 LotPartition_FlushChangesAndRebuild
# Complete Ghidra body [00b53330, 00b53497] inclusive: 119 body instructions, 360 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 360 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00B53330_LotPartition_FlushChangesAndRebuild.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b53330 <.text+0x752330>:
  b53330:	83 ec 14                                        	sub    esp,0x14
  b53333:	53                                              	push   ebx
  b53334:	55                                              	push   ebp
  b53335:	56                                              	push   esi
  b53336:	8b f1                                           	mov    esi,ecx
  b53338:	8b 4e 54                                        	mov    ecx,DWORD PTR [esi+0x54]
  b5333b:	57                                              	push   edi
  b5333c:	e8 af e0 0e 00                                  	call   0xc413f0
  b53341:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  b53344:	e8 a7 e0 0e 00                                  	call   0xc413f0
  b53349:	8b 4e 5c                                        	mov    ecx,DWORD PTR [esi+0x5c]
  b5334c:	e8 9f e0 0e 00                                  	call   0xc413f0
  b53351:	8b 4e 68                                        	mov    ecx,DWORD PTR [esi+0x68]
  b53354:	e8 97 e0 0e 00                                  	call   0xc413f0
  b53359:	8d 5e 44                                        	lea    ebx,[esi+0x44]
  b5335c:	8b fb                                           	mov    edi,ebx
  b5335e:	bd 04 00 00 00                                  	mov    ebp,0x4
  b53363:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  b53365:	85 c9                                           	test   ecx,ecx
  b53367:	74 05                                           	je     0xb5336e
  b53369:	e8 32 38 0b 00                                  	call   0xc06ba0
  b5336e:	83 c7 04                                        	add    edi,0x4
  b53371:	83 ed 01                                        	sub    ebp,0x1
  b53374:	75 ed                                           	jne    0xb53363
  b53376:	e8 75 91 8f ff                                  	call   0x44c4f0
  b5337b:	6a 10                                           	push   0x10
  b5337d:	8b f8                                           	mov    edi,eax
  b5337f:	e8 cc bd f8 ff                                  	call   0xadf150
  b53384:	83 c4 04                                        	add    esp,0x4
  b53387:	3b c5                                           	cmp    eax,ebp
  b53389:	74 15                                           	je     0xb533a0
  b5338b:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  b53391:	33 c9                                           	xor    ecx,ecx
  b53393:	8d 50 04                                        	lea    edx,[eax+0x4]
  b53396:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  b53398:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  b5339e:	eb 02                                           	jmp    0xb533a2
  b533a0:	33 c0                                           	xor    eax,eax
  b533a2:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  b533a5:	8b 51 48                                        	mov    edx,DWORD PTR [ecx+0x48]
  b533a8:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  b533ab:	8b 49 4c                                        	mov    ecx,DWORD PTR [ecx+0x4c]
  b533ae:	55                                              	push   ebp
  b533af:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  b533b2:	8b 17                                           	mov    edx,DWORD PTR [edi]
  b533b4:	55                                              	push   ebp
  b533b5:	50                                              	push   eax
  b533b6:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  b533b9:	68 9a 86 7e 04                                  	push   0x47e869a
  b533be:	8b cf                                           	mov    ecx,edi
  b533c0:	ff d0                                           	call   eax
  b533c2:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  b533c5:	8b 89 b4 02 00 00                               	mov    ecx,DWORD PTR [ecx+0x2b4]
  b533cb:	e8 c0 86 fc ff                                  	call   0xb1ba90
  b533d0:	8b ce                                           	mov    ecx,esi
  b533d2:	e8 79 a0 ff ff                                  	call   0xb4d450
  b533d7:	8b ce                                           	mov    ecx,esi
  b533d9:	e8 02 9f ff ff                                  	call   0xb4d2e0
  b533de:	55                                              	push   ebp
  b533df:	8b ce                                           	mov    ecx,esi
  b533e1:	e8 3a f6 ff ff                                  	call   0xb52a20
  b533e6:	55                                              	push   ebp
  b533e7:	8b ce                                           	mov    ecx,esi
  b533e9:	e8 72 f4 ff ff                                  	call   0xb52860
  b533ee:	55                                              	push   ebp
  b533ef:	8b ce                                           	mov    ecx,esi
  b533f1:	e8 4a f8 ff ff                                  	call   0xb52c40
  b533f6:	8b 0b                                           	mov    ecx,DWORD PTR [ebx]
  b533f8:	3b cd                                           	cmp    ecx,ebp
  b533fa:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  b533fe:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
  b53402:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
  b53406:	c7 44 24 1c 50 e3 06 01                         	mov    DWORD PTR [esp+0x1c],0x106e350
  b5340e:	74 0c                                           	je     0xb5341c
  b53410:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  b53414:	52                                              	push   edx
  b53415:	6a 01                                           	push   0x1
  b53417:	e8 f4 3b 0b 00                                  	call   0xc07010
  b5341c:	8d be e4 00 00 00                               	lea    edi,[esi+0xe4]
  b53422:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  b53426:	57                                              	push   edi
  b53427:	50                                              	push   eax
  b53428:	e8 43 51 ff ff                                  	call   0xb48570
  b5342d:	83 c4 08                                        	add    esp,0x8
  b53430:	84 c0                                           	test   al,al
  b53432:	75 0c                                           	jne    0xb53440
  b53434:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  b53438:	51                                              	push   ecx
  b53439:	8b cf                                           	mov    ecx,edi
  b5343b:	e8 70 ff a7 ff                                  	call   0x5d33b0
  b53440:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  b53444:	3b c5                                           	cmp    eax,ebp
  b53446:	74 09                                           	je     0xb53451
  b53448:	50                                              	push   eax
  b53449:	e8 92 10 99 ff                                  	call   0x4e44e0
  b5344e:	83 c4 04                                        	add    esp,0x4
  b53451:	55                                              	push   ebp
  b53452:	8b ce                                           	mov    ecx,esi
  b53454:	e8 97 f9 ff ff                                  	call   0xb52df0
  b53459:	55                                              	push   ebp
  b5345a:	8b ce                                           	mov    ecx,esi
  b5345c:	e8 af fa ff ff                                  	call   0xb52f10
  b53461:	55                                              	push   ebp
  b53462:	8b ce                                           	mov    ecx,esi
  b53464:	e8 f7 b9 ff ff                                  	call   0xb4ee60
  b53469:	55                                              	push   ebp
  b5346a:	8b ce                                           	mov    ecx,esi
  b5346c:	e8 3f d3 ff ff                                  	call   0xb507b0
  b53471:	c6 86 f4 01 00 00 00                            	mov    BYTE PTR [esi+0x1f4],0x0
  b53478:	5f                                              	pop    edi
  b53479:	89 ae f8 01 00 00                               	mov    DWORD PTR [esi+0x1f8],ebp
  b5347f:	89 ae fc 01 00 00                               	mov    DWORD PTR [esi+0x1fc],ebp
  b53485:	89 ae 00 02 00 00                               	mov    DWORD PTR [esi+0x200],ebp
  b5348b:	89 ae 04 02 00 00                               	mov    DWORD PTR [esi+0x204],ebp
  b53491:	5e                                              	pop    esi
  b53492:	5d                                              	pop    ebp
  b53493:	5b                                              	pop    ebx
  b53494:	83 c4 14                                        	add    esp,0x14
  b53497:	c3                                              	ret

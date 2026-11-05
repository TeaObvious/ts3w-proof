# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x005364c0 WinScrollbar_OnUpdate
# Complete Ghidra body [005364c0, 00536744] inclusive; 187 instructions, 645 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 005364C0_WinScrollbar_OnUpdate.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

005364c0 <.text+0x1354c0>:
  5364c0:	83 ec 08                                        	sub    esp,0x8
  5364c3:	53                                              	push   ebx
  5364c4:	55                                              	push   ebp
  5364c5:	56                                              	push   esi
  5364c6:	8b f1                                           	mov    esi,ecx
  5364c8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5364ca:	8b 90 a0 00 00 00                               	mov    edx,DWORD PTR [eax+0xa0]
  5364d0:	57                                              	push   edi
  5364d1:	ff d2                                           	call   edx
  5364d3:	8b 86 98 02 00 00                               	mov    eax,DWORD PTR [esi+0x298]
  5364d9:	0b 86 9c 02 00 00                               	or     eax,DWORD PTR [esi+0x29c]
  5364df:	8d ae 98 02 00 00                               	lea    ebp,[esi+0x298]
  5364e5:	0f 84 27 02 00 00                               	je     0x536712
  5364eb:	8b 86 90 02 00 00                               	mov    eax,DWORD PTR [esi+0x290]
  5364f1:	a8 01                                           	test   al,0x1
  5364f3:	0f 84 b3 00 00 00                               	je     0x5365ac
  5364f9:	8a 8e 85 02 00 00                               	mov    cl,BYTE PTR [esi+0x285]
  5364ff:	80 f9 01                                        	cmp    cl,0x1
  536502:	74 09                                           	je     0x53650d
  536504:	80 f9 06                                        	cmp    cl,0x6
  536507:	0f 85 9f 00 00 00                               	jne    0x5365ac
  53650d:	8b cd                                           	mov    ecx,ebp
  53650f:	e8 ac d2 fb ff                                  	call   0x4f37c0
  536514:	da 8e 74 02 00 00                               	fimul  DWORD PTR [esi+0x274]
  53651a:	d8 0d b4 35 fb 00                               	fmul   DWORD PTR ds:0xfb35b4
  536520:	d9 54 24 10                                     	fst    DWORD PTR [esp+0x10]
  536524:	d9 e8                                           	fld1
  536526:	df f1                                           	fcomip st,st(1)
  536528:	dd d8                                           	fstp   st(0)
  53652a:	0f 87 0b 02 00 00                               	ja     0x53673b
  536530:	8a 86 85 02 00 00                               	mov    al,BYTE PTR [esi+0x285]
  536536:	3a 86 84 02 00 00                               	cmp    al,BYTE PTR [esi+0x284]
  53653c:	75 51                                           	jne    0x53658f
  53653e:	0f b6 c0                                        	movzx  eax,al
  536541:	83 e8 01                                        	sub    eax,0x1
  536544:	74 27                                           	je     0x53656d
  536546:	83 e8 05                                        	sub    eax,0x5
  536549:	75 44                                           	jne    0x53658f
  53654b:	f3 0f 2c 44 24 10                               	cvttss2si eax,DWORD PTR [esp+0x10]
  536551:	03 86 54 02 00 00                               	add    eax,DWORD PTR [esi+0x254]
  536557:	8b 96 50 02 00 00                               	mov    edx,DWORD PTR [esi+0x250]
  53655d:	8b 52 28                                        	mov    edx,DWORD PTR [edx+0x28]
  536560:	8d 8e 50 02 00 00                               	lea    ecx,[esi+0x250]
  536566:	6a 01                                           	push   0x1
  536568:	50                                              	push   eax
  536569:	ff d2                                           	call   edx
  53656b:	eb 22                                           	jmp    0x53658f
  53656d:	8b be 54 02 00 00                               	mov    edi,DWORD PTR [esi+0x254]
  536573:	f3 0f 2c 54 24 10                               	cvttss2si edx,DWORD PTR [esp+0x10]
  536579:	8b 86 50 02 00 00                               	mov    eax,DWORD PTR [esi+0x250]
  53657f:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
  536582:	8d 8e 50 02 00 00                               	lea    ecx,[esi+0x250]
  536588:	6a 01                                           	push   0x1
  53658a:	2b fa                                           	sub    edi,edx
  53658c:	57                                              	push   edi
  53658d:	ff d0                                           	call   eax
  53658f:	8b 8e 54 02 00 00                               	mov    ecx,DWORD PTR [esi+0x254]
  536595:	89 8e 60 02 00 00                               	mov    DWORD PTR [esi+0x260],ecx
  53659b:	8b cd                                           	mov    ecx,ebp
  53659d:	e8 ee d2 fa ff                                  	call   0x4e3890
  5365a2:	5f                                              	pop    edi
  5365a3:	5e                                              	pop    esi
  5365a4:	5d                                              	pop    ebp
  5365a5:	b0 01                                           	mov    al,0x1
  5365a7:	5b                                              	pop    ebx
  5365a8:	83 c4 08                                        	add    esp,0x8
  5365ab:	c3                                              	ret
  5365ac:	b3 02                                           	mov    bl,0x2
  5365ae:	84 c3                                           	test   bl,al
  5365b0:	0f 84 b7 00 00 00                               	je     0x53666d
  5365b6:	8b cd                                           	mov    ecx,ebp
  5365b8:	e8 03 d1 fb ff                                  	call   0x4f36c0
  5365bd:	85 d2                                           	test   edx,edx
  5365bf:	77 07                                           	ja     0x5365c8
  5365c1:	3d 96 00 00 00                                  	cmp    eax,0x96
  5365c6:	72 5c                                           	jb     0x536624
  5365c8:	8b 96 50 02 00 00                               	mov    edx,DWORD PTR [esi+0x250]
  5365ce:	8b 86 5c 02 00 00                               	mov    eax,DWORD PTR [esi+0x25c]
  5365d4:	8b 52 28                                        	mov    edx,DWORD PTR [edx+0x28]
  5365d7:	8d 8e 50 02 00 00                               	lea    ecx,[esi+0x250]
  5365dd:	6a 01                                           	push   0x1
  5365df:	50                                              	push   eax
  5365e0:	ff d2                                           	call   edx
  5365e2:	80 be 85 02 00 00 ff                            	cmp    BYTE PTR [esi+0x285],0xff
  5365e9:	8b 86 5c 02 00 00                               	mov    eax,DWORD PTR [esi+0x25c]
  5365ef:	89 86 60 02 00 00                               	mov    DWORD PTR [esi+0x260],eax
  5365f5:	75 76                                           	jne    0x53666d
  5365f7:	8b cd                                           	mov    ecx,ebp
  5365f9:	e8 22 d0 fb ff                                  	call   0x4f3620
  5365fe:	80 be 8c 02 00 00 00                            	cmp    BYTE PTR [esi+0x28c],0x0
  536605:	0f 85 30 01 00 00                               	jne    0x53673b
  53660b:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  53660e:	8b 42 74                                        	mov    eax,DWORD PTR [edx+0x74]
  536611:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  536614:	6a 00                                           	push   0x0
  536616:	6a 08                                           	push   0x8
  536618:	ff d0                                           	call   eax
  53661a:	5f                                              	pop    edi
  53661b:	5e                                              	pop    esi
  53661c:	5d                                              	pop    ebp
  53661d:	b0 01                                           	mov    al,0x1
  53661f:	5b                                              	pop    ebx
  536620:	83 c4 08                                        	add    esp,0x8
  536623:	c3                                              	ret
  536624:	8b be 60 02 00 00                               	mov    edi,DWORD PTR [esi+0x260]
  53662a:	8b cd                                           	mov    ecx,ebp
  53662c:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  536630:	e8 8b d1 fb ff                                  	call   0x4f37c0
  536635:	d8 0d ac f9 fb 00                               	fmul   DWORD PTR ds:0xfbf9ac
  53663b:	8b 8e 5c 02 00 00                               	mov    ecx,DWORD PTR [esi+0x25c]
  536641:	8b 96 50 02 00 00                               	mov    edx,DWORD PTR [esi+0x250]
  536647:	8b 52 28                                        	mov    edx,DWORD PTR [edx+0x28]
  53664a:	2b cf                                           	sub    ecx,edi
  53664c:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  536650:	da 4c 24 10                                     	fimul  DWORD PTR [esp+0x10]
  536654:	8d 8e 50 02 00 00                               	lea    ecx,[esi+0x250]
  53665a:	6a 01                                           	push   0x1
  53665c:	da 44 24 18                                     	fiadd  DWORD PTR [esp+0x18]
  536660:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  536664:	f3 0f 2c 44 24 18                               	cvttss2si eax,DWORD PTR [esp+0x18]
  53666a:	50                                              	push   eax
  53666b:	ff d2                                           	call   edx
  53666d:	8b cd                                           	mov    ecx,ebp
  53666f:	e8 4c d0 fb ff                                  	call   0x4f36c0
  536674:	85 d2                                           	test   edx,edx
  536676:	77 0b                                           	ja     0x536683
  536678:	3d 96 00 00 00                                  	cmp    eax,0x96
  53667d:	0f 86 b8 00 00 00                               	jbe    0x53673b
  536683:	8a 86 85 02 00 00                               	mov    al,BYTE PTR [esi+0x285]
  536689:	3a 86 84 02 00 00                               	cmp    al,BYTE PTR [esi+0x284]
  53668f:	75 70                                           	jne    0x536701
  536691:	0f b6 c0                                        	movzx  eax,al
  536694:	83 c0 ff                                        	add    eax,0xffffffff
  536697:	83 f8 05                                        	cmp    eax,0x5
  53669a:	77 65                                           	ja     0x536701
  53669c:	ff 24 85 48 67 53 00                            	jmp    DWORD PTR [eax*4+0x536748]
  5366a3:	8b 8e 54 02 00 00                               	mov    ecx,DWORD PTR [esi+0x254]
  5366a9:	2b 8e 78 02 00 00                               	sub    ecx,DWORD PTR [esi+0x278]
  5366af:	eb 22                                           	jmp    0x5366d3
  5366b1:	8b 8e 78 02 00 00                               	mov    ecx,DWORD PTR [esi+0x278]
  5366b7:	eb 14                                           	jmp    0x5366cd
  5366b9:	8b 8e 54 02 00 00                               	mov    ecx,DWORD PTR [esi+0x254]
  5366bf:	2b 8e 74 02 00 00                               	sub    ecx,DWORD PTR [esi+0x274]
  5366c5:	eb 0c                                           	jmp    0x5366d3
  5366c7:	8b 8e 74 02 00 00                               	mov    ecx,DWORD PTR [esi+0x274]
  5366cd:	03 8e 54 02 00 00                               	add    ecx,DWORD PTR [esi+0x254]
  5366d3:	8b 86 50 02 00 00                               	mov    eax,DWORD PTR [esi+0x250]
  5366d9:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  5366dc:	8d be 50 02 00 00                               	lea    edi,[esi+0x250]
  5366e2:	51                                              	push   ecx
  5366e3:	8b cf                                           	mov    ecx,edi
  5366e5:	ff d2                                           	call   edx
  5366e7:	84 9e 90 02 00 00                               	test   BYTE PTR [esi+0x290],bl
  5366ed:	75 12                                           	jne    0x536701
  5366ef:	8b 8e 5c 02 00 00                               	mov    ecx,DWORD PTR [esi+0x25c]
  5366f5:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5366f7:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  5366fa:	6a 01                                           	push   0x1
  5366fc:	51                                              	push   ecx
  5366fd:	8b cf                                           	mov    ecx,edi
  5366ff:	ff d2                                           	call   edx
  536701:	8b cd                                           	mov    ecx,ebp
  536703:	e8 88 d1 fa ff                                  	call   0x4e3890
  536708:	5f                                              	pop    edi
  536709:	5e                                              	pop    esi
  53670a:	5d                                              	pop    ebp
  53670b:	b0 01                                           	mov    al,0x1
  53670d:	5b                                              	pop    ebx
  53670e:	83 c4 08                                        	add    esp,0x8
  536711:	c3                                              	ret
  536712:	8b 86 5c 02 00 00                               	mov    eax,DWORD PTR [esi+0x25c]
  536718:	39 86 54 02 00 00                               	cmp    DWORD PTR [esi+0x254],eax
  53671e:	74 1b                                           	je     0x53673b
  536720:	f6 86 90 02 00 00 02                            	test   BYTE PTR [esi+0x290],0x2
  536727:	74 12                                           	je     0x53673b
  536729:	8b 96 50 02 00 00                               	mov    edx,DWORD PTR [esi+0x250]
  53672f:	8d 8e 50 02 00 00                               	lea    ecx,[esi+0x250]
  536735:	50                                              	push   eax
  536736:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  536739:	ff d0                                           	call   eax
  53673b:	5f                                              	pop    edi
  53673c:	5e                                              	pop    esi
  53673d:	5d                                              	pop    ebp
  53673e:	b0 01                                           	mov    al,0x1
  536740:	5b                                              	pop    ebx
  536741:	83 c4 08                                        	add    esp,0x8
  536744:	c3                                              	ret

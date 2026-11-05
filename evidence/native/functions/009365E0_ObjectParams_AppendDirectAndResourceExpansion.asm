# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009365e0,0x009367c6); analyst name ObjectParams_AppendDirectAndResourceExpansion.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

009365e0 <.text+0x5355e0>:
  9365e0:	83 ec 18             	sub    esp,0x18
  9365e3:	53                   	push   ebx
  9365e4:	55                   	push   ebp
  9365e5:	8b 6c 24 24          	mov    ebp,DWORD PTR [esp+0x24]
  9365e9:	56                   	push   esi
  9365ea:	8b f1                	mov    esi,ecx
  9365ec:	55                   	push   ebp
  9365ed:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  9365f1:	e8 0a fc ff ff       	call   0x936200
  9365f6:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  9365f9:	2b 46 2c             	sub    eax,DWORD PTR [esi+0x2c]
  9365fc:	33 db                	xor    ebx,ebx
  9365fe:	c1 f8 06             	sar    eax,0x6
  936601:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  936605:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  936609:	0f 84 ae 01 00 00    	je     0x9367bd
  93660f:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  936613:	57                   	push   edi
  936614:	8b 7e 2c             	mov    edi,DWORD PTR [esi+0x2c]
  936617:	03 7c 24 10          	add    edi,DWORD PTR [esp+0x10]
  93661b:	80 7f 3c 02          	cmp    BYTE PTR [edi+0x3c],0x2
  93661f:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  936623:	0f 85 4d 01 00 00    	jne    0x936776
  936629:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  93662d:	e8 4e 98 b7 ff       	call   0x4afe80
  936632:	8b f0                	mov    esi,eax
  936634:	3b f3                	cmp    esi,ebx
  936636:	0f 84 71 01 00 00    	je     0x9367ad
  93663c:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  936640:	3b cb                	cmp    ecx,ebx
  936642:	74 0b                	je     0x93664f
  936644:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  936648:	8b 01                	mov    eax,DWORD PTR [ecx]
  93664a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  93664d:	ff d2                	call   edx
  93664f:	8b 06                	mov    eax,DWORD PTR [esi]
  936651:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  936654:	53                   	push   ebx
  936655:	53                   	push   ebx
  936656:	53                   	push   ebx
  936657:	53                   	push   ebx
  936658:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  93665c:	51                   	push   ecx
  93665d:	83 c7 28             	add    edi,0x28
  936660:	57                   	push   edi
  936661:	8b ce                	mov    ecx,esi
  936663:	ff d2                	call   edx
  936665:	84 c0                	test   al,al
  936667:	0f 84 40 01 00 00    	je     0x9367ad
  93666d:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  936671:	3b cb                	cmp    ecx,ebx
  936673:	74 1e                	je     0x936693
  936675:	8b 01                	mov    eax,DWORD PTR [ecx]
  936677:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  93667a:	68 af ba b8 b7       	push   0xb7b8baaf
  93667f:	ff d2                	call   edx
  936681:	8b d8                	mov    ebx,eax
  936683:	85 db                	test   ebx,ebx
  936685:	74 08                	je     0x93668f
  936687:	8b 03                	mov    eax,DWORD PTR [ebx]
  936689:	8b 10                	mov    edx,DWORD PTR [eax]
  93668b:	8b cb                	mov    ecx,ebx
  93668d:	ff d2                	call   edx
  93668f:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  936693:	8d 7b 28             	lea    edi,[ebx+0x28]
  936696:	85 ff                	test   edi,edi
  936698:	0f 84 fa 00 00 00    	je     0x936798
  93669e:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  9366a1:	2b 0f                	sub    ecx,DWORD PTR [edi]
  9366a3:	b8 67 66 66 66       	mov    eax,0x66666667
  9366a8:	f7 e9                	imul   ecx
  9366aa:	c1 fa 03             	sar    edx,0x3
  9366ad:	8b c2                	mov    eax,edx
  9366af:	c1 e8 1f             	shr    eax,0x1f
  9366b2:	03 c2                	add    eax,edx
  9366b4:	0f 84 7b 00 00 00    	je     0x936735
  9366ba:	33 f6                	xor    esi,esi
  9366bc:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  9366c0:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  9366c4:	81 39 29 f6 e5 a6    	cmp    DWORD PTR [ecx],0xa6e5f629
  9366ca:	8b 07                	mov    eax,DWORD PTR [edi]
  9366cc:	8b 44 06 04          	mov    eax,DWORD PTR [esi+eax*1+0x4]
  9366d0:	75 11                	jne    0x9366e3
  9366d2:	81 78 08 33 12 66 01 	cmp    DWORD PTR [eax+0x8],0x1661233
  9366d9:	75 08                	jne    0x9366e3
  9366db:	50                   	push   eax
  9366dc:	68 29 f6 e5 a6       	push   0xa6e5f629
  9366e1:	eb 41                	jmp    0x936724
  9366e3:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  9366e6:	81 f9 de 13 af 8e    	cmp    ecx,0x8eaf13de
  9366ec:	75 08                	jne    0x9366f6
  9366ee:	50                   	push   eax
  9366ef:	68 4a 53 15 84       	push   0x8415534a
  9366f4:	eb 2e                	jmp    0x936724
  9366f6:	81 f9 1d c6 b4 03    	cmp    ecx,0x3b4c61d
  9366fc:	75 08                	jne    0x936706
  9366fe:	50                   	push   eax
  9366ff:	68 b2 e9 c7 9c       	push   0x9cc7e9b2
  936704:	eb 1e                	jmp    0x936724
  936706:	81 f9 21 45 04 d3    	cmp    ecx,0xd3044521
  93670c:	75 08                	jne    0x936716
  93670e:	50                   	push   eax
  93670f:	68 0e 3b 2a 9e       	push   0x9e2a3b0e
  936714:	eb 0e                	jmp    0x936724
  936716:	81 f9 57 bf 82 d3    	cmp    ecx,0xd382bf57
  93671c:	75 0d                	jne    0x93672b
  93671e:	50                   	push   eax
  93671f:	68 07 89 0f ff       	push   0xff0f8907
  936724:	8b cd                	mov    ecx,ebp
  936726:	e8 35 39 00 00       	call   0x93a060
  93672b:	83 c6 14             	add    esi,0x14
  93672e:	83 6c 24 14 01       	sub    DWORD PTR [esp+0x14],0x1
  936733:	75 8b                	jne    0x9366c0
  936735:	8b cb                	mov    ecx,ebx
  936737:	e8 34 4f 00 00       	call   0x93b670
  93673c:	84 c0                	test   al,al
  93673e:	74 10                	je     0x936750
  936740:	8d 53 50             	lea    edx,[ebx+0x50]
  936743:	52                   	push   edx
  936744:	68 06 ed 9c 38       	push   0x389ced06
  936749:	8b cd                	mov    ecx,ebp
  93674b:	e8 10 39 00 00       	call   0x93a060
  936750:	85 db                	test   ebx,ebx
  936752:	74 09                	je     0x93675d
  936754:	8b 03                	mov    eax,DWORD PTR [ebx]
  936756:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  936759:	8b cb                	mov    ecx,ebx
  93675b:	ff d2                	call   edx
  93675d:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  936761:	85 c9                	test   ecx,ecx
  936763:	74 07                	je     0x93676c
  936765:	8b 01                	mov    eax,DWORD PTR [ecx]
  936767:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  93676a:	ff d2                	call   edx
  93676c:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  936770:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  936774:	33 db                	xor    ebx,ebx
  936776:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  93677a:	83 44 24 10 40       	add    DWORD PTR [esp+0x10],0x40
  93677f:	83 c1 01             	add    ecx,0x1
  936782:	3b c8                	cmp    ecx,eax
  936784:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  936788:	0f 82 86 fe ff ff    	jb     0x936614
  93678e:	5f                   	pop    edi
  93678f:	5e                   	pop    esi
  936790:	5d                   	pop    ebp
  936791:	5b                   	pop    ebx
  936792:	83 c4 18             	add    esp,0x18
  936795:	c2 04 00             	ret    0x4
  936798:	85 db                	test   ebx,ebx
  93679a:	74 0d                	je     0x9367a9
  93679c:	8b 03                	mov    eax,DWORD PTR [ebx]
  93679e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9367a1:	8b cb                	mov    ecx,ebx
  9367a3:	ff d2                	call   edx
  9367a5:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  9367a9:	85 c9                	test   ecx,ecx
  9367ab:	eb 06                	jmp    0x9367b3
  9367ad:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  9367b1:	3b cb                	cmp    ecx,ebx
  9367b3:	74 07                	je     0x9367bc
  9367b5:	8b 01                	mov    eax,DWORD PTR [ecx]
  9367b7:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9367ba:	ff d2                	call   edx
  9367bc:	5f                   	pop    edi
  9367bd:	5e                   	pop    esi
  9367be:	5d                   	pop    ebp
  9367bf:	5b                   	pop    ebx
  9367c0:	83 c4 18             	add    esp,0x18
  9367c3:	c2 04 00             	ret    0x4

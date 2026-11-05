# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0065e520, 0x00661fa0); analyst name RouteGraph_PlanAcrossLotsAndRegions.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0065e520 <.text+0x25d520>:
  65e520:	55                   	push   ebp
  65e521:	8b ec                	mov    ebp,esp
  65e523:	83 e4 f0             	and    esp,0xfffffff0
  65e526:	81 ec 64 03 00 00    	sub    esp,0x364
  65e52c:	53                   	push   ebx
  65e52d:	56                   	push   esi
  65e52e:	57                   	push   edi
  65e52f:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  65e532:	8b 07                	mov    eax,DWORD PTR [edi]
  65e534:	d9 00                	fld    DWORD PTR [eax]
  65e536:	83 ec 08             	sub    esp,0x8
  65e539:	d9 54 24 50          	fst    DWORD PTR [esp+0x50]
  65e53d:	8b d9                	mov    ebx,ecx
  65e53f:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  65e542:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  65e545:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65e548:	d9 54 24 54          	fst    DWORD PTR [esp+0x54]
  65e54c:	d9 00                	fld    DWORD PTR [eax]
  65e54e:	d9 5c 24 28          	fstp   DWORD PTR [esp+0x28]
  65e552:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  65e555:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
  65e559:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e55d:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e560:	e8 6b a2 60 00       	call   0xc687d0
  65e565:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  65e569:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65e56c:	83 ec 08             	sub    esp,0x8
  65e56f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e573:	8b f0                	mov    esi,eax
  65e575:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  65e579:	89 74 24 58          	mov    DWORD PTR [esp+0x58],esi
  65e57d:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e580:	e8 4b a2 60 00       	call   0xc687d0
  65e585:	85 f6                	test   esi,esi
  65e587:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  65e58b:	74 44                	je     0x65e5d1
  65e58d:	83 be 08 04 00 00 01 	cmp    DWORD PTR [esi+0x408],0x1
  65e594:	75 3b                	jne    0x65e5d1
  65e596:	83 be 0c 04 00 00 50 	cmp    DWORD PTR [esi+0x40c],0x50
  65e59d:	75 32                	jne    0x65e5d1
  65e59f:	8b 07                	mov    eax,DWORD PTR [edi]
  65e5a1:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
  65e5a5:	75 2a                	jne    0x65e5d1
  65e5a7:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  65e5ab:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65e5ae:	6a 01                	push   0x1
  65e5b0:	6a 00                	push   0x0
  65e5b2:	6a 00                	push   0x0
  65e5b4:	6a 00                	push   0x0
  65e5b6:	6a 00                	push   0x0
  65e5b8:	6a 01                	push   0x1
  65e5ba:	6a 00                	push   0x0
  65e5bc:	83 ec 08             	sub    esp,0x8
  65e5bf:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e5c3:	d9 44 24 6c          	fld    DWORD PTR [esp+0x6c]
  65e5c7:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e5ca:	e8 c1 ba 60 00       	call   0xc6a090
  65e5cf:	eb 30                	jmp    0x65e601
  65e5d1:	8b 3f                	mov    edi,DWORD PTR [edi]
  65e5d3:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  65e5d7:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  65e5da:	6a 01                	push   0x1
  65e5dc:	6a 00                	push   0x0
  65e5de:	6a 00                	push   0x0
  65e5e0:	6a 00                	push   0x0
  65e5e2:	6a 00                	push   0x0
  65e5e4:	6a 00                	push   0x0
  65e5e6:	6a 00                	push   0x0
  65e5e8:	6a 01                	push   0x1
  65e5ea:	51                   	push   ecx
  65e5eb:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65e5ee:	83 ec 08             	sub    esp,0x8
  65e5f1:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e5f5:	d9 44 24 74          	fld    DWORD PTR [esp+0x74]
  65e5f9:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e5fc:	e8 7f bd 60 00       	call   0xc6a380
  65e601:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  65e605:	d9 9c 24 a4 00 00 00 	fstp   DWORD PTR [esp+0xa4]
  65e60c:	85 c0                	test   eax,eax
  65e60e:	74 45                	je     0x65e655
  65e610:	83 b8 08 04 00 00 01 	cmp    DWORD PTR [eax+0x408],0x1
  65e617:	75 3c                	jne    0x65e655
  65e619:	83 b8 0c 04 00 00 50 	cmp    DWORD PTR [eax+0x40c],0x50
  65e620:	75 33                	jne    0x65e655
  65e622:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  65e625:	83 7a 08 00          	cmp    DWORD PTR [edx+0x8],0x0
  65e629:	75 2a                	jne    0x65e655
  65e62b:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  65e62f:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65e632:	6a 01                	push   0x1
  65e634:	6a 00                	push   0x0
  65e636:	6a 00                	push   0x0
  65e638:	6a 00                	push   0x0
  65e63a:	6a 00                	push   0x0
  65e63c:	6a 01                	push   0x1
  65e63e:	6a 00                	push   0x0
  65e640:	83 ec 08             	sub    esp,0x8
  65e643:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e647:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  65e64b:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e64e:	e8 3d ba 60 00       	call   0xc6a090
  65e653:	eb 31                	jmp    0x65e686
  65e655:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  65e658:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  65e65c:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  65e65f:	6a 01                	push   0x1
  65e661:	6a 00                	push   0x0
  65e663:	6a 00                	push   0x0
  65e665:	6a 00                	push   0x0
  65e667:	6a 00                	push   0x0
  65e669:	6a 00                	push   0x0
  65e66b:	6a 00                	push   0x0
  65e66d:	6a 01                	push   0x1
  65e66f:	51                   	push   ecx
  65e670:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65e673:	83 ec 08             	sub    esp,0x8
  65e676:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e67a:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  65e67e:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e681:	e8 fa bc 60 00       	call   0xc6a380
  65e686:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  65e689:	d9 9c 24 84 00 00 00 	fstp   DWORD PTR [esp+0x84]
  65e690:	85 c0                	test   eax,eax
  65e692:	c7 44 24 54 00 00 00 00 	mov    DWORD PTR [esp+0x54],0x0
  65e69a:	74 08                	je     0x65e6a4
  65e69c:	8b 10                	mov    edx,DWORD PTR [eax]
  65e69e:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  65e6a2:	eb 08                	jmp    0x65e6ac
  65e6a4:	c7 44 24 38 ff ff ff ff 	mov    DWORD PTR [esp+0x38],0xffffffff
  65e6ac:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  65e6af:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  65e6b2:	2b 0f                	sub    ecx,DWORD PTR [edi]
  65e6b4:	b8 93 24 49 92       	mov    eax,0x92492493
  65e6b9:	f7 e9                	imul   ecx
  65e6bb:	03 d1                	add    edx,ecx
  65e6bd:	c1 fa 04             	sar    edx,0x4
  65e6c0:	8b c2                	mov    eax,edx
  65e6c2:	c1 e8 1f             	shr    eax,0x1f
  65e6c5:	03 c2                	add    eax,edx
  65e6c7:	83 7d 2c 00          	cmp    DWORD PTR [ebp+0x2c],0x0
  65e6cb:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  65e6cf:	0f 84 83 00 00 00    	je     0x65e758
  65e6d5:	85 f6                	test   esi,esi
  65e6d7:	74 4f                	je     0x65e728
  65e6d9:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  65e6dc:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  65e6df:	89 8c 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ecx
  65e6e6:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  65e6e9:	89 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],eax
  65e6f0:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  65e6f3:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  65e6f6:	73 1f                	jae    0x65e717
  65e6f8:	85 c0                	test   eax,eax
  65e6fa:	8d 50 08             	lea    edx,[eax+0x8]
  65e6fd:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  65e700:	74 26                	je     0x65e728
  65e702:	8b 8c 24 90 00 00 00 	mov    ecx,DWORD PTR [esp+0x90]
  65e709:	8b 94 24 94 00 00 00 	mov    edx,DWORD PTR [esp+0x94]
  65e710:	89 08                	mov    DWORD PTR [eax],ecx
  65e712:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  65e715:	eb 11                	jmp    0x65e728
  65e717:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  65e71e:	51                   	push   ecx
  65e71f:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  65e722:	50                   	push   eax
  65e723:	e8 38 3c f1 ff       	call   0x572360
  65e728:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  65e72c:	85 c0                	test   eax,eax
  65e72e:	74 2c                	je     0x65e75c
  65e730:	3b c6                	cmp    eax,esi
  65e732:	74 54                	je     0x65e788
  65e734:	8b 50 48             	mov    edx,DWORD PTR [eax+0x48]
  65e737:	8b 40 4c             	mov    eax,DWORD PTR [eax+0x4c]
  65e73a:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  65e741:	51                   	push   ecx
  65e742:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  65e745:	89 94 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],edx
  65e74c:	89 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],eax
  65e753:	e8 a8 3d f1 ff       	call   0x572500
  65e758:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  65e75c:	3b f0                	cmp    esi,eax
  65e75e:	74 28                	je     0x65e788
  65e760:	85 f6                	test   esi,esi
  65e762:	74 09                	je     0x65e76d
  65e764:	80 be bc 04 00 00 00 	cmp    BYTE PTR [esi+0x4bc],0x0
  65e76b:	75 0d                	jne    0x65e77a
  65e76d:	85 c0                	test   eax,eax
  65e76f:	74 17                	je     0x65e788
  65e771:	80 b8 bc 04 00 00 00 	cmp    BYTE PTR [eax+0x4bc],0x0
  65e778:	74 0e                	je     0x65e788
  65e77a:	b8 08 00 00 00       	mov    eax,0x8
  65e77f:	5f                   	pop    edi
  65e780:	5e                   	pop    esi
  65e781:	5b                   	pop    ebx
  65e782:	8b e5                	mov    esp,ebp
  65e784:	5d                   	pop    ebp
  65e785:	c2 30 00             	ret    0x30
  65e788:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  65e78b:	85 c0                	test   eax,eax
  65e78d:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  65e791:	74 07                	je     0x65e79a
  65e793:	8b c8                	mov    ecx,eax
  65e795:	e8 86 74 fc ff       	call   0x625c20
  65e79a:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
  65e79d:	83 7a 0c 00          	cmp    DWORD PTR [edx+0xc],0x0
  65e7a1:	0f 84 0f 37 00 00    	je     0x661eb6
  65e7a7:	80 bb 88 00 00 00 00 	cmp    BYTE PTR [ebx+0x88],0x0
  65e7ae:	0f 84 02 37 00 00    	je     0x661eb6
  65e7b4:	85 f6                	test   esi,esi
  65e7b6:	c6 84 24 f8 00 00 00 00 	mov    BYTE PTR [esp+0xf8],0x0
  65e7be:	74 77                	je     0x65e837
  65e7c0:	3b 74 24 58          	cmp    esi,DWORD PTR [esp+0x58]
  65e7c4:	75 71                	jne    0x65e837
  65e7c6:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65e7c9:	85 c9                	test   ecx,ecx
  65e7cb:	0f 84 c8 02 00 00    	je     0x65ea99
  65e7d1:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  65e7d5:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  65e7d8:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  65e7dc:	8b 45 34             	mov    eax,DWORD PTR [ebp+0x34]
  65e7df:	8d 54 24 13          	lea    edx,[esp+0x13]
  65e7e3:	52                   	push   edx
  65e7e4:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  65e7e7:	50                   	push   eax
  65e7e8:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65e7eb:	52                   	push   edx
  65e7ec:	56                   	push   esi
  65e7ed:	50                   	push   eax
  65e7ee:	8d 54 24 54          	lea    edx,[esp+0x54]
  65e7f2:	52                   	push   edx
  65e7f3:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  65e7f6:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  65e7fa:	50                   	push   eax
  65e7fb:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  65e7fe:	52                   	push   edx
  65e7ff:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  65e802:	57                   	push   edi
  65e803:	51                   	push   ecx
  65e804:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e807:	50                   	push   eax
  65e808:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  65e80b:	52                   	push   edx
  65e80c:	50                   	push   eax
  65e80d:	c6 44 24 47 00       	mov    BYTE PTR [esp+0x47],0x0
  65e812:	e8 b9 30 fe ff       	call   0x6418d0
  65e817:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  65e81c:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  65e820:	0f 84 39 01 00 00    	je     0x65e95f
  65e826:	83 f8 05             	cmp    eax,0x5
  65e829:	0f 85 30 01 00 00    	jne    0x65e95f
  65e82f:	c6 84 24 f8 00 00 00 01 	mov    BYTE PTR [esp+0xf8],0x1
  65e837:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  65e83d:	f3 0f 5c 4c 24 48    	subss  xmm1,DWORD PTR [esp+0x48]
  65e843:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  65e849:	f3 0f 5c 44 24 4c    	subss  xmm0,DWORD PTR [esp+0x4c]
  65e84f:	0f 28 d1             	movaps xmm2,xmm1
  65e852:	f3 0f 59 d1          	mulss  xmm2,xmm1
  65e856:	0f 28 c8             	movaps xmm1,xmm0
  65e859:	f3 0f 59 c8          	mulss  xmm1,xmm0
  65e85d:	f3 0f 10 05 08 e5 fe 00 	movss  xmm0,DWORD PTR ds:0xfee508
  65e865:	f3 0f 58 d1          	addss  xmm2,xmm1
  65e869:	0f 2f c2             	comiss xmm0,xmm2
  65e86c:	0f 86 fd 03 00 00    	jbe    0x65ec6f
  65e872:	f7 45 28 80 02 00 c1 	test   DWORD PTR [ebp+0x28],0xc1000280
  65e879:	0f 85 f0 03 00 00    	jne    0x65ec6f
  65e87f:	f6 45 30 05          	test   BYTE PTR [ebp+0x30],0x5
  65e883:	0f 84 e6 03 00 00    	je     0x65ec6f
  65e889:	80 bc 24 f8 00 00 00 00 	cmp    BYTE PTR [esp+0xf8],0x0
  65e891:	0f 85 d8 03 00 00    	jne    0x65ec6f
  65e897:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  65e89a:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  65e89d:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65e8a0:	52                   	push   edx
  65e8a1:	53                   	push   ebx
  65e8a2:	50                   	push   eax
  65e8a3:	51                   	push   ecx
  65e8a4:	8d 8c 24 a8 02 00 00 	lea    ecx,[esp+0x2a8]
  65e8ab:	e8 30 5a fe ff       	call   0x6442e0
  65e8b0:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  65e8b4:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  65e8b7:	8b 02                	mov    eax,DWORD PTR [edx]
  65e8b9:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  65e8bd:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  65e8c0:	51                   	push   ecx
  65e8c1:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  65e8c4:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  65e8c7:	56                   	push   esi
  65e8c8:	51                   	push   ecx
  65e8c9:	83 ec 08             	sub    esp,0x8
  65e8cc:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e8d0:	8d 8c 24 ac 02 00 00 	lea    ecx,[esp+0x2ac]
  65e8d7:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  65e8db:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e8de:	52                   	push   edx
  65e8df:	d9 44 24 64          	fld    DWORD PTR [esp+0x64]
  65e8e3:	83 ec 08             	sub    esp,0x8
  65e8e6:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e8ea:	d9 44 24 68          	fld    DWORD PTR [esp+0x68]
  65e8ee:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e8f1:	e8 2a 63 fe ff       	call   0x644c20
  65e8f6:	84 c0                	test   al,al
  65e8f8:	0f 84 65 03 00 00    	je     0x65ec63
  65e8fe:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  65e902:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  65e905:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  65e909:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  65e90c:	83 ec 08             	sub    esp,0x8
  65e90f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e913:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  65e917:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e91a:	57                   	push   edi
  65e91b:	50                   	push   eax
  65e91c:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  65e920:	51                   	push   ecx
  65e921:	52                   	push   edx
  65e922:	50                   	push   eax
  65e923:	8b cb                	mov    ecx,ebx
  65e925:	e8 86 28 ff ff       	call   0x6511b0
  65e92a:	83 7d 1c 00          	cmp    DWORD PTR [ebp+0x1c],0x0
  65e92e:	0f 84 07 03 00 00    	je     0x65ec3b
  65e934:	6a 00                	push   0x0
  65e936:	6a 00                	push   0x0
  65e938:	6a 00                	push   0x0
  65e93a:	6a 00                	push   0x0
  65e93c:	68 a0 d8 fe 00       	push   0xfed8a0
  65e941:	6a 18                	push   0x18
  65e943:	e8 b8 5b e8 ff       	call   0x4e4500
  65e948:	83 c4 18             	add    esp,0x18
  65e94b:	85 c0                	test   eax,eax
  65e94d:	0f 84 64 01 00 00    	je     0x65eab7
  65e953:	8b c8                	mov    ecx,eax
  65e955:	e8 c6 04 ff ff       	call   0x64ee20
  65e95a:	e9 5a 01 00 00       	jmp    0x65eab9
  65e95f:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  65e964:	0f 85 19 36 00 00    	jne    0x661f83
  65e96a:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  65e96e:	3b 44 24 38          	cmp    eax,DWORD PTR [esp+0x38]
  65e972:	74 52                	je     0x65e9c6
  65e974:	85 c0                	test   eax,eax
  65e976:	7c 4e                	jl     0x65e9c6
  65e978:	3b 44 24 70          	cmp    eax,DWORD PTR [esp+0x70]
  65e97c:	7d 48                	jge    0x65e9c6
  65e97e:	8b 17                	mov    edx,DWORD PTR [edi]
  65e980:	6a 01                	push   0x1
  65e982:	6a 00                	push   0x0
  65e984:	6a 00                	push   0x0
  65e986:	6a 00                	push   0x0
  65e988:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  65e98f:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  65e993:	2b c8                	sub    ecx,eax
  65e995:	d9 04 8a             	fld    DWORD PTR [edx+ecx*4]
  65e998:	8d 04 8a             	lea    eax,[edx+ecx*4]
  65e99b:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65e99e:	d9 54 24 30          	fst    DWORD PTR [esp+0x30]
  65e9a2:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  65e9a5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  65e9a8:	6a 00                	push   0x0
  65e9aa:	d9 54 24 40          	fst    DWORD PTR [esp+0x40]
  65e9ae:	6a 00                	push   0x0
  65e9b0:	6a 00                	push   0x0
  65e9b2:	6a 00                	push   0x0
  65e9b4:	50                   	push   eax
  65e9b5:	83 ec 08             	sub    esp,0x8
  65e9b8:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e9bc:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e9bf:	e8 bc b9 60 00       	call   0xc6a380
  65e9c4:	dd d8                	fstp   st(0)
  65e9c6:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  65e9ca:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  65e9cd:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  65e9d1:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  65e9d4:	83 ec 08             	sub    esp,0x8
  65e9d7:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65e9db:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  65e9df:	d9 1c 24             	fstp   DWORD PTR [esp]
  65e9e2:	57                   	push   edi
  65e9e3:	51                   	push   ecx
  65e9e4:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  65e9e8:	52                   	push   edx
  65e9e9:	50                   	push   eax
  65e9ea:	51                   	push   ecx
  65e9eb:	8b cb                	mov    ecx,ebx
  65e9ed:	e8 be 27 ff ff       	call   0x6511b0
  65e9f2:	83 7d 1c 00          	cmp    DWORD PTR [ebp+0x1c],0x0
  65e9f6:	0f 84 82 00 00 00    	je     0x65ea7e
  65e9fc:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  65e9ff:	83 3a 00             	cmp    DWORD PTR [edx],0x0
  65ea02:	74 7a                	je     0x65ea7e
  65ea04:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  65ea07:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65ea0a:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  65ea0d:	50                   	push   eax
  65ea0e:	53                   	push   ebx
  65ea0f:	51                   	push   ecx
  65ea10:	52                   	push   edx
  65ea11:	8d 8c 24 a8 02 00 00 	lea    ecx,[esp+0x2a8]
  65ea18:	e8 c3 58 fe ff       	call   0x6442e0
  65ea1d:	8b ce                	mov    ecx,esi
  65ea1f:	e8 9c 61 fc ff       	call   0x624bc0
  65ea24:	84 c0                	test   al,al
  65ea26:	74 0c                	je     0x65ea34
  65ea28:	8b 07                	mov    eax,DWORD PTR [edi]
  65ea2a:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
  65ea2e:	75 04                	jne    0x65ea34
  65ea30:	b0 01                	mov    al,0x1
  65ea32:	eb 02                	jmp    0x65ea36
  65ea34:	32 c0                	xor    al,al
  65ea36:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  65ea39:	84 c0                	test   al,al
  65ea3b:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  65ea3f:	0f 94 c1             	sete   cl
  65ea42:	51                   	push   ecx
  65ea43:	52                   	push   edx
  65ea44:	8b 17                	mov    edx,DWORD PTR [edi]
  65ea46:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  65ea4d:	2b c8                	sub    ecx,eax
  65ea4f:	8d 04 8a             	lea    eax,[edx+ecx*4]
  65ea52:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  65ea56:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  65ea59:	c1 e1 05             	shl    ecx,0x5
  65ea5c:	03 0a                	add    ecx,DWORD PTR [edx]
  65ea5e:	50                   	push   eax
  65ea5f:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  65ea62:	51                   	push   ecx
  65ea63:	8b 08                	mov    ecx,DWORD PTR [eax]
  65ea65:	51                   	push   ecx
  65ea66:	8d 8c 24 ac 02 00 00 	lea    ecx,[esp+0x2ac]
  65ea6d:	e8 8e 01 ff ff       	call   0x64ec00
  65ea72:	8d 8c 24 98 02 00 00 	lea    ecx,[esp+0x298]
  65ea79:	e8 82 53 fe ff       	call   0x643e00
  65ea7e:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  65ea83:	74 09                	je     0x65ea8e
  65ea85:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65ea89:	e8 b2 71 fc ff       	call   0x625c40
  65ea8e:	33 c0                	xor    eax,eax
  65ea90:	5f                   	pop    edi
  65ea91:	5e                   	pop    esi
  65ea92:	5b                   	pop    ebx
  65ea93:	8b e5                	mov    esp,ebp
  65ea95:	5d                   	pop    ebp
  65ea96:	c2 30 00             	ret    0x30
  65ea99:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  65ea9e:	74 09                	je     0x65eaa9
  65eaa0:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65eaa4:	e8 97 71 fc ff       	call   0x625c40
  65eaa9:	b8 01 00 00 00       	mov    eax,0x1
  65eaae:	5f                   	pop    edi
  65eaaf:	5e                   	pop    esi
  65eab0:	5b                   	pop    ebx
  65eab1:	8b e5                	mov    esp,ebp
  65eab3:	5d                   	pop    ebp
  65eab4:	c2 30 00             	ret    0x30
  65eab7:	33 c0                	xor    eax,eax
  65eab9:	50                   	push   eax
  65eaba:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  65eabe:	e8 ad e8 19 00       	call   0x7fd370
  65eac3:	8b 74 24 34          	mov    esi,DWORD PTR [esp+0x34]
  65eac7:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  65eaca:	89 31                	mov    DWORD PTR [ecx],esi
  65eacc:	8b 16                	mov    edx,DWORD PTR [esi]
  65eace:	8b 02                	mov    eax,DWORD PTR [edx]
  65ead0:	8b ce                	mov    ecx,esi
  65ead2:	ff d0                	call   eax
  65ead4:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  65eadb:	e8 30 30 fe ff       	call   0x641b10
  65eae0:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  65eae6:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  65eaef:	f3 0f 10 84 24 a4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa4]
  65eaf8:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  65eaff:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  65eb08:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  65eb0e:	51                   	push   ecx
  65eb0f:	8b ce                	mov    ecx,esi
  65eb11:	f3 0f 11 84 24 bc 00 00 00 	movss  DWORD PTR [esp+0xbc],xmm0
  65eb1a:	c7 84 24 d0 00 00 00 06 00 00 00 	mov    DWORD PTR [esp+0xd0],0x6
  65eb25:	e8 36 bf fc ff       	call   0x62aa60
  65eb2a:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  65eb30:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  65eb39:	f3 0f 10 84 24 84 00 00 00 	movss  xmm0,DWORD PTR [esp+0x84]
  65eb42:	8d 94 24 b0 00 00 00 	lea    edx,[esp+0xb0]
  65eb49:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  65eb52:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  65eb58:	52                   	push   edx
  65eb59:	8b ce                	mov    ecx,esi
  65eb5b:	f3 0f 11 84 24 bc 00 00 00 	movss  DWORD PTR [esp+0xbc],xmm0
  65eb64:	c7 84 24 d0 00 00 00 07 00 00 00 	mov    DWORD PTR [esp+0xd0],0x7
  65eb6f:	e8 ec be fc ff       	call   0x62aa60
  65eb74:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65eb77:	8b 17                	mov    edx,DWORD PTR [edi]
  65eb79:	6a 01                	push   0x1
  65eb7b:	50                   	push   eax
  65eb7c:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  65eb80:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  65eb87:	2b c8                	sub    ecx,eax
  65eb89:	8d 04 8a             	lea    eax,[edx+ecx*4]
  65eb8c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  65eb8f:	8b 11                	mov    edx,DWORD PTR [ecx]
  65eb91:	50                   	push   eax
  65eb92:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  65eb95:	8b 08                	mov    ecx,DWORD PTR [eax]
  65eb97:	52                   	push   edx
  65eb98:	51                   	push   ecx
  65eb99:	8d 8c 24 ac 02 00 00 	lea    ecx,[esp+0x2ac]
  65eba0:	e8 5b 00 ff ff       	call   0x64ec00
  65eba5:	8d 8c 24 1c 01 00 00 	lea    ecx,[esp+0x11c]
  65ebac:	e8 6f 02 ff ff       	call   0x64ee20
  65ebb1:	8d 8c 24 10 03 00 00 	lea    ecx,[esp+0x310]
  65ebb8:	e8 63 b4 fc ff       	call   0x62a020
  65ebbd:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  65ebc0:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  65ebc4:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65ebc7:	6a 01                	push   0x1
  65ebc9:	89 94 24 54 03 00 00 	mov    DWORD PTR [esp+0x354],edx
  65ebd0:	8d 94 24 20 01 00 00 	lea    edx,[esp+0x120]
  65ebd7:	52                   	push   edx
  65ebd8:	89 84 24 6c 03 00 00 	mov    DWORD PTR [esp+0x36c],eax
  65ebdf:	56                   	push   esi
  65ebe0:	8d 84 24 1c 03 00 00 	lea    eax,[esp+0x31c]
  65ebe7:	50                   	push   eax
  65ebe8:	89 8c 24 64 03 00 00 	mov    DWORD PTR [esp+0x364],ecx
  65ebef:	e8 0c 18 fd ff       	call   0x630400
  65ebf4:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  65ebf8:	6a 01                	push   0x1
  65ebfa:	8d 94 24 20 01 00 00 	lea    edx,[esp+0x120]
  65ec01:	52                   	push   edx
  65ec02:	56                   	push   esi
  65ec03:	8d 84 24 1c 03 00 00 	lea    eax,[esp+0x31c]
  65ec0a:	89 8c 24 70 03 00 00 	mov    DWORD PTR [esp+0x370],ecx
  65ec11:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65ec14:	50                   	push   eax
  65ec15:	e8 e6 17 fd ff       	call   0x630400
  65ec1a:	8d 8c 24 10 03 00 00 	lea    ecx,[esp+0x310]
  65ec21:	e8 0a a7 fc ff       	call   0x629330
  65ec26:	8d 8c 24 1c 01 00 00 	lea    ecx,[esp+0x11c]
  65ec2d:	e8 0e 7f fc ff       	call   0x626b40
  65ec32:	8b 16                	mov    edx,DWORD PTR [esi]
  65ec34:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  65ec37:	8b ce                	mov    ecx,esi
  65ec39:	ff d0                	call   eax
  65ec3b:	8d 8c 24 98 02 00 00 	lea    ecx,[esp+0x298]
  65ec42:	e8 b9 51 fe ff       	call   0x643e00
  65ec47:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65ec4b:	85 c9                	test   ecx,ecx
  65ec4d:	0f 84 3b fe ff ff    	je     0x65ea8e
  65ec53:	e8 e8 6f fc ff       	call   0x625c40
  65ec58:	33 c0                	xor    eax,eax
  65ec5a:	5f                   	pop    edi
  65ec5b:	5e                   	pop    esi
  65ec5c:	5b                   	pop    ebx
  65ec5d:	8b e5                	mov    esp,ebp
  65ec5f:	5d                   	pop    ebp
  65ec60:	c2 30 00             	ret    0x30
  65ec63:	8d 8c 24 98 02 00 00 	lea    ecx,[esp+0x298]
  65ec6a:	e8 91 51 fe ff       	call   0x643e00
  65ec6f:	8b cb                	mov    ecx,ebx
  65ec71:	e8 8a 1a ff ff       	call   0x650700
  65ec76:	33 f6                	xor    esi,esi
  65ec78:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  65ec7f:	66 89 74 24 3c       	mov    WORD PTR [esp+0x3c],si
  65ec84:	66 89 74 24 3e       	mov    WORD PTR [esp+0x3e],si
  65ec89:	66 89 74 24 44       	mov    WORD PTR [esp+0x44],si
  65ec8e:	66 89 74 24 46       	mov    WORD PTR [esp+0x46],si
  65ec93:	e8 98 48 ff ff       	call   0x653530
  65ec98:	f7 45 28 00 00 80 00 	test   DWORD PTR [ebp+0x28],0x800000
  65ec9f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  65eca2:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  65eca5:	8b 02                	mov    eax,DWORD PTR [edx]
  65eca7:	89 8c 24 1c 02 00 00 	mov    DWORD PTR [esp+0x21c],ecx
  65ecae:	89 9c 24 18 02 00 00 	mov    DWORD PTR [esp+0x218],ebx
  65ecb5:	89 b4 24 90 01 00 00 	mov    DWORD PTR [esp+0x190],esi
  65ecbc:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  65ecc0:	f3 0f 11 84 24 38 02 00 00 	movss  DWORD PTR [esp+0x238],xmm0
  65ecc9:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  65ecce:	f3 0f 11 84 24 3c 02 00 00 	movss  DWORD PTR [esp+0x23c],xmm0
  65ecd7:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  65ecda:	89 84 24 40 02 00 00 	mov    DWORD PTR [esp+0x240],eax
  65ece1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  65ece4:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  65ece8:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  65eceb:	f3 0f 11 84 24 48 02 00 00 	movss  DWORD PTR [esp+0x248],xmm0
  65ecf4:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  65ecf9:	f3 0f 11 84 24 4c 02 00 00 	movss  DWORD PTR [esp+0x24c],xmm0
  65ed02:	89 8c 24 50 02 00 00 	mov    DWORD PTR [esp+0x250],ecx
  65ed09:	74 0b                	je     0x65ed16
  65ed0b:	c7 84 24 90 01 00 00 40 00 00 00 	mov    DWORD PTR [esp+0x190],0x40
  65ed16:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65ed19:	8b c8                	mov    ecx,eax
  65ed1b:	81 e1 00 80 00 09    	and    ecx,0x9008000
  65ed21:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],ecx
  65ed28:	74 0b                	je     0x65ed35
  65ed2a:	81 8c 24 90 01 00 00 80 00 00 00 	or     DWORD PTR [esp+0x190],0x80
  65ed35:	a9 00 80 00 00       	test   eax,0x8000
  65ed3a:	74 0b                	je     0x65ed47
  65ed3c:	81 8c 24 90 01 00 00 00 01 00 00 	or     DWORD PTR [esp+0x190],0x100
  65ed47:	a8 40                	test   al,0x40
  65ed49:	74 0b                	je     0x65ed56
  65ed4b:	81 8c 24 90 01 00 00 00 02 00 00 	or     DWORD PTR [esp+0x190],0x200
  65ed56:	0f 57 c0             	xorps  xmm0,xmm0
  65ed59:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  65ed5d:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  65ed61:	f3 0f 11 84 24 30 02 00 00 	movss  DWORD PTR [esp+0x230],xmm0
  65ed6a:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  65ed70:	f3 0f 11 84 24 00 01 00 00 	movss  DWORD PTR [esp+0x100],xmm0
  65ed79:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  65ed7f:	f3 0f 11 84 24 fc 00 00 00 	movss  DWORD PTR [esp+0xfc],xmm0
  65ed88:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  65ed8e:	33 f6                	xor    esi,esi
  65ed90:	f3 0f 11 84 24 18 01 00 00 	movss  DWORD PTR [esp+0x118],xmm0
  65ed99:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  65ed9f:	50                   	push   eax
  65eda0:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  65eda4:	c6 44 24 2f 00       	mov    BYTE PTR [esp+0x2f],0x0
  65eda9:	f3 0f 11 84 24 18 01 00 00 	movss  DWORD PTR [esp+0x118],xmm0
  65edb2:	89 74 24 70          	mov    DWORD PTR [esp+0x70],esi
  65edb6:	c6 44 24 17 00       	mov    BYTE PTR [esp+0x17],0x0
  65edbb:	89 94 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],edx
  65edc2:	89 74 24 78          	mov    DWORD PTR [esp+0x78],esi
  65edc6:	89 74 24 7c          	mov    DWORD PTR [esp+0x7c],esi
  65edca:	89 b4 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],esi
  65edd1:	c7 84 24 84 00 00 00 f0 e4 fe 00 	mov    DWORD PTR [esp+0x84],0xfee4f0
  65eddc:	e8 3f 65 71 00       	call   0xd75320
  65ede1:	39 74 24 70          	cmp    DWORD PTR [esp+0x70],esi
  65ede5:	8b 4c 24 78          	mov    ecx,DWORD PTR [esp+0x78]
  65ede9:	0f 86 b1 00 00 00    	jbe    0x65eea0
  65edef:	33 c0                	xor    eax,eax
  65edf1:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  65edf5:	eb 09                	jmp    0x65ee00
  65edf7:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  65edfe:	8b ff                	mov    edi,edi
  65ee00:	8b 17                	mov    edx,DWORD PTR [edi]
  65ee02:	f3 0f 10 0c 10       	movss  xmm1,DWORD PTR [eax+edx*1]
  65ee07:	f3 0f 5c 4c 24 48    	subss  xmm1,DWORD PTR [esp+0x48]
  65ee0d:	f3 0f 10 44 10 04    	movss  xmm0,DWORD PTR [eax+edx*1+0x4]
  65ee13:	f3 0f 5c 44 24 4c    	subss  xmm0,DWORD PTR [esp+0x4c]
  65ee19:	f3 0f 10 54 10 18    	movss  xmm2,DWORD PTR [eax+edx*1+0x18]
  65ee1f:	f3 0f 59 15 70 99 f9 00 	mulss  xmm2,DWORD PTR ds:0xf99970
  65ee27:	03 c2                	add    eax,edx
  65ee29:	3b 4c 24 7c          	cmp    ecx,DWORD PTR [esp+0x7c]
  65ee2d:	0f 28 d9             	movaps xmm3,xmm1
  65ee30:	f3 0f 59 d9          	mulss  xmm3,xmm1
  65ee34:	0f 28 c8             	movaps xmm1,xmm0
  65ee37:	f3 0f 59 c8          	mulss  xmm1,xmm0
  65ee3b:	f3 0f 58 d9          	addss  xmm3,xmm1
  65ee3f:	f3 0f 5c d3          	subss  xmm2,xmm3
  65ee43:	89 b4 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],esi
  65ee4a:	f3 0f 11 94 24 94 00 00 00 	movss  DWORD PTR [esp+0x94],xmm2
  65ee53:	73 1d                	jae    0x65ee72
  65ee55:	8b c1                	mov    eax,ecx
  65ee57:	83 c1 08             	add    ecx,0x8
  65ee5a:	85 c0                	test   eax,eax
  65ee5c:	89 4c 24 78          	mov    DWORD PTR [esp+0x78],ecx
  65ee60:	74 26                	je     0x65ee88
  65ee62:	8b d6                	mov    edx,esi
  65ee64:	89 10                	mov    DWORD PTR [eax],edx
  65ee66:	8b 94 24 94 00 00 00 	mov    edx,DWORD PTR [esp+0x94]
  65ee6d:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  65ee70:	eb 16                	jmp    0x65ee88
  65ee72:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
  65ee79:	50                   	push   eax
  65ee7a:	51                   	push   ecx
  65ee7b:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  65ee7f:	e8 bc d6 da ff       	call   0x40c540
  65ee84:	8b 4c 24 78          	mov    ecx,DWORD PTR [esp+0x78]
  65ee88:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  65ee8c:	83 c6 01             	add    esi,0x1
  65ee8f:	83 c0 1c             	add    eax,0x1c
  65ee92:	3b 74 24 70          	cmp    esi,DWORD PTR [esp+0x70]
  65ee96:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  65ee9a:	0f 82 60 ff ff ff    	jb     0x65ee00
  65eea0:	83 7c 24 70 01       	cmp    DWORD PTR [esp+0x70],0x1
  65eea5:	76 13                	jbe    0x65eeba
  65eea7:	68 e0 06 65 00       	push   0x6506e0
  65eeac:	51                   	push   ecx
  65eead:	8b 4c 24 7c          	mov    ecx,DWORD PTR [esp+0x7c]
  65eeb1:	51                   	push   ecx
  65eeb2:	e8 59 5a ff ff       	call   0x654910
  65eeb7:	83 c4 0c             	add    esp,0xc
  65eeba:	80 bc 24 f8 00 00 00 00 	cmp    BYTE PTR [esp+0xf8],0x0
  65eec2:	b8 20 00 00 00       	mov    eax,0x20
  65eec7:	74 0c                	je     0x65eed5
  65eec9:	09 83 1c 01 00 00    	or     DWORD PTR [ebx+0x11c],eax
  65eecf:	09 83 20 01 00 00    	or     DWORD PTR [ebx+0x120],eax
  65eed5:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  65eed8:	8b 02                	mov    eax,DWORD PTR [edx]
  65eeda:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  65eedd:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  65eee3:	89 84 24 54 01 00 00 	mov    DWORD PTR [esp+0x154],eax
  65eeea:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  65eeee:	85 c0                	test   eax,eax
  65eef0:	f3 0f 11 84 24 4c 01 00 00 	movss  DWORD PTR [esp+0x14c],xmm0
  65eef9:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  65eeff:	f3 0f 11 84 24 50 01 00 00 	movss  DWORD PTR [esp+0x150],xmm0
  65ef08:	7d 08                	jge    0x65ef12
  65ef0a:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  65ef0d:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  65ef10:	eb 0f                	jmp    0x65ef21
  65ef12:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
  65ef19:	2b d0                	sub    edx,eax
  65ef1b:	8b 07                	mov    eax,DWORD PTR [edi]
  65ef1d:	8b 44 90 08          	mov    eax,DWORD PTR [eax+edx*4+0x8]
  65ef21:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  65ef27:	8b 7c 24 50          	mov    edi,DWORD PTR [esp+0x50]
  65ef2b:	8b 8b 28 01 00 00    	mov    ecx,DWORD PTR [ebx+0x128]
  65ef31:	f3 0f 10 0d 84 e1 fe 00 	movss  xmm1,DWORD PTR ds:0xfee184
  65ef39:	8d b3 28 01 00 00    	lea    esi,[ebx+0x128]
  65ef3f:	f3 0f 11 84 24 64 01 00 00 	movss  DWORD PTR [esp+0x164],xmm0
  65ef48:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  65ef4e:	89 84 24 6c 01 00 00 	mov    DWORD PTR [esp+0x16c],eax
  65ef55:	33 c0                	xor    eax,eax
  65ef57:	3b f8                	cmp    edi,eax
  65ef59:	f3 0f 11 84 24 68 01 00 00 	movss  DWORD PTR [esp+0x168],xmm0
  65ef62:	f3 0f 10 05 88 e1 fe 00 	movss  xmm0,DWORD PTR ds:0xfee188
  65ef6a:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  65ef6d:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  65ef70:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  65ef73:	f3 0f 11 46 18       	movss  DWORD PTR [esi+0x18],xmm0
  65ef78:	f3 0f 11 4e 1c       	movss  DWORD PTR [esi+0x1c],xmm1
  65ef7d:	f3 0f 11 46 20       	movss  DWORD PTR [esi+0x20],xmm0
  65ef82:	f3 0f 11 4e 24       	movss  DWORD PTR [esi+0x24],xmm1
  65ef87:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  65ef8a:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  65ef8d:	0f 84 15 01 00 00    	je     0x65f0a8
  65ef93:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  65ef96:	8b 02                	mov    eax,DWORD PTR [edx]
  65ef98:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  65ef9c:	f3 0f 11 84 24 98 01 00 00 	movss  DWORD PTR [esp+0x198],xmm0
  65efa5:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  65efaa:	6a 00                	push   0x0
  65efac:	f3 0f 11 84 24 a0 01 00 00 	movss  DWORD PTR [esp+0x1a0],xmm0
  65efb5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  65efb8:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  65efbf:	51                   	push   ecx
  65efc0:	89 84 24 a8 01 00 00 	mov    DWORD PTR [esp+0x1a8],eax
  65efc7:	8b 57 4c             	mov    edx,DWORD PTR [edi+0x4c]
  65efca:	8b 47 48             	mov    eax,DWORD PTR [edi+0x48]
  65efcd:	8d 8c 24 a0 01 00 00 	lea    ecx,[esp+0x1a0]
  65efd4:	51                   	push   ecx
  65efd5:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65efd8:	52                   	push   edx
  65efd9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  65efdc:	50                   	push   eax
  65efdd:	52                   	push   edx
  65efde:	e8 3d 26 fe ff       	call   0x641620
  65efe3:	85 c0                	test   eax,eax
  65efe5:	75 54                	jne    0x65f03b
  65efe7:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65efeb:	85 c0                	test   eax,eax
  65efed:	74 09                	je     0x65eff8
  65efef:	50                   	push   eax
  65eff0:	e8 eb 54 e8 ff       	call   0x4e44e0
  65eff5:	83 c4 04             	add    esp,0x4
  65eff8:	8b 84 24 e4 01 00 00 	mov    eax,DWORD PTR [esp+0x1e4]
  65efff:	50                   	push   eax
  65f000:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  65f007:	e8 a4 29 25 00       	call   0x8b19b0
  65f00c:	8b 8c 24 b4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1b4]
  65f013:	51                   	push   ecx
  65f014:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  65f01b:	e8 90 29 25 00       	call   0x8b19b0
  65f020:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65f024:	85 c9                	test   ecx,ecx
  65f026:	74 05                	je     0x65f02d
  65f028:	e8 13 6c fc ff       	call   0x625c40
  65f02d:	b8 05 00 00 00       	mov    eax,0x5
  65f032:	5f                   	pop    edi
  65f033:	5e                   	pop    esi
  65f034:	5b                   	pop    ebx
  65f035:	8b e5                	mov    esp,ebp
  65f037:	5d                   	pop    ebp
  65f038:	c2 30 00             	ret    0x30
  65f03b:	83 8c 24 90 01 00 00 10 	or     DWORD PTR [esp+0x190],0x10
  65f043:	80 bf b0 04 00 00 00 	cmp    BYTE PTR [edi+0x4b0],0x0
  65f04a:	74 0a                	je     0x65f056
  65f04c:	81 a3 1c 01 00 00 fc fe ff ff 	and    DWORD PTR [ebx+0x11c],0xfffffefc
  65f056:	8d 94 24 94 01 00 00 	lea    edx,[esp+0x194]
  65f05d:	52                   	push   edx
  65f05e:	57                   	push   edi
  65f05f:	8b cb                	mov    ecx,ebx
  65f061:	e8 3a 25 ff ff       	call   0x6515a0
  65f066:	d9 ee                	fldz
  65f068:	8b 83 1c 01 00 00    	mov    eax,DWORD PTR [ebx+0x11c]
  65f06e:	56                   	push   esi
  65f06f:	51                   	push   ecx
  65f070:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  65f073:	d9 1c 24             	fstp   DWORD PTR [esp]
  65f076:	50                   	push   eax
  65f077:	51                   	push   ecx
  65f078:	8d 94 24 b8 01 00 00 	lea    edx,[esp+0x1b8]
  65f07f:	52                   	push   edx
  65f080:	8d 84 24 78 01 00 00 	lea    eax,[esp+0x178]
  65f087:	50                   	push   eax
  65f088:	8d 8c 24 64 01 00 00 	lea    ecx,[esp+0x164]
  65f08f:	51                   	push   ecx
  65f090:	57                   	push   edi
  65f091:	8b cb                	mov    ecx,ebx
  65f093:	e8 58 62 ff ff       	call   0x6552f0
  65f098:	f3 0f 10 05 88 e1 fe 00 	movss  xmm0,DWORD PTR ds:0xfee188
  65f0a0:	f3 0f 10 0d 84 e1 fe 00 	movss  xmm1,DWORD PTR ds:0xfee184
  65f0a8:	8b 93 60 01 00 00    	mov    edx,DWORD PTR [ebx+0x160]
  65f0ae:	8b 74 24 58          	mov    esi,DWORD PTR [esp+0x58]
  65f0b2:	8d bb 60 01 00 00    	lea    edi,[ebx+0x160]
  65f0b8:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  65f0bb:	33 d2                	xor    edx,edx
  65f0bd:	3b f2                	cmp    esi,edx
  65f0bf:	89 57 10             	mov    DWORD PTR [edi+0x10],edx
  65f0c2:	89 57 14             	mov    DWORD PTR [edi+0x14],edx
  65f0c5:	f3 0f 11 47 18       	movss  DWORD PTR [edi+0x18],xmm0
  65f0ca:	f3 0f 11 4f 1c       	movss  DWORD PTR [edi+0x1c],xmm1
  65f0cf:	f3 0f 11 47 20       	movss  DWORD PTR [edi+0x20],xmm0
  65f0d4:	f3 0f 11 4f 24       	movss  DWORD PTR [edi+0x24],xmm1
  65f0d9:	89 57 28             	mov    DWORD PTR [edi+0x28],edx
  65f0dc:	89 57 2c             	mov    DWORD PTR [edi+0x2c],edx
  65f0df:	0f 84 4b 02 00 00    	je     0x65f330
  65f0e5:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  65f0e8:	f3 0f 10 07          	movss  xmm0,DWORD PTR [edi]
  65f0ec:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  65f0ef:	6a 01                	push   0x1
  65f0f1:	f3 0f 11 84 24 cc 01 00 00 	movss  DWORD PTR [esp+0x1cc],xmm0
  65f0fa:	f3 0f 10 47 04       	movss  xmm0,DWORD PTR [edi+0x4]
  65f0ff:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  65f106:	51                   	push   ecx
  65f107:	f3 0f 11 84 24 d4 01 00 00 	movss  DWORD PTR [esp+0x1d4],xmm0
  65f110:	89 84 24 d8 01 00 00 	mov    DWORD PTR [esp+0x1d8],eax
  65f117:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  65f11a:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  65f11d:	8d 8c 24 d0 01 00 00 	lea    ecx,[esp+0x1d0]
  65f124:	51                   	push   ecx
  65f125:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f128:	52                   	push   edx
  65f129:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  65f12c:	50                   	push   eax
  65f12d:	52                   	push   edx
  65f12e:	e8 ed 24 fe ff       	call   0x641620
  65f133:	85 c0                	test   eax,eax
  65f135:	0f 85 72 01 00 00    	jne    0x65f2ad
  65f13b:	39 44 24 70          	cmp    DWORD PTR [esp+0x70],eax
  65f13f:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  65f143:	0f 86 0d 01 00 00    	jbe    0x65f256
  65f149:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  65f14d:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65f151:	8b 04 c8             	mov    eax,DWORD PTR [eax+ecx*8]
  65f154:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
  65f15b:	2b d0                	sub    edx,eax
  65f15d:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  65f160:	8b 08                	mov    ecx,DWORD PTR [eax]
  65f162:	f3 0f 10 04 91       	movss  xmm0,DWORD PTR [ecx+edx*4]
  65f167:	0f 2e 07             	ucomiss xmm0,DWORD PTR [edi]
  65f16a:	8d 04 91             	lea    eax,[ecx+edx*4]
  65f16d:	f3 0f 11 84 24 c8 01 00 00 	movss  DWORD PTR [esp+0x1c8],xmm0
  65f176:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  65f17b:	f3 0f 11 8c 24 cc 01 00 00 	movss  DWORD PTR [esp+0x1cc],xmm1
  65f184:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  65f187:	9f                   	lahf
  65f188:	f6 c4 44             	test   ah,0x44
  65f18b:	89 8c 24 d0 01 00 00 	mov    DWORD PTR [esp+0x1d0],ecx
  65f192:	7a 13                	jp     0x65f1a7
  65f194:	0f 2e 4f 04          	ucomiss xmm1,DWORD PTR [edi+0x4]
  65f198:	9f                   	lahf
  65f199:	f6 c4 44             	test   ah,0x44
  65f19c:	7a 09                	jp     0x65f1a7
  65f19e:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  65f1a1:	0f 84 9a 00 00 00    	je     0x65f241
  65f1a7:	d9 84 24 cc 01 00 00 	fld    DWORD PTR [esp+0x1cc]
  65f1ae:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  65f1b1:	8d 54 24 34          	lea    edx,[esp+0x34]
  65f1b5:	52                   	push   edx
  65f1b6:	8b 56 48             	mov    edx,DWORD PTR [esi+0x48]
  65f1b9:	8d 84 24 f8 00 00 00 	lea    eax,[esp+0xf8]
  65f1c0:	50                   	push   eax
  65f1c1:	83 ec 08             	sub    esp,0x8
  65f1c4:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65f1c8:	d9 84 24 d8 01 00 00 	fld    DWORD PTR [esp+0x1d8]
  65f1cf:	d9 1c 24             	fstp   DWORD PTR [esp]
  65f1d2:	51                   	push   ecx
  65f1d3:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f1d6:	52                   	push   edx
  65f1d7:	e8 74 05 fd ff       	call   0x62f750
  65f1dc:	d9 05 ec e6 06 01    	fld    DWORD PTR ds:0x106e6ec
  65f1e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  65f1e5:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f1e8:	8b 94 24 d0 01 00 00 	mov    edx,DWORD PTR [esp+0x1d0]
  65f1ef:	50                   	push   eax
  65f1f0:	51                   	push   ecx
  65f1f1:	d9 1c 24             	fstp   DWORD PTR [esp]
  65f1f4:	52                   	push   edx
  65f1f5:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  65f1f9:	83 ec 08             	sub    esp,0x8
  65f1fc:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65f200:	d9 84 24 08 01 00 00 	fld    DWORD PTR [esp+0x108]
  65f207:	d9 1c 24             	fstp   DWORD PTR [esp]
  65f20a:	56                   	push   esi
  65f20b:	e8 20 65 fd ff       	call   0x635730
  65f210:	84 c0                	test   al,al
  65f212:	74 2d                	je     0x65f241
  65f214:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  65f217:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  65f21a:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f21d:	6a 01                	push   0x1
  65f21f:	8d bc 24 dc 01 00 00 	lea    edi,[esp+0x1dc]
  65f226:	57                   	push   edi
  65f227:	8d bc 24 d0 01 00 00 	lea    edi,[esp+0x1d0]
  65f22e:	57                   	push   edi
  65f22f:	52                   	push   edx
  65f230:	50                   	push   eax
  65f231:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  65f234:	50                   	push   eax
  65f235:	e8 e6 23 fe ff       	call   0x641620
  65f23a:	85 c0                	test   eax,eax
  65f23c:	75 6f                	jne    0x65f2ad
  65f23e:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  65f241:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  65f245:	83 c0 01             	add    eax,0x1
  65f248:	3b 44 24 70          	cmp    eax,DWORD PTR [esp+0x70]
  65f24c:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  65f250:	0f 82 f3 fe ff ff    	jb     0x65f149
  65f256:	83 7c 24 74 00       	cmp    DWORD PTR [esp+0x74],0x0
  65f25b:	74 0d                	je     0x65f26a
  65f25d:	8b 4c 24 74          	mov    ecx,DWORD PTR [esp+0x74]
  65f261:	51                   	push   ecx
  65f262:	e8 79 52 e8 ff       	call   0x4e44e0
  65f267:	83 c4 04             	add    esp,0x4
  65f26a:	8b 94 24 e4 01 00 00 	mov    edx,DWORD PTR [esp+0x1e4]
  65f271:	52                   	push   edx
  65f272:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  65f279:	e8 32 27 25 00       	call   0x8b19b0
  65f27e:	8b 84 24 b4 01 00 00 	mov    eax,DWORD PTR [esp+0x1b4]
  65f285:	50                   	push   eax
  65f286:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  65f28d:	e8 1e 27 25 00       	call   0x8b19b0
  65f292:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65f296:	85 c9                	test   ecx,ecx
  65f298:	74 05                	je     0x65f29f
  65f29a:	e8 a1 69 fc ff       	call   0x625c40
  65f29f:	b8 04 00 00 00       	mov    eax,0x4
  65f2a4:	5f                   	pop    edi
  65f2a5:	5e                   	pop    esi
  65f2a6:	5b                   	pop    ebx
  65f2a7:	8b e5                	mov    esp,ebp
  65f2a9:	5d                   	pop    ebp
  65f2aa:	c2 30 00             	ret    0x30
  65f2ad:	83 8c 24 90 01 00 00 20 	or     DWORD PTR [esp+0x190],0x20
  65f2b5:	80 be b0 04 00 00 00 	cmp    BYTE PTR [esi+0x4b0],0x0
  65f2bc:	74 0a                	je     0x65f2c8
  65f2be:	81 a3 20 01 00 00 fc fe ff ff 	and    DWORD PTR [ebx+0x120],0xfffffefc
  65f2c8:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f2cb:	85 c9                	test   ecx,ecx
  65f2cd:	74 27                	je     0x65f2f6
  65f2cf:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  65f2d2:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  65f2d5:	52                   	push   edx
  65f2d6:	50                   	push   eax
  65f2d7:	e8 f4 30 fd ff       	call   0x6323d0
  65f2dc:	83 f8 ff             	cmp    eax,0xffffffff
  65f2df:	74 15                	je     0x65f2f6
  65f2e1:	8b c8                	mov    ecx,eax
  65f2e3:	c1 e9 10             	shr    ecx,0x10
  65f2e6:	66 89 8c 24 c4 01 00 00 	mov    WORD PTR [esp+0x1c4],cx
  65f2ee:	66 89 84 24 c6 01 00 00 	mov    WORD PTR [esp+0x1c6],ax
  65f2f6:	d9 ee                	fldz
  65f2f8:	8b 93 20 01 00 00    	mov    edx,DWORD PTR [ebx+0x120]
  65f2fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  65f301:	8d bb 60 01 00 00    	lea    edi,[ebx+0x160]
  65f307:	57                   	push   edi
  65f308:	51                   	push   ecx
  65f309:	d9 1c 24             	fstp   DWORD PTR [esp]
  65f30c:	52                   	push   edx
  65f30d:	50                   	push   eax
  65f30e:	8d 8c 24 e8 01 00 00 	lea    ecx,[esp+0x1e8]
  65f315:	51                   	push   ecx
  65f316:	8d 94 24 60 01 00 00 	lea    edx,[esp+0x160]
  65f31d:	52                   	push   edx
  65f31e:	8d 84 24 7c 01 00 00 	lea    eax,[esp+0x17c]
  65f325:	50                   	push   eax
  65f326:	56                   	push   esi
  65f327:	8b cb                	mov    ecx,ebx
  65f329:	e8 c2 5f ff ff       	call   0x6552f0
  65f32e:	33 d2                	xor    edx,edx
  65f330:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  65f334:	3b ca                	cmp    ecx,edx
  65f336:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  65f33a:	0f 84 61 03 00 00    	je     0x65f6a1
  65f340:	83 8b 3c 01 00 00 40 	or     DWORD PTR [ebx+0x13c],0x40
  65f347:	80 b9 b0 04 00 00 00 	cmp    BYTE PTR [ecx+0x4b0],0x0
  65f34e:	8b 83 3c 01 00 00    	mov    eax,DWORD PTR [ebx+0x13c]
  65f354:	74 3e                	je     0x65f394
  65f356:	83 e0 bf             	and    eax,0xffffffbf
  65f359:	0d 00 01 00 00       	or     eax,0x100
  65f35e:	39 55 08             	cmp    DWORD PTR [ebp+0x8],edx
  65f361:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  65f365:	89 83 3c 01 00 00    	mov    DWORD PTR [ebx+0x13c],eax
  65f36b:	74 27                	je     0x65f394
  65f36d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  65f370:	8b 11                	mov    edx,DWORD PTR [ecx]
  65f372:	81 e2 00 cf 00 00    	and    edx,0xcf00
  65f378:	52                   	push   edx
  65f379:	e8 42 ea ef ff       	call   0x55ddc0
  65f37e:	83 c4 04             	add    esp,0x4
  65f381:	84 c0                	test   al,al
  65f383:	74 0f                	je     0x65f394
  65f385:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  65f389:	0d 00 04 00 00       	or     eax,0x400
  65f38e:	89 83 3c 01 00 00    	mov    DWORD PTR [ebx+0x13c],eax
  65f394:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65f397:	8b 8b 1c 01 00 00    	mov    ecx,DWORD PTR [ebx+0x11c]
  65f39d:	50                   	push   eax
  65f39e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  65f3a1:	51                   	push   ecx
  65f3a2:	8d 54 24 44          	lea    edx,[esp+0x44]
  65f3a6:	52                   	push   edx
  65f3a7:	50                   	push   eax
  65f3a8:	8d 8c 24 74 01 00 00 	lea    ecx,[esp+0x174]
  65f3af:	51                   	push   ecx
  65f3b0:	8d 94 24 60 01 00 00 	lea    edx,[esp+0x160]
  65f3b7:	52                   	push   edx
  65f3b8:	57                   	push   edi
  65f3b9:	8d 83 28 01 00 00    	lea    eax,[ebx+0x128]
  65f3bf:	50                   	push   eax
  65f3c0:	8b cb                	mov    ecx,ebx
  65f3c2:	e8 a9 cc ff ff       	call   0x65c070
  65f3c7:	84 c0                	test   al,al
  65f3c9:	88 44 24 2b          	mov    BYTE PTR [esp+0x2b],al
  65f3cd:	0f 84 3f 04 00 00    	je     0x65f812
  65f3d3:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  65f3d7:	8b 41 48             	mov    eax,DWORD PTR [ecx+0x48]
  65f3da:	8b 49 4c             	mov    ecx,DWORD PTR [ecx+0x4c]
  65f3dd:	6a 01                	push   0x1
  65f3df:	8d 94 24 00 01 00 00 	lea    edx,[esp+0x100]
  65f3e6:	52                   	push   edx
  65f3e7:	8d 94 24 08 01 00 00 	lea    edx,[esp+0x108]
  65f3ee:	52                   	push   edx
  65f3ef:	8d 54 24 48          	lea    edx,[esp+0x48]
  65f3f3:	52                   	push   edx
  65f3f4:	89 8c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ecx
  65f3fb:	8b 94 24 a4 00 00 00 	mov    edx,DWORD PTR [esp+0xa4]
  65f402:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f405:	52                   	push   edx
  65f406:	50                   	push   eax
  65f407:	89 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],eax
  65f40e:	e8 6d 0f fd ff       	call   0x630380
  65f413:	8b 8c 24 a0 00 00 00 	mov    ecx,DWORD PTR [esp+0xa0]
  65f41a:	50                   	push   eax
  65f41b:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
  65f422:	50                   	push   eax
  65f423:	51                   	push   ecx
  65f424:	8b cb                	mov    ecx,ebx
  65f426:	e8 35 45 ff ff       	call   0x653960
  65f42b:	84 c0                	test   al,al
  65f42d:	75 67                	jne    0x65f496
  65f42f:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65f433:	85 c9                	test   ecx,ecx
  65f435:	74 07                	je     0x65f43e
  65f437:	8b 11                	mov    edx,DWORD PTR [ecx]
  65f439:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  65f43c:	ff d0                	call   eax
  65f43e:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65f442:	85 c0                	test   eax,eax
  65f444:	74 09                	je     0x65f44f
  65f446:	50                   	push   eax
  65f447:	e8 94 50 e8 ff       	call   0x4e44e0
  65f44c:	83 c4 04             	add    esp,0x4
  65f44f:	8b 8c 24 e4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1e4]
  65f456:	51                   	push   ecx
  65f457:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  65f45e:	e8 4d 25 25 00       	call   0x8b19b0
  65f463:	8b 94 24 b4 01 00 00 	mov    edx,DWORD PTR [esp+0x1b4]
  65f46a:	52                   	push   edx
  65f46b:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  65f472:	e8 39 25 25 00       	call   0x8b19b0
  65f477:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65f47b:	85 c9                	test   ecx,ecx
  65f47d:	0f 84 26 f6 ff ff    	je     0x65eaa9
  65f483:	e8 b8 67 fc ff       	call   0x625c40
  65f488:	b8 01 00 00 00       	mov    eax,0x1
  65f48d:	5f                   	pop    edi
  65f48e:	5e                   	pop    esi
  65f48f:	5b                   	pop    ebx
  65f490:	8b e5                	mov    esp,ebp
  65f492:	5d                   	pop    ebp
  65f493:	c2 30 00             	ret    0x30
  65f496:	f3 0f 10 84 24 00 01 00 00 	movss  xmm0,DWORD PTR [esp+0x100]
  65f49f:	8b 8b 58 01 00 00    	mov    ecx,DWORD PTR [ebx+0x158]
  65f4a5:	f3 0f 11 84 24 1c 01 00 00 	movss  DWORD PTR [esp+0x11c],xmm0
  65f4ae:	f3 0f 10 84 24 fc 00 00 00 	movss  xmm0,DWORD PTR [esp+0xfc]
  65f4b7:	33 c0                	xor    eax,eax
  65f4b9:	f3 0f 11 84 24 20 01 00 00 	movss  DWORD PTR [esp+0x120],xmm0
  65f4c2:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  65f4ca:	8d 94 24 1c 01 00 00 	lea    edx,[esp+0x11c]
  65f4d1:	89 8c 24 24 01 00 00 	mov    DWORD PTR [esp+0x124],ecx
  65f4d8:	f3 0f 11 84 24 34 01 00 00 	movss  DWORD PTR [esp+0x134],xmm0
  65f4e1:	0f 57 c0             	xorps  xmm0,xmm0
  65f4e4:	52                   	push   edx
  65f4e5:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  65f4e9:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
  65f4ed:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  65f4f1:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  65f4f5:	c7 44 24 6c c0 e3 fe 00 	mov    DWORD PTR [esp+0x6c],0xfee3c0
  65f4fd:	89 84 24 34 01 00 00 	mov    DWORD PTR [esp+0x134],eax
  65f504:	f3 0f 11 84 24 2c 01 00 00 	movss  DWORD PTR [esp+0x12c],xmm0
  65f50d:	f3 0f 11 84 24 30 01 00 00 	movss  DWORD PTR [esp+0x130],xmm0
  65f516:	e8 f5 ba fc ff       	call   0x62b010
  65f51b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65f51f:	85 c9                	test   ecx,ecx
  65f521:	74 0f                	je     0x65f532
  65f523:	c7 44 24 18 00 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  65f52b:	8b 01                	mov    eax,DWORD PTR [ecx]
  65f52d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65f530:	ff d2                	call   edx
  65f532:	8b 45 34             	mov    eax,DWORD PTR [ebp+0x34]
  65f535:	d9 e8                	fld1
  65f537:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  65f53a:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f53d:	6a 00                	push   0x0
  65f53f:	50                   	push   eax
  65f540:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  65f544:	52                   	push   edx
  65f545:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  65f548:	50                   	push   eax
  65f549:	52                   	push   edx
  65f54a:	6a 00                	push   0x0
  65f54c:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  65f550:	50                   	push   eax
  65f551:	8d 54 24 34          	lea    edx,[esp+0x34]
  65f555:	52                   	push   edx
  65f556:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
  65f55a:	8d 44 24 7c          	lea    eax,[esp+0x7c]
  65f55e:	50                   	push   eax
  65f55f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  65f562:	51                   	push   ecx
  65f563:	d9 1c 24             	fstp   DWORD PTR [esp]
  65f566:	52                   	push   edx
  65f567:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  65f56a:	50                   	push   eax
  65f56b:	52                   	push   edx
  65f56c:	e8 5f 23 fe ff       	call   0x6418d0
  65f571:	85 c0                	test   eax,eax
  65f573:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  65f577:	0f 85 3e 02 00 00    	jne    0x65f7bb
  65f57d:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  65f581:	85 c0                	test   eax,eax
  65f583:	75 42                	jne    0x65f5c7
  65f585:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  65f589:	85 c0                	test   eax,eax
  65f58b:	74 18                	je     0x65f5a5
  65f58d:	50                   	push   eax
  65f58e:	e8 4d 4f e8 ff       	call   0x4e44e0
  65f593:	83 c4 04             	add    esp,0x4
  65f596:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65f59a:	85 c9                	test   ecx,ecx
  65f59c:	74 07                	je     0x65f5a5
  65f59e:	8b 01                	mov    eax,DWORD PTR [ecx]
  65f5a0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65f5a3:	ff d2                	call   edx
  65f5a5:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65f5a9:	85 c0                	test   eax,eax
  65f5ab:	74 09                	je     0x65f5b6
  65f5ad:	50                   	push   eax
  65f5ae:	e8 2d 4f e8 ff       	call   0x4e44e0
  65f5b3:	83 c4 04             	add    esp,0x4
  65f5b6:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  65f5bd:	e8 fe 37 ff ff       	call   0x652dc0
  65f5c2:	e9 59 fa ff ff       	jmp    0x65f020
  65f5c7:	80 3d 4c 92 15 01 00 	cmp    BYTE PTR ds:0x115924c,0x0
  65f5ce:	0f 84 ba 00 00 00    	je     0x65f68e
  65f5d4:	66 8b 4c 24 3c       	mov    cx,WORD PTR [esp+0x3c]
  65f5d9:	66 8b 54 24 3e       	mov    dx,WORD PTR [esp+0x3e]
  65f5de:	6a 01                	push   0x1
  65f5e0:	66 89 4c 24 20       	mov    WORD PTR [esp+0x20],cx
  65f5e5:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  65f5e9:	51                   	push   ecx
  65f5ea:	66 89 54 24 26       	mov    WORD PTR [esp+0x26],dx
  65f5ef:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  65f5f2:	52                   	push   edx
  65f5f3:	50                   	push   eax
  65f5f4:	8d 83 28 01 00 00    	lea    eax,[ebx+0x128]
  65f5fa:	50                   	push   eax
  65f5fb:	8b cb                	mov    ecx,ebx
  65f5fd:	e8 fe 62 ff ff       	call   0x655900
  65f602:	84 c0                	test   al,al
  65f604:	0f 84 84 00 00 00    	je     0x65f68e
  65f60a:	66 8b 4c 24 1e       	mov    cx,WORD PTR [esp+0x1e]
  65f60f:	66 8b 44 24 1c       	mov    ax,WORD PTR [esp+0x1c]
  65f614:	6a 01                	push   0x1
  65f616:	8d 94 24 00 01 00 00 	lea    edx,[esp+0x100]
  65f61d:	52                   	push   edx
  65f61e:	66 89 4c 24 46       	mov    WORD PTR [esp+0x46],cx
  65f623:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  65f627:	8d 94 24 08 01 00 00 	lea    edx,[esp+0x108]
  65f62e:	52                   	push   edx
  65f62f:	66 89 44 24 48       	mov    WORD PTR [esp+0x48],ax
  65f634:	8b 41 48             	mov    eax,DWORD PTR [ecx+0x48]
  65f637:	8b 49 4c             	mov    ecx,DWORD PTR [ecx+0x4c]
  65f63a:	8d 54 24 48          	lea    edx,[esp+0x48]
  65f63e:	52                   	push   edx
  65f63f:	51                   	push   ecx
  65f640:	50                   	push   eax
  65f641:	8b cb                	mov    ecx,ebx
  65f643:	e8 88 51 ff ff       	call   0x6547d0
  65f648:	84 c0                	test   al,al
  65f64a:	75 42                	jne    0x65f68e
  65f64c:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  65f650:	85 c0                	test   eax,eax
  65f652:	74 09                	je     0x65f65d
  65f654:	50                   	push   eax
  65f655:	e8 86 4e e8 ff       	call   0x4e44e0
  65f65a:	83 c4 04             	add    esp,0x4
  65f65d:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65f661:	85 c9                	test   ecx,ecx
  65f663:	74 07                	je     0x65f66c
  65f665:	8b 01                	mov    eax,DWORD PTR [ecx]
  65f667:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65f66a:	ff d2                	call   edx
  65f66c:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65f670:	85 c0                	test   eax,eax
  65f672:	74 09                	je     0x65f67d
  65f674:	50                   	push   eax
  65f675:	e8 66 4e e8 ff       	call   0x4e44e0
  65f67a:	83 c4 04             	add    esp,0x4
  65f67d:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  65f684:	e8 37 37 ff ff       	call   0x652dc0
  65f689:	e9 e9 fd ff ff       	jmp    0x65f477
  65f68e:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  65f692:	85 c0                	test   eax,eax
  65f694:	74 09                	je     0x65f69f
  65f696:	50                   	push   eax
  65f697:	e8 44 4e e8 ff       	call   0x4e44e0
  65f69c:	83 c4 04             	add    esp,0x4
  65f69f:	33 d2                	xor    edx,edx
  65f6a1:	3b f2                	cmp    esi,edx
  65f6a3:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  65f6a7:	0f 84 15 07 00 00    	je     0x65fdc2
  65f6ad:	39 54 24 50          	cmp    DWORD PTR [esp+0x50],edx
  65f6b1:	f3 0f 10 84 24 4c 01 00 00 	movss  xmm0,DWORD PTR [esp+0x14c]
  65f6ba:	8b 84 24 54 01 00 00 	mov    eax,DWORD PTR [esp+0x154]
  65f6c1:	f3 0f 11 84 24 38 01 00 00 	movss  DWORD PTR [esp+0x138],xmm0
  65f6ca:	f3 0f 10 84 24 50 01 00 00 	movss  xmm0,DWORD PTR [esp+0x150]
  65f6d3:	f3 0f 11 84 24 3c 01 00 00 	movss  DWORD PTR [esp+0x13c],xmm0
  65f6dc:	89 84 24 40 01 00 00 	mov    DWORD PTR [esp+0x140],eax
  65f6e3:	74 3e                	je     0x65f723
  65f6e5:	f3 0f 10 84 24 00 01 00 00 	movss  xmm0,DWORD PTR [esp+0x100]
  65f6ee:	8d 8c 24 38 01 00 00 	lea    ecx,[esp+0x138]
  65f6f5:	f3 0f 11 84 24 38 01 00 00 	movss  DWORD PTR [esp+0x138],xmm0
  65f6fe:	f3 0f 10 84 24 fc 00 00 00 	movss  xmm0,DWORD PTR [esp+0xfc]
  65f707:	51                   	push   ecx
  65f708:	8b cf                	mov    ecx,edi
  65f70a:	f3 0f 11 84 24 40 01 00 00 	movss  DWORD PTR [esp+0x140],xmm0
  65f713:	c7 84 24 44 01 00 00 00 00 00 00 	mov    DWORD PTR [esp+0x144],0x0
  65f71e:	e8 ed 1b ff ff       	call   0x651310
  65f723:	8b 17                	mov    edx,DWORD PTR [edi]
  65f725:	3b 57 04             	cmp    edx,DWORD PTR [edi+0x4]
  65f728:	0f 84 7a 0b 00 00    	je     0x6602a8
  65f72e:	8b ff                	mov    edi,edi
  65f730:	83 8b 74 01 00 00 40 	or     DWORD PTR [ebx+0x174],0x40
  65f737:	80 be b0 04 00 00 00 	cmp    BYTE PTR [esi+0x4b0],0x0
  65f73e:	8b 83 74 01 00 00    	mov    eax,DWORD PTR [ebx+0x174]
  65f744:	0f 84 f3 00 00 00    	je     0x65f83d
  65f74a:	83 e0 bf             	and    eax,0xffffffbf
  65f74d:	a9 00 02 00 00       	test   eax,0x200
  65f752:	89 83 74 01 00 00    	mov    DWORD PTR [ebx+0x174],eax
  65f758:	0f 85 df 00 00 00    	jne    0x65f83d
  65f75e:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  65f762:	85 c0                	test   eax,eax
  65f764:	74 0d                	je     0x65f773
  65f766:	80 b8 b0 04 00 00 00 	cmp    BYTE PTR [eax+0x4b0],0x0
  65f76d:	0f 85 ca 00 00 00    	jne    0x65f83d
  65f773:	d9 84 24 68 01 00 00 	fld    DWORD PTR [esp+0x168]
  65f77a:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65f77d:	83 ec 10             	sub    esp,0x10
  65f780:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  65f784:	c1 e8 1c             	shr    eax,0x1c
  65f787:	24 01                	and    al,0x1
  65f789:	d9 84 24 74 01 00 00 	fld    DWORD PTR [esp+0x174]
  65f790:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  65f794:	8b cb                	mov    ecx,ebx
  65f796:	d9 84 24 60 01 00 00 	fld    DWORD PTR [esp+0x160]
  65f79d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65f7a1:	d9 84 24 5c 01 00 00 	fld    DWORD PTR [esp+0x15c]
  65f7a8:	d9 1c 24             	fstp   DWORD PTR [esp]
  65f7ab:	74 7d                	je     0x65f82a
  65f7ad:	e8 2e 1e ff ff       	call   0x6515e0
  65f7b2:	84 c0                	test   al,al
  65f7b4:	75 7d                	jne    0x65f833
  65f7b6:	e9 82 00 00 00       	jmp    0x65f83d
  65f7bb:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  65f7bf:	85 c0                	test   eax,eax
  65f7c1:	74 09                	je     0x65f7cc
  65f7c3:	50                   	push   eax
  65f7c4:	e8 17 4d e8 ff       	call   0x4e44e0
  65f7c9:	83 c4 04             	add    esp,0x4
  65f7cc:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65f7d0:	85 c9                	test   ecx,ecx
  65f7d2:	74 07                	je     0x65f7db
  65f7d4:	8b 01                	mov    eax,DWORD PTR [ecx]
  65f7d6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65f7d9:	ff d2                	call   edx
  65f7db:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65f7df:	85 c0                	test   eax,eax
  65f7e1:	74 09                	je     0x65f7ec
  65f7e3:	50                   	push   eax
  65f7e4:	e8 f7 4c e8 ff       	call   0x4e44e0
  65f7e9:	83 c4 04             	add    esp,0x4
  65f7ec:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  65f7f3:	e8 c8 35 ff ff       	call   0x652dc0
  65f7f8:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65f7fc:	85 c9                	test   ecx,ecx
  65f7fe:	74 05                	je     0x65f805
  65f800:	e8 3b 64 fc ff       	call   0x625c40
  65f805:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  65f809:	5f                   	pop    edi
  65f80a:	5e                   	pop    esi
  65f80b:	5b                   	pop    ebx
  65f80c:	8b e5                	mov    esp,ebp
  65f80e:	5d                   	pop    ebp
  65f80f:	c2 30 00             	ret    0x30
  65f812:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65f816:	85 c9                	test   ecx,ecx
  65f818:	0f 84 c9 f7 ff ff    	je     0x65efe7
  65f81e:	8b 01                	mov    eax,DWORD PTR [ecx]
  65f820:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65f823:	ff d2                	call   edx
  65f825:	e9 bd f7 ff ff       	jmp    0x65efe7
  65f82a:	e8 b1 eb ff ff       	call   0x65e3e0
  65f82f:	84 c0                	test   al,al
  65f831:	74 0a                	je     0x65f83d
  65f833:	81 8b 74 01 00 00 00 02 00 00 	or     DWORD PTR [ebx+0x174],0x200
  65f83d:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  65f840:	8b 93 20 01 00 00    	mov    edx,DWORD PTR [ebx+0x120]
  65f846:	51                   	push   ecx
  65f847:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  65f84a:	52                   	push   edx
  65f84b:	8d 44 24 4c          	lea    eax,[esp+0x4c]
  65f84f:	50                   	push   eax
  65f850:	51                   	push   ecx
  65f851:	8d 94 24 48 01 00 00 	lea    edx,[esp+0x148]
  65f858:	52                   	push   edx
  65f859:	8d 84 24 78 01 00 00 	lea    eax,[esp+0x178]
  65f860:	50                   	push   eax
  65f861:	8d 83 28 01 00 00    	lea    eax,[ebx+0x128]
  65f867:	50                   	push   eax
  65f868:	57                   	push   edi
  65f869:	8b cb                	mov    ecx,ebx
  65f86b:	e8 00 c8 ff ff       	call   0x65c070
  65f870:	84 c0                	test   al,al
  65f872:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
  65f876:	0f 84 6b 02 00 00    	je     0x65fae7
  65f87c:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  65f87f:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  65f882:	6a 01                	push   0x1
  65f884:	8d 94 24 18 01 00 00 	lea    edx,[esp+0x118]
  65f88b:	52                   	push   edx
  65f88c:	8d 94 24 20 01 00 00 	lea    edx,[esp+0x120]
  65f893:	52                   	push   edx
  65f894:	8d 54 24 50          	lea    edx,[esp+0x50]
  65f898:	52                   	push   edx
  65f899:	89 8c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ecx
  65f8a0:	8b 94 24 a4 00 00 00 	mov    edx,DWORD PTR [esp+0xa4]
  65f8a7:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f8aa:	52                   	push   edx
  65f8ab:	50                   	push   eax
  65f8ac:	89 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],eax
  65f8b3:	e8 c8 0a fd ff       	call   0x630380
  65f8b8:	8b 8c 24 a0 00 00 00 	mov    ecx,DWORD PTR [esp+0xa0]
  65f8bf:	50                   	push   eax
  65f8c0:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
  65f8c7:	50                   	push   eax
  65f8c8:	51                   	push   ecx
  65f8c9:	8b cb                	mov    ecx,ebx
  65f8cb:	e8 90 40 ff ff       	call   0x653960
  65f8d0:	84 c0                	test   al,al
  65f8d2:	75 20                	jne    0x65f8f4
  65f8d4:	8b 07                	mov    eax,DWORD PTR [edi]
  65f8d6:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  65f8d9:	8d 48 1c             	lea    ecx,[eax+0x1c]
  65f8dc:	3b ca                	cmp    ecx,edx
  65f8de:	0f 83 ae 03 00 00    	jae    0x65fc92
  65f8e4:	50                   	push   eax
  65f8e5:	52                   	push   edx
  65f8e6:	51                   	push   ecx
  65f8e7:	e8 44 14 ff ff       	call   0x650d30
  65f8ec:	83 c4 0c             	add    esp,0xc
  65f8ef:	e9 9e 03 00 00       	jmp    0x65fc92
  65f8f4:	f3 0f 10 84 24 18 01 00 00 	movss  xmm0,DWORD PTR [esp+0x118]
  65f8fd:	8b 93 90 01 00 00    	mov    edx,DWORD PTR [ebx+0x190]
  65f903:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  65f90c:	f3 0f 10 84 24 14 01 00 00 	movss  xmm0,DWORD PTR [esp+0x114]
  65f915:	33 f6                	xor    esi,esi
  65f917:	8d 84 24 b0 00 00 00 	lea    eax,[esp+0xb0]
  65f91e:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  65f927:	0f 57 c0             	xorps  xmm0,xmm0
  65f92a:	50                   	push   eax
  65f92b:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  65f92f:	89 74 24 60          	mov    DWORD PTR [esp+0x60],esi
  65f933:	89 74 24 64          	mov    DWORD PTR [esp+0x64],esi
  65f937:	89 74 24 68          	mov    DWORD PTR [esp+0x68],esi
  65f93b:	c7 44 24 6c d0 e3 fe 00 	mov    DWORD PTR [esp+0x6c],0xfee3d0
  65f943:	89 94 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],edx
  65f94a:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  65f953:	f3 0f 11 84 24 cc 00 00 00 	movss  DWORD PTR [esp+0xcc],xmm0
  65f95c:	89 b4 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],esi
  65f963:	f3 0f 11 84 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm0
  65f96c:	f3 0f 11 84 24 c4 00 00 00 	movss  DWORD PTR [esp+0xc4],xmm0
  65f975:	e8 96 70 ff ff       	call   0x656a10
  65f97a:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  65f97e:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  65f982:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  65f986:	3b ce                	cmp    ecx,esi
  65f988:	74 0b                	je     0x65f995
  65f98a:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  65f98e:	8b 11                	mov    edx,DWORD PTR [ecx]
  65f990:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  65f993:	ff d0                	call   eax
  65f995:	8b 55 34             	mov    edx,DWORD PTR [ebp+0x34]
  65f998:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  65f99b:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  65f99e:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65f9a1:	6a 00                	push   0x0
  65f9a3:	52                   	push   edx
  65f9a4:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  65f9a8:	50                   	push   eax
  65f9a9:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65f9ac:	52                   	push   edx
  65f9ad:	50                   	push   eax
  65f9ae:	8d 54 24 54          	lea    edx,[esp+0x54]
  65f9b2:	52                   	push   edx
  65f9b3:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  65f9b6:	6a 00                	push   0x0
  65f9b8:	8d 44 24 40          	lea    eax,[esp+0x40]
  65f9bc:	50                   	push   eax
  65f9bd:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  65f9c0:	52                   	push   edx
  65f9c1:	51                   	push   ecx
  65f9c2:	d9 1c 24             	fstp   DWORD PTR [esp]
  65f9c5:	50                   	push   eax
  65f9c6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  65f9c9:	8d 94 24 88 00 00 00 	lea    edx,[esp+0x88]
  65f9d0:	52                   	push   edx
  65f9d1:	50                   	push   eax
  65f9d2:	e8 f9 1e fe ff       	call   0x6418d0
  65f9d7:	8b f0                	mov    esi,eax
  65f9d9:	85 f6                	test   esi,esi
  65f9db:	0f 85 1b 03 00 00    	jne    0x65fcfc
  65f9e1:	39 44 24 24          	cmp    DWORD PTR [esp+0x24],eax
  65f9e5:	0f 84 bb 02 00 00    	je     0x65fca6
  65f9eb:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  65f9ef:	3b 44 24 38          	cmp    eax,DWORD PTR [esp+0x38]
  65f9f3:	74 53                	je     0x65fa48
  65f9f5:	85 c0                	test   eax,eax
  65f9f7:	7c 4f                	jl     0x65fa48
  65f9f9:	3b 44 24 70          	cmp    eax,DWORD PTR [esp+0x70]
  65f9fd:	7d 49                	jge    0x65fa48
  65f9ff:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  65fa02:	6a 01                	push   0x1
  65fa04:	56                   	push   esi
  65fa05:	56                   	push   esi
  65fa06:	56                   	push   esi
  65fa07:	56                   	push   esi
  65fa08:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  65fa0c:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  65fa13:	2b c8                	sub    ecx,eax
  65fa15:	8b 02                	mov    eax,DWORD PTR [edx]
  65fa17:	d9 04 88             	fld    DWORD PTR [eax+ecx*4]
  65fa1a:	56                   	push   esi
  65fa1b:	8d 04 88             	lea    eax,[eax+ecx*4]
  65fa1e:	d9 54 24 38          	fst    DWORD PTR [esp+0x38]
  65fa22:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  65fa25:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  65fa28:	56                   	push   esi
  65fa29:	d9 54 24 48          	fst    DWORD PTR [esp+0x48]
  65fa2d:	56                   	push   esi
  65fa2e:	51                   	push   ecx
  65fa2f:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  65fa32:	83 ec 08             	sub    esp,0x8
  65fa35:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65fa39:	d9 1c 24             	fstp   DWORD PTR [esp]
  65fa3c:	e8 3f a9 60 00       	call   0xc6a380
  65fa41:	d9 9c 24 84 00 00 00 	fstp   DWORD PTR [esp+0x84]
  65fa48:	80 3d 4c 92 15 01 00 	cmp    BYTE PTR ds:0x115924c,0x0
  65fa4f:	0f 84 81 00 00 00    	je     0x65fad6
  65fa55:	66 8b 54 24 44       	mov    dx,WORD PTR [esp+0x44]
  65fa5a:	66 8b 44 24 46       	mov    ax,WORD PTR [esp+0x46]
  65fa5f:	6a 00                	push   0x0
  65fa61:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  65fa65:	51                   	push   ecx
  65fa66:	66 89 54 24 24       	mov    WORD PTR [esp+0x24],dx
  65fa6b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  65fa6e:	66 89 44 24 26       	mov    WORD PTR [esp+0x26],ax
  65fa73:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  65fa77:	52                   	push   edx
  65fa78:	50                   	push   eax
  65fa79:	57                   	push   edi
  65fa7a:	8b cb                	mov    ecx,ebx
  65fa7c:	e8 7f 5e ff ff       	call   0x655900
  65fa81:	84 c0                	test   al,al
  65fa83:	74 51                	je     0x65fad6
  65fa85:	66 8b 4c 24 1c       	mov    cx,WORD PTR [esp+0x1c]
  65fa8a:	66 8b 54 24 1e       	mov    dx,WORD PTR [esp+0x1e]
  65fa8f:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  65fa93:	66 89 4c 24 44       	mov    WORD PTR [esp+0x44],cx
  65fa98:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  65fa9b:	66 89 54 24 46       	mov    WORD PTR [esp+0x46],dx
  65faa0:	8b 70 48             	mov    esi,DWORD PTR [eax+0x48]
  65faa3:	8b 78 4c             	mov    edi,DWORD PTR [eax+0x4c]
  65faa6:	6a 01                	push   0x1
  65faa8:	8d 84 24 18 01 00 00 	lea    eax,[esp+0x118]
  65faaf:	50                   	push   eax
  65fab0:	8d 94 24 20 01 00 00 	lea    edx,[esp+0x120]
  65fab7:	52                   	push   edx
  65fab8:	8d 44 24 50          	lea    eax,[esp+0x50]
  65fabc:	50                   	push   eax
  65fabd:	57                   	push   edi
  65fabe:	56                   	push   esi
  65fabf:	e8 bc 08 fd ff       	call   0x630380
  65fac4:	50                   	push   eax
  65fac5:	57                   	push   edi
  65fac6:	56                   	push   esi
  65fac7:	8b cb                	mov    ecx,ebx
  65fac9:	e8 92 3e ff ff       	call   0x653960
  65face:	84 c0                	test   al,al
  65fad0:	0f 84 fd 01 00 00    	je     0x65fcd3
  65fad6:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  65fada:	85 c0                	test   eax,eax
  65fadc:	74 09                	je     0x65fae7
  65fade:	50                   	push   eax
  65fadf:	e8 fc 49 e8 ff       	call   0x4e44e0
  65fae4:	83 c4 04             	add    esp,0x4
  65fae7:	33 f6                	xor    esi,esi
  65fae9:	80 7c 24 2b 00       	cmp    BYTE PTR [esp+0x2b],0x0
  65faee:	0f 85 dd 00 00 00    	jne    0x65fbd1
  65faf4:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65faf7:	d9 84 24 14 01 00 00 	fld    DWORD PTR [esp+0x114]
  65fafe:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  65fb01:	6a 01                	push   0x1
  65fb03:	56                   	push   esi
  65fb04:	51                   	push   ecx
  65fb05:	8b 8c 24 b8 00 00 00 	mov    ecx,DWORD PTR [esp+0xb8]
  65fb0c:	25 00 00 00 10       	and    eax,0x10000000
  65fb11:	0d 00 00 80 00       	or     eax,0x800000
  65fb16:	c1 e8 0f             	shr    eax,0xf
  65fb19:	f7 d9                	neg    ecx
  65fb1b:	1b c9                	sbb    ecx,ecx
  65fb1d:	81 e1 00 10 00 00    	and    ecx,0x1000
  65fb23:	0b c1                	or     eax,ecx
  65fb25:	0b 45 30             	or     eax,DWORD PTR [ebp+0x30]
  65fb28:	8d 94 24 28 01 00 00 	lea    edx,[esp+0x128]
  65fb2f:	52                   	push   edx
  65fb30:	8b 94 24 08 01 00 00 	mov    edx,DWORD PTR [esp+0x108]
  65fb37:	50                   	push   eax
  65fb38:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  65fb3c:	52                   	push   edx
  65fb3d:	50                   	push   eax
  65fb3e:	83 ec 10             	sub    esp,0x10
  65fb41:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  65fb45:	8b cb                	mov    ecx,ebx
  65fb47:	d9 84 24 44 01 00 00 	fld    DWORD PTR [esp+0x144]
  65fb4e:	89 b4 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],esi
  65fb55:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  65fb59:	89 b4 24 4c 01 00 00 	mov    DWORD PTR [esp+0x14c],esi
  65fb60:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  65fb64:	89 b4 24 50 01 00 00 	mov    DWORD PTR [esp+0x150],esi
  65fb6b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65fb6f:	c7 84 24 54 01 00 00 9c e4 fe 00 	mov    DWORD PTR [esp+0x154],0xfee49c
  65fb7a:	d9 44 24 74          	fld    DWORD PTR [esp+0x74]
  65fb7e:	d9 1c 24             	fstp   DWORD PTR [esp]
  65fb81:	e8 5a c4 ff ff       	call   0x65bfe0
  65fb86:	88 44 24 2b          	mov    BYTE PTR [esp+0x2b],al
  65fb8a:	8b 84 24 1c 01 00 00 	mov    eax,DWORD PTR [esp+0x11c]
  65fb91:	3b 84 24 20 01 00 00 	cmp    eax,DWORD PTR [esp+0x120]
  65fb98:	74 07                	je     0x65fba1
  65fb9a:	c6 44 24 2b 01       	mov    BYTE PTR [esp+0x2b],0x1
  65fb9f:	eb 07                	jmp    0x65fba8
  65fba1:	80 7c 24 2b 00       	cmp    BYTE PTR [esp+0x2b],0x0
  65fba6:	74 06                	je     0x65fbae
  65fba8:	8b 08                	mov    ecx,DWORD PTR [eax]
  65fbaa:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  65fbae:	3b c6                	cmp    eax,esi
  65fbb0:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  65fbb4:	89 94 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],edx
  65fbbb:	74 09                	je     0x65fbc6
  65fbbd:	50                   	push   eax
  65fbbe:	e8 1d 49 e8 ff       	call   0x4e44e0
  65fbc3:	83 c4 04             	add    esp,0x4
  65fbc6:	80 7c 24 2b 00       	cmp    BYTE PTR [esp+0x2b],0x0
  65fbcb:	0f 84 8f 01 00 00    	je     0x65fd60
  65fbd1:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  65fbd6:	0f 84 84 01 00 00    	je     0x65fd60
  65fbdc:	f7 45 28 00 80 00 c9 	test   DWORD PTR [ebp+0x28],0xc9008000
  65fbe3:	75 4b                	jne    0x65fc30
  65fbe5:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  65fbe8:	80 78 14 00          	cmp    BYTE PTR [eax+0x14],0x0
  65fbec:	74 18                	je     0x65fc06
  65fbee:	0f b7 4c 24 3c       	movzx  ecx,WORD PTR [esp+0x3c]
  65fbf3:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  65fbf6:	8b 0c 8a             	mov    ecx,DWORD PTR [edx+ecx*4]
  65fbf9:	0f b7 54 24 3e       	movzx  edx,WORD PTR [esp+0x3e]
  65fbfe:	03 48 28             	add    ecx,DWORD PTR [eax+0x28]
  65fc01:	8a 0c 11             	mov    cl,BYTE PTR [ecx+edx*1]
  65fc04:	eb 02                	jmp    0x65fc08
  65fc06:	b1 fe                	mov    cl,0xfe
  65fc08:	80 78 14 00          	cmp    BYTE PTR [eax+0x14],0x0
  65fc0c:	74 18                	je     0x65fc26
  65fc0e:	0f b7 54 24 44       	movzx  edx,WORD PTR [esp+0x44]
  65fc13:	8b 78 18             	mov    edi,DWORD PTR [eax+0x18]
  65fc16:	8b 14 97             	mov    edx,DWORD PTR [edi+edx*4]
  65fc19:	03 50 28             	add    edx,DWORD PTR [eax+0x28]
  65fc1c:	0f b7 44 24 46       	movzx  eax,WORD PTR [esp+0x46]
  65fc21:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
  65fc24:	eb 02                	jmp    0x65fc28
  65fc26:	b0 fe                	mov    al,0xfe
  65fc28:	3a c8                	cmp    cl,al
  65fc2a:	0f 85 78 06 00 00    	jne    0x6602a8
  65fc30:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  65fc33:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  65fc3a:	51                   	push   ecx
  65fc3b:	8d 94 24 94 01 00 00 	lea    edx,[esp+0x194]
  65fc42:	52                   	push   edx
  65fc43:	50                   	push   eax
  65fc44:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
  65fc47:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  65fc4b:	51                   	push   ecx
  65fc4c:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
  65fc4f:	8d 54 24 4c          	lea    edx,[esp+0x4c]
  65fc53:	52                   	push   edx
  65fc54:	50                   	push   eax
  65fc55:	51                   	push   ecx
  65fc56:	8d 4b 18             	lea    ecx,[ebx+0x18]
  65fc59:	e8 62 68 01 00       	call   0x6764c0
  65fc5e:	3b c6                	cmp    eax,esi
  65fc60:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  65fc64:	0f 85 6b 09 00 00    	jne    0x6605d5
  65fc6a:	8b 83 60 01 00 00    	mov    eax,DWORD PTR [ebx+0x160]
  65fc70:	8b 93 64 01 00 00    	mov    edx,DWORD PTR [ebx+0x164]
  65fc76:	8d bb 60 01 00 00    	lea    edi,[ebx+0x160]
  65fc7c:	8d 48 1c             	lea    ecx,[eax+0x1c]
  65fc7f:	3b ca                	cmp    ecx,edx
  65fc81:	73 0b                	jae    0x65fc8e
  65fc83:	50                   	push   eax
  65fc84:	52                   	push   edx
  65fc85:	51                   	push   ecx
  65fc86:	e8 a5 10 ff ff       	call   0x650d30
  65fc8b:	83 c4 0c             	add    esp,0xc
  65fc8e:	8b 74 24 58          	mov    esi,DWORD PTR [esp+0x58]
  65fc92:	83 47 04 e4          	add    DWORD PTR [edi+0x4],0xffffffe4
  65fc96:	8b 17                	mov    edx,DWORD PTR [edi]
  65fc98:	3b 57 04             	cmp    edx,DWORD PTR [edi+0x4]
  65fc9b:	0f 85 8f fa ff ff    	jne    0x65f730
  65fca1:	e9 02 06 00 00       	jmp    0x6602a8
  65fca6:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  65fcaa:	85 c0                	test   eax,eax
  65fcac:	0f 84 e4 f8 ff ff    	je     0x65f596
  65fcb2:	50                   	push   eax
  65fcb3:	e8 28 48 e8 ff       	call   0x4e44e0
  65fcb8:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  65fcbc:	83 c4 04             	add    esp,0x4
  65fcbf:	85 c9                	test   ecx,ecx
  65fcc1:	0f 84 cf f8 ff ff    	je     0x65f596
  65fcc7:	8b 01                	mov    eax,DWORD PTR [ecx]
  65fcc9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65fccc:	ff d2                	call   edx
  65fcce:	e9 c3 f8 ff ff       	jmp    0x65f596
  65fcd3:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  65fcd7:	85 c0                	test   eax,eax
  65fcd9:	74 09                	je     0x65fce4
  65fcdb:	50                   	push   eax
  65fcdc:	e8 ff 47 e8 ff       	call   0x4e44e0
  65fce1:	83 c4 04             	add    esp,0x4
  65fce4:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  65fce8:	85 c9                	test   ecx,ecx
  65fcea:	0f 84 6d f9 ff ff    	je     0x65f65d
  65fcf0:	8b 01                	mov    eax,DWORD PTR [ecx]
  65fcf2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65fcf5:	ff d2                	call   edx
  65fcf7:	e9 61 f9 ff ff       	jmp    0x65f65d
  65fcfc:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  65fd00:	85 c0                	test   eax,eax
  65fd02:	74 09                	je     0x65fd0d
  65fd04:	50                   	push   eax
  65fd05:	e8 d6 47 e8 ff       	call   0x4e44e0
  65fd0a:	83 c4 04             	add    esp,0x4
  65fd0d:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  65fd11:	85 c9                	test   ecx,ecx
  65fd13:	74 07                	je     0x65fd1c
  65fd15:	8b 01                	mov    eax,DWORD PTR [ecx]
  65fd17:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65fd1a:	ff d2                	call   edx
  65fd1c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65fd20:	85 c9                	test   ecx,ecx
  65fd22:	74 07                	je     0x65fd2b
  65fd24:	8b 01                	mov    eax,DWORD PTR [ecx]
  65fd26:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65fd29:	ff d2                	call   edx
  65fd2b:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65fd2f:	85 c0                	test   eax,eax
  65fd31:	74 09                	je     0x65fd3c
  65fd33:	50                   	push   eax
  65fd34:	e8 a7 47 e8 ff       	call   0x4e44e0
  65fd39:	83 c4 04             	add    esp,0x4
  65fd3c:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  65fd43:	e8 78 30 ff ff       	call   0x652dc0
  65fd48:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65fd4c:	85 c9                	test   ecx,ecx
  65fd4e:	74 05                	je     0x65fd55
  65fd50:	e8 eb 5e fc ff       	call   0x625c40
  65fd55:	8b c6                	mov    eax,esi
  65fd57:	5f                   	pop    edi
  65fd58:	5e                   	pop    esi
  65fd59:	5b                   	pop    ebx
  65fd5a:	8b e5                	mov    esp,ebp
  65fd5c:	5d                   	pop    ebp
  65fd5d:	c2 30 00             	ret    0x30
  65fd60:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  65fd64:	3b ce                	cmp    ecx,esi
  65fd66:	74 07                	je     0x65fd6f
  65fd68:	8b 01                	mov    eax,DWORD PTR [ecx]
  65fd6a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65fd6d:	ff d2                	call   edx
  65fd6f:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65fd73:	3b ce                	cmp    ecx,esi
  65fd75:	74 07                	je     0x65fd7e
  65fd77:	8b 01                	mov    eax,DWORD PTR [ecx]
  65fd79:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  65fd7c:	ff d2                	call   edx
  65fd7e:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65fd82:	3b c6                	cmp    eax,esi
  65fd84:	74 09                	je     0x65fd8f
  65fd86:	50                   	push   eax
  65fd87:	e8 54 47 e8 ff       	call   0x4e44e0
  65fd8c:	83 c4 04             	add    esp,0x4
  65fd8f:	8b 84 24 e4 01 00 00 	mov    eax,DWORD PTR [esp+0x1e4]
  65fd96:	50                   	push   eax
  65fd97:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  65fd9e:	e8 0d 1c 25 00       	call   0x8b19b0
  65fda3:	8b 8c 24 b4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1b4]
  65fdaa:	51                   	push   ecx
  65fdab:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  65fdb2:	e8 f9 1b 25 00       	call   0x8b19b0
  65fdb7:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65fdbb:	3b ce                	cmp    ecx,esi
  65fdbd:	e9 64 f2 ff ff       	jmp    0x65f026
  65fdc2:	33 f6                	xor    esi,esi
  65fdc4:	80 7c 24 2b 00       	cmp    BYTE PTR [esp+0x2b],0x0
  65fdc9:	bf 9c e4 fe 00       	mov    edi,0xfee49c
  65fdce:	0f 85 30 01 00 00    	jne    0x65ff04
  65fdd4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  65fdd7:	d9 84 24 14 01 00 00 	fld    DWORD PTR [esp+0x114]
  65fdde:	6a 01                	push   0x1
  65fde0:	56                   	push   esi
  65fde1:	52                   	push   edx
  65fde2:	8b 94 24 04 01 00 00 	mov    edx,DWORD PTR [esp+0x104]
  65fde9:	8d 84 24 10 01 00 00 	lea    eax,[esp+0x110]
  65fdf0:	50                   	push   eax
  65fdf1:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65fdf4:	8b c8                	mov    ecx,eax
  65fdf6:	81 e1 00 80 00 49    	and    ecx,0x49008000
  65fdfc:	f7 d9                	neg    ecx
  65fdfe:	1b c9                	sbb    ecx,ecx
  65fe00:	25 00 00 00 10       	and    eax,0x10000000
  65fe05:	0d 00 00 80 00       	or     eax,0x800000
  65fe0a:	81 e1 00 10 00 00    	and    ecx,0x1000
  65fe10:	c1 e8 0f             	shr    eax,0xf
  65fe13:	0b c8                	or     ecx,eax
  65fe15:	0b 4d 30             	or     ecx,DWORD PTR [ebp+0x30]
  65fe18:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  65fe1c:	51                   	push   ecx
  65fe1d:	52                   	push   edx
  65fe1e:	50                   	push   eax
  65fe1f:	83 ec 10             	sub    esp,0x10
  65fe22:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  65fe26:	8b cb                	mov    ecx,ebx
  65fe28:	d9 84 24 44 01 00 00 	fld    DWORD PTR [esp+0x144]
  65fe2f:	89 b4 24 30 01 00 00 	mov    DWORD PTR [esp+0x130],esi
  65fe36:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  65fe3a:	89 b4 24 34 01 00 00 	mov    DWORD PTR [esp+0x134],esi
  65fe41:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  65fe45:	89 b4 24 38 01 00 00 	mov    DWORD PTR [esp+0x138],esi
  65fe4c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65fe50:	89 bc 24 3c 01 00 00 	mov    DWORD PTR [esp+0x13c],edi
  65fe57:	d9 44 24 74          	fld    DWORD PTR [esp+0x74]
  65fe5b:	d9 1c 24             	fstp   DWORD PTR [esp]
  65fe5e:	e8 7d c1 ff ff       	call   0x65bfe0
  65fe63:	84 c0                	test   al,al
  65fe65:	8b 84 24 04 01 00 00 	mov    eax,DWORD PTR [esp+0x104]
  65fe6c:	75 6f                	jne    0x65fedd
  65fe6e:	3b c6                	cmp    eax,esi
  65fe70:	74 09                	je     0x65fe7b
  65fe72:	50                   	push   eax
  65fe73:	e8 68 46 e8 ff       	call   0x4e44e0
  65fe78:	83 c4 04             	add    esp,0x4
  65fe7b:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  65fe7f:	3b ce                	cmp    ecx,esi
  65fe81:	74 07                	je     0x65fe8a
  65fe83:	8b 11                	mov    edx,DWORD PTR [ecx]
  65fe85:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  65fe88:	ff d0                	call   eax
  65fe8a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  65fe8e:	3b ce                	cmp    ecx,esi
  65fe90:	74 07                	je     0x65fe99
  65fe92:	8b 11                	mov    edx,DWORD PTR [ecx]
  65fe94:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  65fe97:	ff d0                	call   eax
  65fe99:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  65fe9d:	3b c6                	cmp    eax,esi
  65fe9f:	74 09                	je     0x65feaa
  65fea1:	50                   	push   eax
  65fea2:	e8 39 46 e8 ff       	call   0x4e44e0
  65fea7:	83 c4 04             	add    esp,0x4
  65feaa:	8b 8c 24 e4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1e4]
  65feb1:	51                   	push   ecx
  65feb2:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  65feb9:	e8 f2 1a 25 00       	call   0x8b19b0
  65febe:	8b 94 24 b4 01 00 00 	mov    edx,DWORD PTR [esp+0x1b4]
  65fec5:	52                   	push   edx
  65fec6:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  65fecd:	e8 de 1a 25 00       	call   0x8b19b0
  65fed2:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  65fed6:	3b ce                	cmp    ecx,esi
  65fed8:	e9 49 f1 ff ff       	jmp    0x65f026
  65fedd:	3b 84 24 08 01 00 00 	cmp    eax,DWORD PTR [esp+0x108]
  65fee4:	74 06                	je     0x65feec
  65fee6:	8b 08                	mov    ecx,DWORD PTR [eax]
  65fee8:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  65feec:	3b c6                	cmp    eax,esi
  65feee:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  65fef2:	89 94 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],edx
  65fef9:	74 09                	je     0x65ff04
  65fefb:	50                   	push   eax
  65fefc:	e8 df 45 e8 ff       	call   0x4e44e0
  65ff01:	83 c4 04             	add    esp,0x4
  65ff04:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  65ff07:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  65ff0a:	2b 08                	sub    ecx,DWORD PTR [eax]
  65ff0c:	b8 93 24 49 92       	mov    eax,0x92492493
  65ff11:	f7 e9                	imul   ecx
  65ff13:	03 d1                	add    edx,ecx
  65ff15:	c1 fa 04             	sar    edx,0x4
  65ff18:	8b c2                	mov    eax,edx
  65ff1a:	c1 e8 1f             	shr    eax,0x1f
  65ff1d:	03 c2                	add    eax,edx
  65ff1f:	83 f8 01             	cmp    eax,0x1
  65ff22:	0f 85 e0 00 00 00    	jne    0x660008
  65ff28:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  65ff2b:	d9 84 24 fc 00 00 00 	fld    DWORD PTR [esp+0xfc]
  65ff32:	50                   	push   eax
  65ff33:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  65ff36:	56                   	push   esi
  65ff37:	51                   	push   ecx
  65ff38:	8b c8                	mov    ecx,eax
  65ff3a:	81 e1 00 00 00 89    	and    ecx,0x89000000
  65ff40:	f7 d9                	neg    ecx
  65ff42:	1b c9                	sbb    ecx,ecx
  65ff44:	81 e1 00 10 00 00    	and    ecx,0x1000
  65ff4a:	c1 e8 10             	shr    eax,0x10
  65ff4d:	25 00 20 00 00       	and    eax,0x2000
  65ff52:	0b c8                	or     ecx,eax
  65ff54:	0b 4d 30             	or     ecx,DWORD PTR [ebp+0x30]
  65ff57:	8d 94 24 28 01 00 00 	lea    edx,[esp+0x128]
  65ff5e:	52                   	push   edx
  65ff5f:	51                   	push   ecx
  65ff60:	56                   	push   esi
  65ff61:	56                   	push   esi
  65ff62:	83 ec 10             	sub    esp,0x10
  65ff65:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  65ff69:	8b cb                	mov    ecx,ebx
  65ff6b:	d9 84 24 2c 01 00 00 	fld    DWORD PTR [esp+0x12c]
  65ff72:	89 74 24 64          	mov    DWORD PTR [esp+0x64],esi
  65ff76:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  65ff7a:	89 b4 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],esi
  65ff81:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  65ff85:	89 b4 24 4c 01 00 00 	mov    DWORD PTR [esp+0x14c],esi
  65ff8c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  65ff90:	89 b4 24 50 01 00 00 	mov    DWORD PTR [esp+0x150],esi
  65ff97:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  65ff9b:	89 bc 24 54 01 00 00 	mov    DWORD PTR [esp+0x154],edi
  65ffa2:	d9 1c 24             	fstp   DWORD PTR [esp]
  65ffa5:	e8 36 c0 ff ff       	call   0x65bfe0
  65ffaa:	84 c0                	test   al,al
  65ffac:	8b bc 24 1c 01 00 00 	mov    edi,DWORD PTR [esp+0x11c]
  65ffb3:	74 3d                	je     0x65fff2
  65ffb5:	8b 17                	mov    edx,DWORD PTR [edi]
  65ffb7:	8d 84 24 a8 00 00 00 	lea    eax,[esp+0xa8]
  65ffbe:	50                   	push   eax
  65ffbf:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  65ffc3:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  65ffc6:	8d 8c 24 94 01 00 00 	lea    ecx,[esp+0x194]
  65ffcd:	51                   	push   ecx
  65ffce:	52                   	push   edx
  65ffcf:	8b 53 14             	mov    edx,DWORD PTR [ebx+0x14]
  65ffd2:	8d 44 24 50          	lea    eax,[esp+0x50]
  65ffd6:	50                   	push   eax
  65ffd7:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  65ffda:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  65ffde:	51                   	push   ecx
  65ffdf:	52                   	push   edx
  65ffe0:	50                   	push   eax
  65ffe1:	8d 4b 18             	lea    ecx,[ebx+0x18]
  65ffe4:	c6 44 24 2f 01       	mov    BYTE PTR [esp+0x2f],0x1
  65ffe9:	e8 d2 64 01 00       	call   0x6764c0
  65ffee:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  65fff2:	3b fe                	cmp    edi,esi
  65fff4:	0f 84 a3 02 00 00    	je     0x66029d
  65fffa:	57                   	push   edi
  65fffb:	e8 e0 44 e8 ff       	call   0x4e44e0
  660000:	83 c4 04             	add    esp,0x4
  660003:	e9 95 02 00 00       	jmp    0x66029d
  660008:	8b 8b 04 01 00 00    	mov    ecx,DWORD PTR [ebx+0x104]
  66000e:	8b 93 00 01 00 00    	mov    edx,DWORD PTR [ebx+0x100]
  660014:	8d bb fc 00 00 00    	lea    edi,[ebx+0xfc]
  66001a:	51                   	push   ecx
  66001b:	52                   	push   edx
  66001c:	8b cf                	mov    ecx,edi
  66001e:	c7 44 24 48 ff ff ff ff 	mov    DWORD PTR [esp+0x48],0xffffffff
  660026:	e8 e5 03 48 00       	call   0xae0410
  66002b:	39 74 24 70          	cmp    DWORD PTR [esp+0x70],esi
  66002f:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  660032:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  660036:	0f 86 6c 02 00 00    	jbe    0x6602a8
  66003c:	8d 64 24 00          	lea    esp,[esp+0x0]
  660040:	83 7c 24 6c 00       	cmp    DWORD PTR [esp+0x6c],0x0
  660045:	0f 85 e4 01 00 00    	jne    0x66022f
  66004b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  66004f:	8b 4c 24 74          	mov    ecx,DWORD PTR [esp+0x74]
  660053:	8b 34 c1             	mov    esi,DWORD PTR [ecx+eax*8]
  660056:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  660059:	8b 08                	mov    ecx,DWORD PTR [eax]
  66005b:	6a 01                	push   0x1
  66005d:	8d 14 f5 00 00 00 00 	lea    edx,[esi*8+0x0]
  660064:	2b d6                	sub    edx,esi
  660066:	d9 04 91             	fld    DWORD PTR [ecx+edx*4]
  660069:	8d 04 91             	lea    eax,[ecx+edx*4]
  66006c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  66006f:	d9 54 24 24          	fst    DWORD PTR [esp+0x24]
  660073:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  660076:	33 c9                	xor    ecx,ecx
  660078:	51                   	push   ecx
  660079:	d9 54 24 34          	fst    DWORD PTR [esp+0x34]
  66007d:	52                   	push   edx
  66007e:	d9 84 24 08 01 00 00 	fld    DWORD PTR [esp+0x108]
  660085:	8d 44 24 68          	lea    eax,[esp+0x68]
  660089:	50                   	push   eax
  66008a:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  66008d:	8b d0                	mov    edx,eax
  66008f:	81 e2 00 00 00 89    	and    edx,0x89000000
  660095:	f7 da                	neg    edx
  660097:	1b d2                	sbb    edx,edx
  660099:	c1 e8 10             	shr    eax,0x10
  66009c:	81 e2 00 10 00 00    	and    edx,0x1000
  6600a2:	25 00 20 00 00       	and    eax,0x2000
  6600a7:	0b d0                	or     edx,eax
  6600a9:	0b 55 30             	or     edx,DWORD PTR [ebp+0x30]
  6600ac:	89 4c 24 6c          	mov    DWORD PTR [esp+0x6c],ecx
  6600b0:	52                   	push   edx
  6600b1:	51                   	push   ecx
  6600b2:	51                   	push   ecx
  6600b3:	83 ec 10             	sub    esp,0x10
  6600b6:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  6600ba:	89 8c 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],ecx
  6600c1:	d9 84 24 2c 01 00 00 	fld    DWORD PTR [esp+0x12c]
  6600c8:	89 8c 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],ecx
  6600cf:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  6600d3:	8b cb                	mov    ecx,ebx
  6600d5:	c7 84 24 94 00 00 00 9c e4 fe 00 	mov    DWORD PTR [esp+0x94],0xfee49c
  6600e0:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6600e4:	d9 1c 24             	fstp   DWORD PTR [esp]
  6600e7:	e8 f4 be ff ff       	call   0x65bfe0
  6600ec:	84 c0                	test   al,al
  6600ee:	0f 84 12 01 00 00    	je     0x660206
  6600f4:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  6600f8:	8b 00                	mov    eax,DWORD PTR [eax]
  6600fa:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  6600fe:	0f b7 4c 24 44       	movzx  ecx,WORD PTR [esp+0x44]
  660103:	c1 e1 0a             	shl    ecx,0xa
  660106:	c1 e8 10             	shr    eax,0x10
  660109:	03 c1                	add    eax,ecx
  66010b:	89 8c 24 f4 00 00 00 	mov    DWORD PTR [esp+0xf4],ecx
  660112:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  660116:	51                   	push   ecx
  660117:	8d 94 24 3c 01 00 00 	lea    edx,[esp+0x13c]
  66011e:	52                   	push   edx
  66011f:	8b cf                	mov    ecx,edi
  660121:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  660125:	e8 96 25 25 00       	call   0x8b26c0
  66012a:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  66012d:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  660130:	8b 94 24 38 01 00 00 	mov    edx,DWORD PTR [esp+0x138]
  660137:	3b 14 81             	cmp    edx,DWORD PTR [ecx+eax*4]
  66013a:	74 0a                	je     0x660146
  66013c:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  660140:	50                   	push   eax
  660141:	e9 cc 00 00 00       	jmp    0x660212
  660146:	0f b7 4c 24 46       	movzx  ecx,WORD PTR [esp+0x46]
  66014b:	03 8c 24 f4 00 00 00 	add    ecx,DWORD PTR [esp+0xf4]
  660152:	c6 84 24 ac 00 00 00 00 	mov    BYTE PTR [esp+0xac],0x0
  66015a:	8b 94 24 ac 00 00 00 	mov    edx,DWORD PTR [esp+0xac]
  660161:	52                   	push   edx
  660162:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  660166:	8d 44 24 38          	lea    eax,[esp+0x38]
  66016a:	50                   	push   eax
  66016b:	8d 8c 24 98 00 00 00 	lea    ecx,[esp+0x98]
  660172:	51                   	push   ecx
  660173:	8b cf                	mov    ecx,edi
  660175:	e8 46 5a 05 00       	call   0x6b5bc0
  66017a:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  66017e:	52                   	push   edx
  66017f:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  660183:	e8 b8 03 ff ff       	call   0x650540
  660188:	84 c0                	test   al,al
  66018a:	74 3b                	je     0x6601c7
  66018c:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  660192:	f3 0f 5c 4c 24 48    	subss  xmm1,DWORD PTR [esp+0x48]
  660198:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  66019e:	f3 0f 5c 44 24 4c    	subss  xmm0,DWORD PTR [esp+0x4c]
  6601a4:	0f 28 d1             	movaps xmm2,xmm1
  6601a7:	f3 0f 59 d1          	mulss  xmm2,xmm1
  6601ab:	0f 28 c8             	movaps xmm1,xmm0
  6601ae:	f3 0f 59 c8          	mulss  xmm1,xmm0
  6601b2:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  6601ba:	f3 0f 58 d1          	addss  xmm2,xmm1
  6601be:	0f 2f c2             	comiss xmm0,xmm2
  6601c1:	0f 87 0f 02 00 00    	ja     0x6603d6
  6601c7:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  6601ca:	8d 84 24 a8 00 00 00 	lea    eax,[esp+0xa8]
  6601d1:	50                   	push   eax
  6601d2:	8d 8c 24 94 01 00 00 	lea    ecx,[esp+0x194]
  6601d9:	51                   	push   ecx
  6601da:	52                   	push   edx
  6601db:	8b 53 14             	mov    edx,DWORD PTR [ebx+0x14]
  6601de:	8d 44 24 50          	lea    eax,[esp+0x50]
  6601e2:	50                   	push   eax
  6601e3:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  6601e6:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  6601ea:	51                   	push   ecx
  6601eb:	52                   	push   edx
  6601ec:	50                   	push   eax
  6601ed:	8d 4b 18             	lea    ecx,[ebx+0x18]
  6601f0:	c6 44 24 2f 01       	mov    BYTE PTR [esp+0x2f],0x1
  6601f5:	e8 c6 62 01 00       	call   0x6764c0
  6601fa:	85 c0                	test   eax,eax
  6601fc:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  660200:	74 04                	je     0x660206
  660202:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
  660206:	83 7c 24 5c 00       	cmp    DWORD PTR [esp+0x5c],0x0
  66020b:	74 0d                	je     0x66021a
  66020d:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  660211:	51                   	push   ecx
  660212:	e8 c9 42 e8 ff       	call   0x4e44e0
  660217:	83 c4 04             	add    esp,0x4
  66021a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  66021e:	83 c0 01             	add    eax,0x1
  660221:	3b 44 24 70          	cmp    eax,DWORD PTR [esp+0x70]
  660225:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  660229:	0f 82 11 fe ff ff    	jb     0x660040
  66022f:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  660233:	85 f6                	test   esi,esi
  660235:	7c 66                	jl     0x66029d
  660237:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  66023a:	8b 38                	mov    edi,DWORD PTR [eax]
  66023c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  66023f:	2b cf                	sub    ecx,edi
  660241:	b8 93 24 49 92       	mov    eax,0x92492493
  660246:	f7 e9                	imul   ecx
  660248:	03 d1                	add    edx,ecx
  66024a:	c1 fa 04             	sar    edx,0x4
  66024d:	8b ca                	mov    ecx,edx
  66024f:	c1 e9 1f             	shr    ecx,0x1f
  660252:	03 ca                	add    ecx,edx
  660254:	3b f1                	cmp    esi,ecx
  660256:	7d 45                	jge    0x66029d
  660258:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  66025c:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  66025f:	6a 01                	push   0x1
  660261:	6a 00                	push   0x0
  660263:	6a 00                	push   0x0
  660265:	6a 00                	push   0x0
  660267:	6a 00                	push   0x0
  660269:	6a 00                	push   0x0
  66026b:	8d 14 f5 00 00 00 00 	lea    edx,[esi*8+0x0]
  660272:	2b d6                	sub    edx,esi
  660274:	6a 00                	push   0x0
  660276:	8d 04 97             	lea    eax,[edi+edx*4]
  660279:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  66027c:	6a 01                	push   0x1
  66027e:	50                   	push   eax
  66027f:	83 ec 08             	sub    esp,0x8
  660282:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  660286:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  66028a:	d9 1c 24             	fstp   DWORD PTR [esp]
  66028d:	e8 ee a0 60 00       	call   0xc6a380
  660292:	d9 9c 24 84 00 00 00 	fstp   DWORD PTR [esp+0x84]
  660299:	89 74 24 38          	mov    DWORD PTR [esp+0x38],esi
  66029d:	83 7c 24 6c 00       	cmp    DWORD PTR [esp+0x6c],0x0
  6602a2:	0f 85 2d 03 00 00    	jne    0x6605d5
  6602a8:	f6 45 28 0f          	test   BYTE PTR [ebp+0x28],0xf
  6602ac:	0f 84 ba 00 00 00    	je     0x66036c
  6602b2:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
  6602b9:	66 3d ff ff          	cmp    ax,0xffff
  6602bd:	0f 84 a9 00 00 00    	je     0x66036c
  6602c3:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
  6602c6:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  6602ca:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  6602cd:	0f b7 b4 24 aa 00 00 00 	movzx  esi,WORD PTR [esp+0xaa]
  6602d5:	0f b7 c0             	movzx  eax,ax
  6602d8:	8b 0c 81             	mov    ecx,DWORD PTR [ecx+eax*4]
  6602db:	03 4a 0c             	add    ecx,DWORD PTR [edx+0xc]
  6602de:	0f b7 74 71 02       	movzx  esi,WORD PTR [ecx+esi*2+0x2]
  6602e3:	03 f1                	add    esi,ecx
  6602e5:	8b 0a                	mov    ecx,DWORD PTR [edx]
  6602e7:	33 d2                	xor    edx,edx
  6602e9:	f7 f1                	div    ecx
  6602eb:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  6602ee:	51                   	push   ecx
  6602ef:	0f b6 4e 04          	movzx  ecx,BYTE PTR [esi+0x4]
  6602f3:	83 ec 10             	sub    esp,0x10
  6602f6:	89 4c 24 48          	mov    DWORD PTR [esp+0x48],ecx
  6602fa:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  6602fe:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  660302:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  660306:	db 44 24 48          	fild   DWORD PTR [esp+0x48]
  66030a:	d9 05 f8 92 fe 00    	fld    DWORD PTR ds:0xfe92f8
  660310:	dc c9                	fmul   st(1),st
  660312:	85 c0                	test   eax,eax
  660314:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
  66031b:	db 84 24 a4 00 00 00 	fild   DWORD PTR [esp+0xa4]
  660322:	7d 06                	jge    0x66032a
  660324:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  66032a:	85 d2                	test   edx,edx
  66032c:	d9 05 60 bf fe 00    	fld    DWORD PTR ds:0xfebf60
  660332:	0f b6 46 03          	movzx  eax,BYTE PTR [esi+0x3]
  660336:	dc c9                	fmul   st(1),st
  660338:	d9 cb                	fxch   st(3)
  66033a:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  66033e:	89 94 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],edx
  660345:	de c1                	faddp  st(1),st
  660347:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  66034b:	da 4c 24 48          	fimul  DWORD PTR [esp+0x48]
  66034f:	db 84 24 a4 00 00 00 	fild   DWORD PTR [esp+0xa4]
  660356:	7d 06                	jge    0x66035e
  660358:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  66035e:	de ca                	fmulp  st(2),st
  660360:	8b cb                	mov    ecx,ebx
  660362:	de c1                	faddp  st(1),st
  660364:	d9 1c 24             	fstp   DWORD PTR [esp]
  660367:	e8 d4 94 ff ff       	call   0x659840
  66036c:	33 c9                	xor    ecx,ecx
  66036e:	38 4c 24 13          	cmp    BYTE PTR [esp+0x13],cl
  660372:	0f 95 c1             	setne  cl
  660375:	83 c1 04             	add    ecx,0x4
  660378:	8b f1                	mov    esi,ecx
  66037a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  66037e:	85 c9                	test   ecx,ecx
  660380:	74 07                	je     0x660389
  660382:	8b 11                	mov    edx,DWORD PTR [ecx]
  660384:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  660387:	ff d0                	call   eax
  660389:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  66038d:	85 c9                	test   ecx,ecx
  66038f:	74 07                	je     0x660398
  660391:	8b 11                	mov    edx,DWORD PTR [ecx]
  660393:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  660396:	ff d0                	call   eax
  660398:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  66039c:	85 c0                	test   eax,eax
  66039e:	74 09                	je     0x6603a9
  6603a0:	50                   	push   eax
  6603a1:	e8 3a 41 e8 ff       	call   0x4e44e0
  6603a6:	83 c4 04             	add    esp,0x4
  6603a9:	8b 8c 24 e4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1e4]
  6603b0:	51                   	push   ecx
  6603b1:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  6603b8:	e8 f3 15 25 00       	call   0x8b19b0
  6603bd:	8b 94 24 b4 01 00 00 	mov    edx,DWORD PTR [esp+0x1b4]
  6603c4:	52                   	push   edx
  6603c5:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  6603cc:	e8 df 15 25 00       	call   0x8b19b0
  6603d1:	e9 72 f9 ff ff       	jmp    0x65fd48
  6603d6:	83 7d 1c 00          	cmp    DWORD PTR [ebp+0x1c],0x0
  6603da:	0f 84 79 01 00 00    	je     0x660559
  6603e0:	6a 00                	push   0x0
  6603e2:	6a 00                	push   0x0
  6603e4:	6a 00                	push   0x0
  6603e6:	6a 00                	push   0x0
  6603e8:	68 a0 d8 fe 00       	push   0xfed8a0
  6603ed:	6a 18                	push   0x18
  6603ef:	e8 0c 41 e8 ff       	call   0x4e4500
  6603f4:	83 c4 18             	add    esp,0x18
  6603f7:	85 c0                	test   eax,eax
  6603f9:	74 09                	je     0x660404
  6603fb:	8b c8                	mov    ecx,eax
  6603fd:	e8 1e ea fe ff       	call   0x64ee20
  660402:	eb 02                	jmp    0x660406
  660404:	33 c0                	xor    eax,eax
  660406:	50                   	push   eax
  660407:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  66040b:	e8 60 cf 19 00       	call   0x7fd370
  660410:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  660414:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  660417:	89 3a                	mov    DWORD PTR [edx],edi
  660419:	8b 07                	mov    eax,DWORD PTR [edi]
  66041b:	8b 10                	mov    edx,DWORD PTR [eax]
  66041d:	8b cf                	mov    ecx,edi
  66041f:	ff d2                	call   edx
  660421:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  660428:	e8 e3 16 fe ff       	call   0x641b10
  66042d:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  660433:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  66043c:	f3 0f 10 84 24 a4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa4]
  660445:	8d 84 24 b0 00 00 00 	lea    eax,[esp+0xb0]
  66044c:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  660455:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  66045b:	50                   	push   eax
  66045c:	8b cf                	mov    ecx,edi
  66045e:	f3 0f 11 84 24 bc 00 00 00 	movss  DWORD PTR [esp+0xbc],xmm0
  660467:	c7 84 24 d0 00 00 00 06 00 00 00 	mov    DWORD PTR [esp+0xd0],0x6
  660472:	e8 e9 a5 fc ff       	call   0x62aa60
  660477:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  66047b:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  66047e:	8b 02                	mov    eax,DWORD PTR [edx]
  660480:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  660486:	6a 01                	push   0x1
  660488:	6a 00                	push   0x0
  66048a:	6a 00                	push   0x0
  66048c:	6a 00                	push   0x0
  66048e:	6a 00                	push   0x0
  660490:	6a 00                	push   0x0
  660492:	8d 0c f5 00 00 00 00 	lea    ecx,[esi*8+0x0]
  660499:	2b ce                	sub    ecx,esi
  66049b:	6a 00                	push   0x0
  66049d:	8d 04 88             	lea    eax,[eax+ecx*4]
  6604a0:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  6604a3:	6a 01                	push   0x1
  6604a5:	51                   	push   ecx
  6604a6:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  6604a9:	83 ec 08             	sub    esp,0x8
  6604ac:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6604b0:	f3 0f 11 84 24 dc 00 00 00 	movss  DWORD PTR [esp+0xdc],xmm0
  6604b9:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  6604bd:	d9 1c 24             	fstp   DWORD PTR [esp]
  6604c0:	e8 bb 9e 60 00       	call   0xc6a380
  6604c5:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  6604cb:	d9 9c 24 b4 00 00 00 	fstp   DWORD PTR [esp+0xb4]
  6604d2:	8d 94 24 b0 00 00 00 	lea    edx,[esp+0xb0]
  6604d9:	52                   	push   edx
  6604da:	8b cf                	mov    ecx,edi
  6604dc:	f3 0f 11 84 24 bc 00 00 00 	movss  DWORD PTR [esp+0xbc],xmm0
  6604e5:	c7 84 24 d0 00 00 00 07 00 00 00 	mov    DWORD PTR [esp+0xd0],0x7
  6604f0:	e8 6b a5 fc ff       	call   0x62aa60
  6604f5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6604f8:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  6604fb:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  6604fe:	50                   	push   eax
  6604ff:	53                   	push   ebx
  660500:	51                   	push   ecx
  660501:	52                   	push   edx
  660502:	8d 8c 24 a8 02 00 00 	lea    ecx,[esp+0x2a8]
  660509:	e8 d2 3d fe ff       	call   0x6442e0
  66050e:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  660511:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  660514:	6a 01                	push   0x1
  660516:	50                   	push   eax
  660517:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  66051b:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  660522:	2b c8                	sub    ecx,eax
  660524:	8b 02                	mov    eax,DWORD PTR [edx]
  660526:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  66052a:	8d 0c 88             	lea    ecx,[eax+ecx*4]
  66052d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  660530:	c1 e2 05             	shl    edx,0x5
  660533:	03 10                	add    edx,DWORD PTR [eax]
  660535:	51                   	push   ecx
  660536:	52                   	push   edx
  660537:	57                   	push   edi
  660538:	8d 8c 24 ac 02 00 00 	lea    ecx,[esp+0x2ac]
  66053f:	e8 bc e6 fe ff       	call   0x64ec00
  660544:	8d 8c 24 98 02 00 00 	lea    ecx,[esp+0x298]
  66054b:	e8 b0 38 fe ff       	call   0x643e00
  660550:	8b 17                	mov    edx,DWORD PTR [edi]
  660552:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  660555:	8b cf                	mov    ecx,edi
  660557:	ff d0                	call   eax
  660559:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  66055d:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  660560:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  660563:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  660566:	83 ec 08             	sub    esp,0x8
  660569:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  66056d:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  660571:	d9 1c 24             	fstp   DWORD PTR [esp]
  660574:	51                   	push   ecx
  660575:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  660579:	52                   	push   edx
  66057a:	56                   	push   esi
  66057b:	50                   	push   eax
  66057c:	51                   	push   ecx
  66057d:	8b cb                	mov    ecx,ebx
  66057f:	e8 2c 0c ff ff       	call   0x6511b0
  660584:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  660588:	85 c0                	test   eax,eax
  66058a:	74 09                	je     0x660595
  66058c:	50                   	push   eax
  66058d:	e8 4e 3f e8 ff       	call   0x4e44e0
  660592:	83 c4 04             	add    esp,0x4
  660595:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  660599:	85 c9                	test   ecx,ecx
  66059b:	74 07                	je     0x6605a4
  66059d:	8b 11                	mov    edx,DWORD PTR [ecx]
  66059f:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6605a2:	ff d0                	call   eax
  6605a4:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6605a8:	85 c9                	test   ecx,ecx
  6605aa:	74 07                	je     0x6605b3
  6605ac:	8b 11                	mov    edx,DWORD PTR [ecx]
  6605ae:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6605b1:	ff d0                	call   eax
  6605b3:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  6605b7:	85 c0                	test   eax,eax
  6605b9:	74 09                	je     0x6605c4
  6605bb:	50                   	push   eax
  6605bc:	e8 1f 3f e8 ff       	call   0x4e44e0
  6605c1:	83 c4 04             	add    esp,0x4
  6605c4:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  6605cb:	e8 f0 27 ff ff       	call   0x652dc0
  6605d0:	e9 72 e6 ff ff       	jmp    0x65ec47
  6605d5:	8b 74 24 6c          	mov    esi,DWORD PTR [esp+0x6c]
  6605d9:	8d 44 24 5c          	lea    eax,[esp+0x5c]
  6605dd:	33 ff                	xor    edi,edi
  6605df:	50                   	push   eax
  6605e0:	56                   	push   esi
  6605e1:	8b cb                	mov    ecx,ebx
  6605e3:	89 7c 24 64          	mov    DWORD PTR [esp+0x64],edi
  6605e7:	89 7c 24 68          	mov    DWORD PTR [esp+0x68],edi
  6605eb:	89 7c 24 6c          	mov    DWORD PTR [esp+0x6c],edi
  6605ef:	c7 44 24 70 dc e4 fe 00 	mov    DWORD PTR [esp+0x70],0xfee4dc
  6605f7:	e8 f4 64 ff ff       	call   0x656af0
  6605fc:	56                   	push   esi
  6605fd:	8d 4b 18             	lea    ecx,[ebx+0x18]
  660600:	e8 3b 40 01 00       	call   0x674640
  660605:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  660609:	2b 4c 24 5c          	sub    ecx,DWORD PTR [esp+0x5c]
  66060d:	b8 67 66 66 66       	mov    eax,0x66666667
  660612:	f7 e9                	imul   ecx
  660614:	57                   	push   edi
  660615:	57                   	push   edi
  660616:	c1 fa 03             	sar    edx,0x3
  660619:	57                   	push   edi
  66061a:	8b f2                	mov    esi,edx
  66061c:	57                   	push   edi
  66061d:	c1 ee 1f             	shr    esi,0x1f
  660620:	03 f2                	add    esi,edx
  660622:	68 a0 d8 fe 00       	push   0xfed8a0
  660627:	6a 18                	push   0x18
  660629:	89 b4 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],esi
  660630:	e8 cb 3e e8 ff       	call   0x4e4500
  660635:	83 c4 18             	add    esp,0x18
  660638:	3b c7                	cmp    eax,edi
  66063a:	0f 84 9e 00 00 00    	je     0x6606de
  660640:	8b c8                	mov    ecx,eax
  660642:	e8 d9 e7 fe ff       	call   0x64ee20
  660647:	8b f8                	mov    edi,eax
  660649:	85 ff                	test   edi,edi
  66064b:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  66064f:	74 08                	je     0x660659
  660651:	8b 17                	mov    edx,DWORD PTR [edi]
  660653:	8b 02                	mov    eax,DWORD PTR [edx]
  660655:	8b cf                	mov    ecx,edi
  660657:	ff d0                	call   eax
  660659:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  66065c:	85 c0                	test   eax,eax
  66065e:	74 0a                	je     0x66066a
  660660:	89 38                	mov    DWORD PTR [eax],edi
  660662:	8b 17                	mov    edx,DWORD PTR [edi]
  660664:	8b 02                	mov    eax,DWORD PTR [edx]
  660666:	8b cf                	mov    ecx,edi
  660668:	ff d0                	call   eax
  66066a:	85 f6                	test   esi,esi
  66066c:	0f 85 01 02 00 00    	jne    0x660873
  660672:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  660679:	e8 92 14 fe ff       	call   0x641b10
  66067e:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  660684:	8d 4f 08             	lea    ecx,[edi+0x8]
  660687:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
  66068a:	3b 79 08             	cmp    edi,DWORD PTR [ecx+0x8]
  66068d:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  660696:	f3 0f 10 84 24 a4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa4]
  66069f:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  6606a8:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  6606ae:	f3 0f 11 84 24 b8 00 00 00 	movss  DWORD PTR [esp+0xb8],xmm0
  6606b7:	c7 84 24 cc 00 00 00 06 00 00 00 	mov    DWORD PTR [esp+0xcc],0x6
  6606c2:	73 23                	jae    0x6606e7
  6606c4:	85 ff                	test   edi,edi
  6606c6:	8d 57 40             	lea    edx,[edi+0x40]
  6606c9:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  6606cc:	74 27                	je     0x6606f5
  6606ce:	b9 10 00 00 00       	mov    ecx,0x10
  6606d3:	8d b4 24 b0 00 00 00 	lea    esi,[esp+0xb0]
  6606da:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  6606dc:	eb 17                	jmp    0x6606f5
  6606de:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  6606e2:	e9 72 ff ff ff       	jmp    0x660659
  6606e7:	8d 84 24 b0 00 00 00 	lea    eax,[esp+0xb0]
  6606ee:	50                   	push   eax
  6606ef:	57                   	push   edi
  6606f0:	e8 db ed 42 00       	call   0xa8f4d0
  6606f5:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  6606f9:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  6606ff:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
  660702:	83 c0 08             	add    eax,0x8
  660705:	3b 78 08             	cmp    edi,DWORD PTR [eax+0x8]
  660708:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  660711:	f3 0f 10 84 24 84 00 00 00 	movss  xmm0,DWORD PTR [esp+0x84]
  66071a:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  660723:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  660729:	f3 0f 11 84 24 b8 00 00 00 	movss  DWORD PTR [esp+0xb8],xmm0
  660732:	c7 84 24 cc 00 00 00 07 00 00 00 	mov    DWORD PTR [esp+0xcc],0x7
  66073d:	73 1a                	jae    0x660759
  66073f:	85 ff                	test   edi,edi
  660741:	8d 4f 40             	lea    ecx,[edi+0x40]
  660744:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  660747:	74 25                	je     0x66076e
  660749:	b9 10 00 00 00       	mov    ecx,0x10
  66074e:	8d b4 24 b0 00 00 00 	lea    esi,[esp+0xb0]
  660755:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  660757:	eb 15                	jmp    0x66076e
  660759:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  66075d:	8d 94 24 b0 00 00 00 	lea    edx,[esp+0xb0]
  660764:	52                   	push   edx
  660765:	57                   	push   edi
  660766:	83 c1 08             	add    ecx,0x8
  660769:	e8 62 ed 42 00       	call   0xa8f4d0
  66076e:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  660772:	8b 75 18             	mov    esi,DWORD PTR [ebp+0x18]
  660775:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  660778:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  66077c:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  66077f:	83 ec 08             	sub    esp,0x8
  660782:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  660786:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  66078a:	d9 1c 24             	fstp   DWORD PTR [esp]
  66078d:	56                   	push   esi
  66078e:	50                   	push   eax
  66078f:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  660793:	51                   	push   ecx
  660794:	52                   	push   edx
  660795:	50                   	push   eax
  660796:	8b cb                	mov    ecx,ebx
  660798:	e8 13 0a ff ff       	call   0x6511b0
  66079d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  6607a0:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  6607a3:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  6607a6:	51                   	push   ecx
  6607a7:	53                   	push   ebx
  6607a8:	52                   	push   edx
  6607a9:	50                   	push   eax
  6607aa:	8d 8c 24 a8 02 00 00 	lea    ecx,[esp+0x2a8]
  6607b1:	e8 2a 3b fe ff       	call   0x6442e0
  6607b6:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  6607ba:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  6607bd:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
  6607c4:	2b d0                	sub    edx,eax
  6607c6:	8b 06                	mov    eax,DWORD PTR [esi]
  6607c8:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  6607cc:	6a 01                	push   0x1
  6607ce:	51                   	push   ecx
  6607cf:	8d 0c 90             	lea    ecx,[eax+edx*4]
  6607d2:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  6607d6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  6607d9:	c1 e2 05             	shl    edx,0x5
  6607dc:	03 10                	add    edx,DWORD PTR [eax]
  6607de:	51                   	push   ecx
  6607df:	52                   	push   edx
  6607e0:	56                   	push   esi
  6607e1:	8d 8c 24 ac 02 00 00 	lea    ecx,[esp+0x2ac]
  6607e8:	e8 13 e4 fe ff       	call   0x64ec00
  6607ed:	8d 8c 24 98 02 00 00 	lea    ecx,[esp+0x298]
  6607f4:	e8 07 36 fe ff       	call   0x643e00
  6607f9:	85 f6                	test   esi,esi
  6607fb:	74 09                	je     0x660806
  6607fd:	8b 16                	mov    edx,DWORD PTR [esi]
  6607ff:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  660802:	8b ce                	mov    ecx,esi
  660804:	ff d0                	call   eax
  660806:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  66080a:	85 c0                	test   eax,eax
  66080c:	74 09                	je     0x660817
  66080e:	50                   	push   eax
  66080f:	e8 cc 3c e8 ff       	call   0x4e44e0
  660814:	83 c4 04             	add    esp,0x4
  660817:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  66081b:	85 c9                	test   ecx,ecx
  66081d:	74 07                	je     0x660826
  66081f:	8b 11                	mov    edx,DWORD PTR [ecx]
  660821:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  660824:	ff d0                	call   eax
  660826:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  66082a:	85 c9                	test   ecx,ecx
  66082c:	74 07                	je     0x660835
  66082e:	8b 11                	mov    edx,DWORD PTR [ecx]
  660830:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  660833:	ff d0                	call   eax
  660835:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  660839:	85 c0                	test   eax,eax
  66083b:	74 09                	je     0x660846
  66083d:	50                   	push   eax
  66083e:	e8 9d 3c e8 ff       	call   0x4e44e0
  660843:	83 c4 04             	add    esp,0x4
  660846:	8b 8c 24 e4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1e4]
  66084d:	51                   	push   ecx
  66084e:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  660855:	e8 56 11 25 00       	call   0x8b19b0
  66085a:	8b 94 24 b4 01 00 00 	mov    edx,DWORD PTR [esp+0x1b4]
  660861:	52                   	push   edx
  660862:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  660869:	e8 42 11 25 00       	call   0x8b19b0
  66086e:	e9 d4 e3 ff ff       	jmp    0x65ec47
  660873:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  660877:	85 c9                	test   ecx,ecx
  660879:	0f 84 ce 00 00 00    	je     0x66094d
  66087f:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
  660882:	2b 41 08             	sub    eax,DWORD PTR [ecx+0x8]
  660885:	c1 f8 06             	sar    eax,0x6
  660888:	0f 84 bf 00 00 00    	je     0x66094d
  66088e:	85 c0                	test   eax,eax
  660890:	76 55                	jbe    0x6608e7
  660892:	c7 44 24 1c 00 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  66089a:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  66089e:	eb 04                	jmp    0x6608a4
  6608a0:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6608a4:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  6608a8:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  6608ab:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
  6608ae:	03 74 24 1c          	add    esi,DWORD PTR [esp+0x1c]
  6608b2:	83 c0 08             	add    eax,0x8
  6608b5:	3b 78 08             	cmp    edi,DWORD PTR [eax+0x8]
  6608b8:	73 13                	jae    0x6608cd
  6608ba:	85 ff                	test   edi,edi
  6608bc:	8d 4f 40             	lea    ecx,[edi+0x40]
  6608bf:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  6608c2:	74 17                	je     0x6608db
  6608c4:	b9 10 00 00 00       	mov    ecx,0x10
  6608c9:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  6608cb:	eb 0e                	jmp    0x6608db
  6608cd:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  6608d1:	56                   	push   esi
  6608d2:	57                   	push   edi
  6608d3:	83 c1 08             	add    ecx,0x8
  6608d6:	e8 f5 eb 42 00       	call   0xa8f4d0
  6608db:	83 44 24 1c 40       	add    DWORD PTR [esp+0x1c],0x40
  6608e0:	83 6c 24 40 01       	sub    DWORD PTR [esp+0x40],0x1
  6608e5:	75 b9                	jne    0x6608a0
  6608e7:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  6608eb:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  6608ee:	2b 50 08             	sub    edx,DWORD PTR [eax+0x8]
  6608f1:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  6608f4:	c1 fa 06             	sar    edx,0x6
  6608f7:	c1 e2 06             	shl    edx,0x6
  6608fa:	83 7c 24 50 00       	cmp    DWORD PTR [esp+0x50],0x0
  6608ff:	c7 44 02 dc 09 00 00 00 	mov    DWORD PTR [edx+eax*1-0x24],0x9
  660907:	0f 84 13 01 00 00    	je     0x660a20
  66090d:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  660911:	83 b9 08 04 00 00 01 	cmp    DWORD PTR [ecx+0x408],0x1
  660918:	0f 85 02 01 00 00    	jne    0x660a20
  66091e:	8b d1                	mov    edx,ecx
  660920:	83 ba 0c 04 00 00 50 	cmp    DWORD PTR [edx+0x40c],0x50
  660927:	0f 85 f3 00 00 00    	jne    0x660a20
  66092d:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  660931:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  660934:	2b 48 08             	sub    ecx,DWORD PTR [eax+0x8]
  660937:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  66093a:	c1 f9 06             	sar    ecx,0x6
  66093d:	c1 e1 06             	shl    ecx,0x6
  660940:	c7 44 11 f8 14 00 00 00 	mov    DWORD PTR [ecx+edx*1-0x8],0x14
  660948:	e9 d3 00 00 00       	jmp    0x660a20
  66094d:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  660954:	e8 b7 11 fe ff       	call   0x641b10
  660959:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  66095f:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  660968:	f3 0f 10 84 24 a4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa4]
  660971:	8d 84 24 b0 00 00 00 	lea    eax,[esp+0xb0]
  660978:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  660981:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  660987:	50                   	push   eax
  660988:	8b cf                	mov    ecx,edi
  66098a:	f3 0f 11 84 24 bc 00 00 00 	movss  DWORD PTR [esp+0xbc],xmm0
  660993:	c7 84 24 d0 00 00 00 06 00 00 00 	mov    DWORD PTR [esp+0xd0],0x6
  66099e:	c7 84 24 ec 00 00 00 10 00 00 00 	mov    DWORD PTR [esp+0xec],0x10
  6609a9:	e8 b2 a0 fc ff       	call   0x62aa60
  6609ae:	f6 45 28 80          	test   BYTE PTR [ebp+0x28],0x80
  6609b2:	74 6c                	je     0x660a20
  6609b4:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  6609bb:	e8 50 11 fe ff       	call   0x641b10
  6609c0:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  6609c6:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  6609cf:	f3 0f 10 84 24 a4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa4]
  6609d8:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  6609df:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  6609e8:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  6609ee:	51                   	push   ecx
  6609ef:	8b cf                	mov    ecx,edi
  6609f1:	f3 0f 11 84 24 bc 00 00 00 	movss  DWORD PTR [esp+0xbc],xmm0
  6609fa:	c7 84 24 d0 00 00 00 01 00 00 00 	mov    DWORD PTR [esp+0xd0],0x1
  660a05:	c7 84 24 e0 00 00 00 83 3b 00 00 	mov    DWORD PTR [esp+0xe0],0x3b83
  660a10:	c7 84 24 ec 00 00 00 0d 00 00 00 	mov    DWORD PTR [esp+0xec],0xd
  660a1b:	e8 40 a0 fc ff       	call   0x62aa60
  660a20:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
  660a27:	33 c0                	xor    eax,eax
  660a29:	85 d2                	test   edx,edx
  660a2b:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  660a2f:	0f 86 07 0c 00 00    	jbe    0x66163c
  660a35:	85 c0                	test   eax,eax
  660a37:	8b 74 24 5c          	mov    esi,DWORD PTR [esp+0x5c]
  660a3b:	8b 7d 2c             	mov    edi,DWORD PTR [ebp+0x2c]
  660a3e:	8d 0c 80             	lea    ecx,[eax+eax*4]
  660a41:	8d 34 8e             	lea    esi,[esi+ecx*4]
  660a44:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  660a47:	0f 86 cb 08 00 00    	jbe    0x661318
  660a4d:	83 c2 ff             	add    edx,0xffffffff
  660a50:	3b c2                	cmp    eax,edx
  660a52:	0f 83 b9 08 00 00    	jae    0x661311
  660a58:	83 f9 01             	cmp    ecx,0x1
  660a5b:	0f 85 b0 08 00 00    	jne    0x661311
  660a61:	80 3d 4c 92 15 01 00 	cmp    BYTE PTR ds:0x115924c,0x0
  660a68:	0f 84 58 05 00 00    	je     0x660fc6
  660a6e:	80 bc 24 f8 00 00 00 00 	cmp    BYTE PTR [esp+0xf8],0x0
  660a76:	0f 85 4a 05 00 00    	jne    0x660fc6
  660a7c:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  660a80:	85 c9                	test   ecx,ecx
  660a82:	0f 84 26 03 00 00    	je     0x660dae
  660a88:	83 bc 24 8c 00 00 00 01 	cmp    DWORD PTR [esp+0x8c],0x1
  660a90:	0f 86 18 03 00 00    	jbe    0x660dae
  660a96:	66 8b 94 24 94 01 00 00 	mov    dx,WORD PTR [esp+0x194]
  660a9e:	66 3b 16             	cmp    dx,WORD PTR [esi]
  660aa1:	0f 85 07 03 00 00    	jne    0x660dae
  660aa7:	66 8b 84 24 96 01 00 00 	mov    ax,WORD PTR [esp+0x196]
  660aaf:	66 3b 46 02          	cmp    ax,WORD PTR [esi+0x2]
  660ab3:	0f 85 f5 02 00 00    	jne    0x660dae
  660ab9:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  660abd:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  660ac0:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  660ac3:	66 8b 46 14          	mov    ax,WORD PTR [esi+0x14]
  660ac7:	66 89 44 24 3c       	mov    WORD PTR [esp+0x3c],ax
  660acc:	66 8b 56 16          	mov    dx,WORD PTR [esi+0x16]
  660ad0:	66 89 54 24 3e       	mov    WORD PTR [esp+0x3e],dx
  660ad5:	8b 41 48             	mov    eax,DWORD PTR [ecx+0x48]
  660ad8:	8b 49 4c             	mov    ecx,DWORD PTR [ecx+0x4c]
  660adb:	6a 01                	push   0x1
  660add:	8d 94 24 94 02 00 00 	lea    edx,[esp+0x294]
  660ae4:	52                   	push   edx
  660ae5:	8d 94 24 90 02 00 00 	lea    edx,[esp+0x290]
  660aec:	52                   	push   edx
  660aed:	8d 54 24 48          	lea    edx,[esp+0x48]
  660af1:	52                   	push   edx
  660af2:	51                   	push   ecx
  660af3:	50                   	push   eax
  660af4:	8b cb                	mov    ecx,ebx
  660af6:	e8 d5 3c ff ff       	call   0x6547d0
  660afb:	84 c0                	test   al,al
  660afd:	0f 84 8d 0c 00 00    	je     0x661790
  660b03:	f3 0f 10 84 24 88 02 00 00 	movss  xmm0,DWORD PTR [esp+0x288]
  660b0c:	8b 8b 58 01 00 00    	mov    ecx,DWORD PTR [ebx+0x158]
  660b12:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  660b1b:	f3 0f 10 84 24 90 02 00 00 	movss  xmm0,DWORD PTR [esp+0x290]
  660b24:	33 c0                	xor    eax,eax
  660b26:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  660b2f:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  660b37:	8d 94 24 b0 00 00 00 	lea    edx,[esp+0xb0]
  660b3e:	89 8c 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],ecx
  660b45:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  660b4e:	0f 57 c0             	xorps  xmm0,xmm0
  660b51:	52                   	push   edx
  660b52:	8d 8c 24 74 01 00 00 	lea    ecx,[esp+0x174]
  660b59:	89 84 24 74 01 00 00 	mov    DWORD PTR [esp+0x174],eax
  660b60:	89 84 24 78 01 00 00 	mov    DWORD PTR [esp+0x178],eax
  660b67:	89 84 24 7c 01 00 00 	mov    DWORD PTR [esp+0x17c],eax
  660b6e:	c7 84 24 80 01 00 00 c0 e3 fe 00 	mov    DWORD PTR [esp+0x180],0xfee3c0
  660b79:	89 84 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],eax
  660b80:	f3 0f 11 84 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm0
  660b89:	f3 0f 11 84 24 c4 00 00 00 	movss  DWORD PTR [esp+0xc4],xmm0
  660b92:	e8 79 a4 fc ff       	call   0x62b010
  660b97:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  660b9a:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  660b9d:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  660ba0:	8b bc 24 70 01 00 00 	mov    edi,DWORD PTR [esp+0x170]
  660ba7:	6a 00                	push   0x0
  660ba9:	51                   	push   ecx
  660baa:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  660bad:	52                   	push   edx
  660bae:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  660bb2:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  660bb6:	50                   	push   eax
  660bb7:	51                   	push   ecx
  660bb8:	6a 00                	push   0x0
  660bba:	8d 54 24 6c          	lea    edx,[esp+0x6c]
  660bbe:	52                   	push   edx
  660bbf:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  660bc3:	e8 d8 e3 0e 00       	call   0x74efa0
  660bc8:	d9 e8                	fld1
  660bca:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  660bcd:	50                   	push   eax
  660bce:	8d 84 24 90 01 00 00 	lea    eax,[esp+0x190]
  660bd5:	50                   	push   eax
  660bd6:	51                   	push   ecx
  660bd7:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  660bda:	d9 1c 24             	fstp   DWORD PTR [esp]
  660bdd:	57                   	push   edi
  660bde:	51                   	push   ecx
  660bdf:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  660be3:	52                   	push   edx
  660be4:	e8 e7 0c fe ff       	call   0x6418d0
  660be9:	85 c0                	test   eax,eax
  660beb:	0f 85 d7 0b 00 00    	jne    0x6617c8
  660bf1:	39 44 24 18          	cmp    DWORD PTR [esp+0x18],eax
  660bf5:	0f 84 57 0c 00 00    	je     0x661852
  660bfb:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  660bff:	56                   	push   esi
  660c00:	50                   	push   eax
  660c01:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  660c05:	e8 26 30 ff ff       	call   0x653c30
  660c0a:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  660c0e:	2b 4c 24 5c          	sub    ecx,DWORD PTR [esp+0x5c]
  660c12:	b8 67 66 66 66       	mov    eax,0x66666667
  660c17:	f7 e9                	imul   ecx
  660c19:	c1 fa 03             	sar    edx,0x3
  660c1c:	8b c2                	mov    eax,edx
  660c1e:	c1 e8 1f             	shr    eax,0x1f
  660c21:	03 c2                	add    eax,edx
  660c23:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
  660c2a:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  660c2e:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  660c31:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  660c34:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  660c38:	85 c0                	test   eax,eax
  660c3a:	74 6f                	je     0x660cab
  660c3c:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  660c3f:	2b 48 08             	sub    ecx,DWORD PTR [eax+0x8]
  660c42:	c1 f9 06             	sar    ecx,0x6
  660c45:	74 64                	je     0x660cab
  660c47:	85 c9                	test   ecx,ecx
  660c49:	76 21                	jbe    0x660c6c
  660c4b:	33 f6                	xor    esi,esi
  660c4d:	8b f9                	mov    edi,ecx
  660c4f:	eb 04                	jmp    0x660c55
  660c51:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  660c55:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  660c58:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  660c5c:	03 d6                	add    edx,esi
  660c5e:	52                   	push   edx
  660c5f:	e8 fc 9d fc ff       	call   0x62aa60
  660c64:	83 c6 40             	add    esi,0x40
  660c67:	83 ef 01             	sub    edi,0x1
  660c6a:	75 e5                	jne    0x660c51
  660c6c:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  660c70:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  660c73:	2b 46 08             	sub    eax,DWORD PTR [esi+0x8]
  660c76:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  660c79:	c1 f8 06             	sar    eax,0x6
  660c7c:	c1 e0 06             	shl    eax,0x6
  660c7f:	c7 44 08 dc 09 00 00 00 	mov    DWORD PTR [eax+ecx*1-0x24],0x9
  660c87:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  660c8b:	e8 30 3f fc ff       	call   0x624bc0
  660c90:	84 c0                	test   al,al
  660c92:	74 17                	je     0x660cab
  660c94:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  660c97:	2b 56 08             	sub    edx,DWORD PTR [esi+0x8]
  660c9a:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  660c9d:	c1 fa 06             	sar    edx,0x6
  660ca0:	c1 e2 06             	shl    edx,0x6
  660ca3:	c7 44 02 f8 14 00 00 00 	mov    DWORD PTR [edx+eax*1-0x8],0x14
  660cab:	8b 84 24 70 01 00 00 	mov    eax,DWORD PTR [esp+0x170]
  660cb2:	85 c0                	test   eax,eax
  660cb4:	c7 44 24 1c 00 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  660cbc:	74 09                	je     0x660cc7
  660cbe:	50                   	push   eax
  660cbf:	e8 1c 38 e8 ff       	call   0x4e44e0
  660cc4:	83 c4 04             	add    esp,0x4
  660cc7:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  660cce:	e8 3d 0e fe ff       	call   0x641b10
  660cd3:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  660cd7:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  660cdb:	8d 0c 80             	lea    ecx,[eax+eax*4]
  660cde:	f3 0f 10 44 8a 04    	movss  xmm0,DWORD PTR [edx+ecx*4+0x4]
  660ce4:	8d 0c 8a             	lea    ecx,[edx+ecx*4]
  660ce7:	8d 84 24 e8 00 00 00 	lea    eax,[esp+0xe8]
  660cee:	50                   	push   eax
  660cef:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  660cf8:	f3 0f 10 41 08       	movss  xmm0,DWORD PTR [ecx+0x8]
  660cfd:	8d 94 24 e0 00 00 00 	lea    edx,[esp+0xe0]
  660d04:	52                   	push   edx
  660d05:	8d 84 24 d4 00 00 00 	lea    eax,[esp+0xd4]
  660d0c:	f3 0f 11 84 24 bc 00 00 00 	movss  DWORD PTR [esp+0xbc],xmm0
  660d15:	f3 0f 10 41 0c       	movss  xmm0,DWORD PTR [ecx+0xc]
  660d1a:	50                   	push   eax
  660d1b:	f3 0f 11 84 24 c4 00 00 00 	movss  DWORD PTR [esp+0xc4],xmm0
  660d24:	e8 47 f8 fe ff       	call   0x650570
  660d29:	83 bc 24 e8 00 00 00 15 	cmp    DWORD PTR [esp+0xe8],0x15
  660d31:	75 45                	jne    0x660d78
  660d33:	d9 84 24 b8 00 00 00 	fld    DWORD PTR [esp+0xb8]
  660d3a:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  660d3d:	83 ec 08             	sub    esp,0x8
  660d40:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  660d44:	d9 84 24 b8 00 00 00 	fld    DWORD PTR [esp+0xb8]
  660d4b:	d9 1c 24             	fstp   DWORD PTR [esp]
  660d4e:	e8 7d 7a 60 00       	call   0xc687d0
  660d53:	85 c0                	test   eax,eax
  660d55:	74 21                	je     0x660d78
  660d57:	83 b8 08 04 00 00 01 	cmp    DWORD PTR [eax+0x408],0x1
  660d5e:	75 18                	jne    0x660d78
  660d60:	83 b8 0c 04 00 00 50 	cmp    DWORD PTR [eax+0x40c],0x50
  660d67:	75 0f                	jne    0x660d78
  660d69:	8b c8                	mov    ecx,eax
  660d6b:	e8 20 f8 44 00       	call   0xab0590
  660d70:	66 89 84 24 bc 00 00 00 	mov    WORD PTR [esp+0xbc],ax
  660d78:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  660d7c:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
  660d7f:	83 c1 08             	add    ecx,0x8
  660d82:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  660d85:	0f 83 89 08 00 00    	jae    0x661614
  660d8b:	85 c0                	test   eax,eax
  660d8d:	8d 50 40             	lea    edx,[eax+0x40]
  660d90:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  660d93:	0f 84 89 08 00 00    	je     0x661622
  660d99:	b9 10 00 00 00       	mov    ecx,0x10
  660d9e:	8d b4 24 b0 00 00 00 	lea    esi,[esp+0xb0]
  660da5:	8b f8                	mov    edi,eax
  660da7:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  660da9:	e9 74 08 00 00       	jmp    0x661622
  660dae:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  660db2:	85 c0                	test   eax,eax
  660db4:	0f 84 0c 02 00 00    	je     0x660fc6
  660dba:	66 8b 8c 24 c4 01 00 00 	mov    cx,WORD PTR [esp+0x1c4]
  660dc2:	66 3b 0e             	cmp    cx,WORD PTR [esi]
  660dc5:	0f 85 fb 01 00 00    	jne    0x660fc6
  660dcb:	66 8b 94 24 c6 01 00 00 	mov    dx,WORD PTR [esp+0x1c6]
  660dd3:	66 3b 56 02          	cmp    dx,WORD PTR [esi+0x2]
  660dd7:	0f 85 e9 01 00 00    	jne    0x660fc6
  660ddd:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  660de1:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  660de4:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  660de7:	66 8b 4e ec          	mov    cx,WORD PTR [esi-0x14]
  660deb:	66 89 4c 24 44       	mov    WORD PTR [esp+0x44],cx
  660df0:	66 8b 56 ee          	mov    dx,WORD PTR [esi-0x12]
  660df4:	66 89 54 24 46       	mov    WORD PTR [esp+0x46],dx
  660df9:	8b 48 48             	mov    ecx,DWORD PTR [eax+0x48]
  660dfc:	8b 40 4c             	mov    eax,DWORD PTR [eax+0x4c]
  660dff:	6a 01                	push   0x1
  660e01:	8d 94 24 90 02 00 00 	lea    edx,[esp+0x290]
  660e08:	52                   	push   edx
  660e09:	8d 94 24 9c 02 00 00 	lea    edx,[esp+0x29c]
  660e10:	52                   	push   edx
  660e11:	8d 54 24 50          	lea    edx,[esp+0x50]
  660e15:	52                   	push   edx
  660e16:	50                   	push   eax
  660e17:	51                   	push   ecx
  660e18:	8b cb                	mov    ecx,ebx
  660e1a:	e8 b1 39 ff ff       	call   0x6547d0
  660e1f:	84 c0                	test   al,al
  660e21:	0f 84 69 09 00 00    	je     0x661790
  660e27:	f3 0f 10 84 24 94 02 00 00 	movss  xmm0,DWORD PTR [esp+0x294]
  660e30:	8b 8b 90 01 00 00    	mov    ecx,DWORD PTR [ebx+0x190]
  660e36:	33 c0                	xor    eax,eax
  660e38:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  660e41:	f3 0f 10 84 24 8c 02 00 00 	movss  xmm0,DWORD PTR [esp+0x28c]
  660e4a:	8d 94 24 b0 00 00 00 	lea    edx,[esp+0xb0]
  660e51:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  660e5a:	0f 57 c0             	xorps  xmm0,xmm0
  660e5d:	89 8c 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],ecx
  660e64:	52                   	push   edx
  660e65:	8d 8c 24 84 01 00 00 	lea    ecx,[esp+0x184]
  660e6c:	89 84 24 84 01 00 00 	mov    DWORD PTR [esp+0x184],eax
  660e73:	89 84 24 88 01 00 00 	mov    DWORD PTR [esp+0x188],eax
  660e7a:	89 84 24 8c 01 00 00 	mov    DWORD PTR [esp+0x18c],eax
  660e81:	c7 84 24 90 01 00 00 d0 e3 fe 00 	mov    DWORD PTR [esp+0x190],0xfee3d0
  660e8c:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  660e95:	f3 0f 11 84 24 cc 00 00 00 	movss  DWORD PTR [esp+0xcc],xmm0
  660e9e:	89 84 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],eax
  660ea5:	f3 0f 11 84 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm0
  660eae:	f3 0f 11 84 24 c4 00 00 00 	movss  DWORD PTR [esp+0xc4],xmm0
  660eb7:	e8 54 5b ff ff       	call   0x656a10
  660ebc:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  660ec0:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  660ec3:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  660ec6:	8b 7b 08             	mov    edi,DWORD PTR [ebx+0x8]
  660ec9:	6a 00                	push   0x0
  660ecb:	51                   	push   ecx
  660ecc:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  660ecf:	52                   	push   edx
  660ed0:	89 84 24 00 01 00 00 	mov    DWORD PTR [esp+0x100],eax
  660ed7:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  660edb:	50                   	push   eax
  660edc:	51                   	push   ecx
  660edd:	8d 94 24 08 01 00 00 	lea    edx,[esp+0x108]
  660ee4:	52                   	push   edx
  660ee5:	6a 00                	push   0x0
  660ee7:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  660eeb:	e8 b0 e0 0e 00       	call   0x74efa0
  660ef0:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  660ef3:	50                   	push   eax
  660ef4:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  660ef7:	50                   	push   eax
  660ef8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  660efb:	51                   	push   ecx
  660efc:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  660eff:	d9 1c 24             	fstp   DWORD PTR [esp]
  660f02:	51                   	push   ecx
  660f03:	8d 94 24 ac 01 00 00 	lea    edx,[esp+0x1ac]
  660f0a:	52                   	push   edx
  660f0b:	50                   	push   eax
  660f0c:	8b cf                	mov    ecx,edi
  660f0e:	e8 bd 09 fe ff       	call   0x6418d0
  660f13:	85 c0                	test   eax,eax
  660f15:	0f 85 64 0a 00 00    	jne    0x66197f
  660f1b:	39 44 24 24          	cmp    DWORD PTR [esp+0x24],eax
  660f1f:	0f 84 bb 09 00 00    	je     0x6618e0
  660f25:	8b 84 24 f4 00 00 00 	mov    eax,DWORD PTR [esp+0xf4]
  660f2c:	3b 44 24 38          	cmp    eax,DWORD PTR [esp+0x38]
  660f30:	74 5a                	je     0x660f8c
  660f32:	85 c0                	test   eax,eax
  660f34:	7c 56                	jl     0x660f8c
  660f36:	3b 44 24 70          	cmp    eax,DWORD PTR [esp+0x70]
  660f3a:	7d 50                	jge    0x660f8c
  660f3c:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  660f3f:	6a 01                	push   0x1
  660f41:	6a 00                	push   0x0
  660f43:	6a 00                	push   0x0
  660f45:	6a 00                	push   0x0
  660f47:	6a 00                	push   0x0
  660f49:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  660f4d:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  660f54:	2b c8                	sub    ecx,eax
  660f56:	8b 02                	mov    eax,DWORD PTR [edx]
  660f58:	d9 04 88             	fld    DWORD PTR [eax+ecx*4]
  660f5b:	6a 00                	push   0x0
  660f5d:	8d 04 88             	lea    eax,[eax+ecx*4]
  660f60:	d9 54 24 38          	fst    DWORD PTR [esp+0x38]
  660f64:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  660f67:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  660f6a:	6a 00                	push   0x0
  660f6c:	d9 54 24 48          	fst    DWORD PTR [esp+0x48]
  660f70:	6a 00                	push   0x0
  660f72:	51                   	push   ecx
  660f73:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  660f76:	83 ec 08             	sub    esp,0x8
  660f79:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  660f7d:	d9 1c 24             	fstp   DWORD PTR [esp]
  660f80:	e8 fb 93 60 00       	call   0xc6a380
  660f85:	d9 9c 24 84 00 00 00 	fstp   DWORD PTR [esp+0x84]
  660f8c:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  660f90:	52                   	push   edx
  660f91:	56                   	push   esi
  660f92:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  660f96:	e8 95 2c ff ff       	call   0x653c30
  660f9b:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  660f9f:	e8 3c fa fe ff       	call   0x6509e0
  660fa4:	39 44 24 1c          	cmp    DWORD PTR [esp+0x1c],eax
  660fa8:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
  660faf:	8d 8c 24 80 01 00 00 	lea    ecx,[esp+0x180]
  660fb6:	0f 83 b2 09 00 00    	jae    0x66196e
  660fbc:	e8 6f 08 ff ff       	call   0x651830
  660fc1:	e9 01 fd ff ff       	jmp    0x660cc7
  660fc6:	f3 0f 10 46 f0       	movss  xmm0,DWORD PTR [esi-0x10]
  660fcb:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  660fce:	d9 46 0c             	fld    DWORD PTR [esi+0xc]
  660fd1:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  660fd4:	f3 0f 11 84 24 7c 02 00 00 	movss  DWORD PTR [esp+0x27c],xmm0
  660fdd:	f3 0f 10 46 f8       	movss  xmm0,DWORD PTR [esi-0x8]
  660fe2:	83 ec 08             	sub    esp,0x8
  660fe5:	f3 0f 11 84 24 8c 02 00 00 	movss  DWORD PTR [esp+0x28c],xmm0
  660fee:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  660ff2:	f3 0f 10 46 18       	movss  xmm0,DWORD PTR [esi+0x18]
  660ff7:	f3 0f 11 84 24 88 02 00 00 	movss  DWORD PTR [esp+0x288],xmm0
  661000:	d9 1c 24             	fstp   DWORD PTR [esp]
  661003:	f3 0f 10 46 20       	movss  xmm0,DWORD PTR [esi+0x20]
  661008:	f3 0f 11 84 24 98 00 00 00 	movss  DWORD PTR [esp+0x98],xmm0
  661011:	e8 ba 77 60 00       	call   0xc687d0
  661016:	85 ff                	test   edi,edi
  661018:	8b f0                	mov    esi,eax
  66101a:	89 b4 24 5c 01 00 00 	mov    DWORD PTR [esp+0x15c],esi
  661021:	74 27                	je     0x66104a
  661023:	85 f6                	test   esi,esi
  661025:	74 32                	je     0x661059
  661027:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  66102a:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  66102d:	8d 94 24 38 01 00 00 	lea    edx,[esp+0x138]
  661034:	89 8c 24 3c 01 00 00 	mov    DWORD PTR [esp+0x13c],ecx
  66103b:	52                   	push   edx
  66103c:	8b cf                	mov    ecx,edi
  66103e:	89 84 24 3c 01 00 00 	mov    DWORD PTR [esp+0x13c],eax
  661045:	e8 b6 14 f1 ff       	call   0x572500
  66104a:	85 f6                	test   esi,esi
  66104c:	74 0b                	je     0x661059
  66104e:	8b ce                	mov    ecx,esi
  661050:	e8 3b f5 44 00       	call   0xab0590
  661055:	8b f8                	mov    edi,eax
  661057:	eb 02                	jmp    0x66105b
  661059:	33 ff                	xor    edi,edi
  66105b:	f3 0f 10 84 24 7c 02 00 00 	movss  xmm0,DWORD PTR [esp+0x27c]
  661064:	33 c0                	xor    eax,eax
  661066:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  66106f:	f3 0f 10 84 24 84 02 00 00 	movss  xmm0,DWORD PTR [esp+0x284]
  661078:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  66107c:	89 84 24 1c 01 00 00 	mov    DWORD PTR [esp+0x11c],eax
  661083:	89 84 24 20 01 00 00 	mov    DWORD PTR [esp+0x120],eax
  66108a:	89 84 24 24 01 00 00 	mov    DWORD PTR [esp+0x124],eax
  661091:	89 84 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],eax
  661098:	8d 84 24 b0 00 00 00 	lea    eax,[esp+0xb0]
  66109f:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  6610a8:	0f 57 c0             	xorps  xmm0,xmm0
  6610ab:	50                   	push   eax
  6610ac:	8d 8c 24 20 01 00 00 	lea    ecx,[esp+0x120]
  6610b3:	c7 84 24 2c 01 00 00 d0 e3 fe 00 	mov    DWORD PTR [esp+0x12c],0xfee3d0
  6610be:	89 bc 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],edi
  6610c5:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  6610ce:	f3 0f 11 84 24 cc 00 00 00 	movss  DWORD PTR [esp+0xcc],xmm0
  6610d7:	f3 0f 11 84 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm0
  6610e0:	f3 0f 11 84 24 c4 00 00 00 	movss  DWORD PTR [esp+0xc4],xmm0
  6610e9:	e8 22 59 ff ff       	call   0x656a10
  6610ee:	f3 0f 10 84 24 80 02 00 00 	movss  xmm0,DWORD PTR [esp+0x280]
  6610f7:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  661100:	f3 0f 10 84 24 90 00 00 00 	movss  xmm0,DWORD PTR [esp+0x90]
  661109:	33 c0                	xor    eax,eax
  66110b:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  661114:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  66111c:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  661123:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  66112c:	0f 57 c0             	xorps  xmm0,xmm0
  66112f:	51                   	push   ecx
  661130:	8d 8c 24 70 02 00 00 	lea    ecx,[esp+0x270]
  661137:	89 84 24 70 02 00 00 	mov    DWORD PTR [esp+0x270],eax
  66113e:	89 84 24 74 02 00 00 	mov    DWORD PTR [esp+0x274],eax
  661145:	89 84 24 78 02 00 00 	mov    DWORD PTR [esp+0x278],eax
  66114c:	c7 84 24 7c 02 00 00 c0 e3 fe 00 	mov    DWORD PTR [esp+0x27c],0xfee3c0
  661157:	89 bc 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],edi
  66115e:	89 84 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],eax
  661165:	f3 0f 11 84 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm0
  66116e:	f3 0f 11 84 24 c4 00 00 00 	movss  DWORD PTR [esp+0xc4],xmm0
  661177:	e8 94 9e fc ff       	call   0x62b010
  66117c:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
  661180:	85 c9                	test   ecx,ecx
  661182:	74 0f                	je     0x661193
  661184:	c7 44 24 6c 00 00 00 00 	mov    DWORD PTR [esp+0x6c],0x0
  66118c:	8b 11                	mov    edx,DWORD PTR [ecx]
  66118e:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661191:	ff d0                	call   eax
  661193:	8b 55 34             	mov    edx,DWORD PTR [ebp+0x34]
  661196:	d9 e8                	fld1
  661198:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  66119b:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  66119e:	6a 00                	push   0x0
  6611a0:	52                   	push   edx
  6611a1:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  6611a4:	50                   	push   eax
  6611a5:	56                   	push   esi
  6611a6:	52                   	push   edx
  6611a7:	6a 00                	push   0x0
  6611a9:	6a 00                	push   0x0
  6611ab:	8d 84 24 88 00 00 00 	lea    eax,[esp+0x88]
  6611b2:	50                   	push   eax
  6611b3:	8b 84 24 8c 02 00 00 	mov    eax,DWORD PTR [esp+0x28c]
  6611ba:	8d 94 24 8c 02 00 00 	lea    edx,[esp+0x28c]
  6611c1:	52                   	push   edx
  6611c2:	51                   	push   ecx
  6611c3:	d9 1c 24             	fstp   DWORD PTR [esp]
  6611c6:	50                   	push   eax
  6611c7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6611ca:	8d 94 24 48 01 00 00 	lea    edx,[esp+0x148]
  6611d1:	52                   	push   edx
  6611d2:	50                   	push   eax
  6611d3:	e8 f8 06 fe ff       	call   0x6418d0
  6611d8:	85 c0                	test   eax,eax
  6611da:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  6611de:	0f 85 ef 07 00 00    	jne    0x6619d3
  6611e4:	85 c0                	test   eax,eax
  6611e6:	0f 84 e7 07 00 00    	je     0x6619d3
  6611ec:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  6611ef:	2b 48 08             	sub    ecx,DWORD PTR [eax+0x8]
  6611f2:	c1 f9 06             	sar    ecx,0x6
  6611f5:	83 f9 01             	cmp    ecx,0x1
  6611f8:	0f 86 d5 07 00 00    	jbe    0x6619d3
  6611fe:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  661201:	2b 48 08             	sub    ecx,DWORD PTR [eax+0x8]
  661204:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  661207:	c1 f9 06             	sar    ecx,0x6
  66120a:	83 bc 24 5c 01 00 00 00 	cmp    DWORD PTR [esp+0x15c],0x0
  661212:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  661216:	b9 10 00 00 00       	mov    ecx,0x10
  66121b:	8d bc 24 10 03 00 00 	lea    edi,[esp+0x310]
  661222:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  661224:	c7 84 24 2c 03 00 00 08 00 00 00 	mov    DWORD PTR [esp+0x32c],0x8
  66122f:	74 1b                	je     0x66124c
  661231:	8b 8c 24 5c 01 00 00 	mov    ecx,DWORD PTR [esp+0x15c]
  661238:	e8 83 39 fc ff       	call   0x624bc0
  66123d:	84 c0                	test   al,al
  66123f:	74 0b                	je     0x66124c
  661241:	c7 84 24 48 03 00 00 14 00 00 00 	mov    DWORD PTR [esp+0x348],0x14
  66124c:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  661250:	8d 94 24 10 03 00 00 	lea    edx,[esp+0x310]
  661257:	52                   	push   edx
  661258:	8b ce                	mov    ecx,esi
  66125a:	e8 01 98 fc ff       	call   0x62aa60
  66125f:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  661263:	83 f8 01             	cmp    eax,0x1
  661266:	76 27                	jbe    0x66128f
  661268:	83 c0 ff             	add    eax,0xffffffff
  66126b:	bf 40 00 00 00       	mov    edi,0x40
  661270:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  661274:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  661278:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  66127b:	03 cf                	add    ecx,edi
  66127d:	51                   	push   ecx
  66127e:	8b ce                	mov    ecx,esi
  661280:	e8 db 97 fc ff       	call   0x62aa60
  661285:	83 c7 40             	add    edi,0x40
  661288:	83 6c 24 34 01       	sub    DWORD PTR [esp+0x34],0x1
  66128d:	75 e5                	jne    0x661274
  66128f:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  661292:	2b 56 08             	sub    edx,DWORD PTR [esi+0x8]
  661295:	8b 8c 24 5c 01 00 00 	mov    ecx,DWORD PTR [esp+0x15c]
  66129c:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  66129f:	c1 fa 06             	sar    edx,0x6
  6612a2:	c1 e2 06             	shl    edx,0x6
  6612a5:	85 c9                	test   ecx,ecx
  6612a7:	c7 44 02 dc 09 00 00 00 	mov    DWORD PTR [edx+eax*1-0x24],0x9
  6612af:	74 20                	je     0x6612d1
  6612b1:	e8 0a 39 fc ff       	call   0x624bc0
  6612b6:	84 c0                	test   al,al
  6612b8:	74 17                	je     0x6612d1
  6612ba:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  6612bd:	2b 4e 08             	sub    ecx,DWORD PTR [esi+0x8]
  6612c0:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  6612c3:	c1 f9 06             	sar    ecx,0x6
  6612c6:	c1 e1 06             	shl    ecx,0x6
  6612c9:	c7 44 11 f8 14 00 00 00 	mov    DWORD PTR [ecx+edx*1-0x8],0x14
  6612d1:	8b 84 24 6c 02 00 00 	mov    eax,DWORD PTR [esp+0x26c]
  6612d8:	85 c0                	test   eax,eax
  6612da:	74 09                	je     0x6612e5
  6612dc:	50                   	push   eax
  6612dd:	e8 fe 31 e8 ff       	call   0x4e44e0
  6612e2:	83 c4 04             	add    esp,0x4
  6612e5:	8b 84 24 1c 01 00 00 	mov    eax,DWORD PTR [esp+0x11c]
  6612ec:	85 c0                	test   eax,eax
  6612ee:	74 09                	je     0x6612f9
  6612f0:	50                   	push   eax
  6612f1:	e8 ea 31 e8 ff       	call   0x4e44e0
  6612f6:	83 c4 04             	add    esp,0x4
  6612f9:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
  6612fd:	85 c9                	test   ecx,ecx
  6612ff:	0f 84 c2 f9 ff ff    	je     0x660cc7
  661305:	8b 01                	mov    eax,DWORD PTR [ecx]
  661307:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  66130a:	ff d2                	call   edx
  66130c:	e9 b6 f9 ff ff       	jmp    0x660cc7
  661311:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
  661318:	83 f9 14             	cmp    ecx,0x14
  66131b:	0f 85 a6 f9 ff ff    	jne    0x660cc7
  661321:	83 fa 01             	cmp    edx,0x1
  661324:	75 0e                	jne    0x661334
  661326:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  66132a:	83 79 10 14          	cmp    DWORD PTR [ecx+0x10],0x14
  66132e:	0f 84 ee 02 00 00    	je     0x661622
  661334:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  661337:	0f 57 c0             	xorps  xmm0,xmm0
  66133a:	c1 e9 0f             	shr    ecx,0xf
  66133d:	80 e1 01             	and    cl,0x1
  661340:	85 c0                	test   eax,eax
  661342:	88 8c 24 88 00 00 00 	mov    BYTE PTR [esp+0x88],cl
  661349:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  66134f:	f3 0f 11 84 24 ac 00 00 00 	movss  DWORD PTR [esp+0xac],xmm0
  661358:	f3 0f 11 84 24 60 01 00 00 	movss  DWORD PTR [esp+0x160],xmm0
  661361:	f3 0f 11 84 24 58 01 00 00 	movss  DWORD PTR [esp+0x158],xmm0
  66136a:	0f 85 ab 00 00 00    	jne    0x66141b
  661370:	84 c9                	test   cl,cl
  661372:	74 24                	je     0x661398
  661374:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  661377:	85 c0                	test   eax,eax
  661379:	74 1d                	je     0x661398
  66137b:	8b 10                	mov    edx,DWORD PTR [eax]
  66137d:	81 e2 00 cf 00 00    	and    edx,0xcf00
  661383:	52                   	push   edx
  661384:	e8 37 ca ef ff       	call   0x55ddc0
  661389:	83 c4 04             	add    esp,0x4
  66138c:	84 c0                	test   al,al
  66138e:	c6 84 24 88 00 00 00 01 	mov    BYTE PTR [esp+0x88],0x1
  661396:	75 08                	jne    0x6613a0
  661398:	c6 84 24 88 00 00 00 00 	mov    BYTE PTR [esp+0x88],0x0
  6613a0:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  6613a4:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  6613a7:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  6613aa:	83 ec 0c             	sub    esp,0xc
  6613ad:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  6613b1:	d9 84 24 b0 00 00 00 	fld    DWORD PTR [esp+0xb0]
  6613b8:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6613bc:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  6613c0:	d9 1c 24             	fstp   DWORD PTR [esp]
  6613c3:	50                   	push   eax
  6613c4:	e8 67 c8 00 00       	call   0x66dc30
  6613c9:	83 bc 24 8c 00 00 00 01 	cmp    DWORD PTR [esp+0x8c],0x1
  6613d1:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  6613d7:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  6613dd:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  6613e3:	8b f8                	mov    edi,eax
  6613e5:	f3 0f 11 84 24 ac 00 00 00 	movss  DWORD PTR [esp+0xac],xmm0
  6613ee:	0f 86 2e 02 00 00    	jbe    0x661622
  6613f4:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  6613f8:	83 78 24 15          	cmp    DWORD PTR [eax+0x24],0x15
  6613fc:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [esp+0x88]
  661403:	0f 94 c1             	sete   cl
  661406:	51                   	push   ecx
  661407:	0f b6 48 02          	movzx  ecx,BYTE PTR [eax+0x2]
  66140b:	6a 00                	push   0x0
  66140d:	52                   	push   edx
  66140e:	0f b7 50 14          	movzx  edx,WORD PTR [eax+0x14]
  661412:	0f b7 40 16          	movzx  eax,WORD PTR [eax+0x16]
  661416:	e9 fc 00 00 00       	jmp    0x661517
  66141b:	83 c2 ff             	add    edx,0xffffffff
  66141e:	3b c2                	cmp    eax,edx
  661420:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [esp+0x88]
  661427:	0f b6 46 02          	movzx  eax,BYTE PTR [esi+0x2]
  66142b:	75 70                	jne    0x66149d
  66142d:	83 7e fc 15          	cmp    DWORD PTR [esi-0x4],0x15
  661431:	0f 94 c1             	sete   cl
  661434:	51                   	push   ecx
  661435:	0f b7 4e ec          	movzx  ecx,WORD PTR [esi-0x14]
  661439:	6a 00                	push   0x0
  66143b:	52                   	push   edx
  66143c:	0f b7 56 ee          	movzx  edx,WORD PTR [esi-0x12]
  661440:	c1 e1 10             	shl    ecx,0x10
  661443:	0b ca                	or     ecx,edx
  661445:	50                   	push   eax
  661446:	51                   	push   ecx
  661447:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  66144a:	e8 81 e8 00 00       	call   0x66fcd0
  66144f:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  661452:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  661456:	83 ec 0c             	sub    esp,0xc
  661459:	8b f8                	mov    edi,eax
  66145b:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  66145e:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  661462:	d9 84 24 90 00 00 00 	fld    DWORD PTR [esp+0x90]
  661469:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  66146d:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  661471:	d9 1c 24             	fstp   DWORD PTR [esp]
  661474:	50                   	push   eax
  661475:	e8 b6 c7 00 00       	call   0x66dc30
  66147a:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  661480:	f3 0f 11 84 24 60 01 00 00 	movss  DWORD PTR [esp+0x160],xmm0
  661489:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  66148f:	f3 0f 11 84 24 58 01 00 00 	movss  DWORD PTR [esp+0x158],xmm0
  661498:	e9 89 00 00 00       	jmp    0x661526
  66149d:	83 7e fc 15          	cmp    DWORD PTR [esi-0x4],0x15
  6614a1:	0f 94 c1             	sete   cl
  6614a4:	51                   	push   ecx
  6614a5:	0f b7 4e ec          	movzx  ecx,WORD PTR [esi-0x14]
  6614a9:	6a 00                	push   0x0
  6614ab:	52                   	push   edx
  6614ac:	0f b7 56 ee          	movzx  edx,WORD PTR [esi-0x12]
  6614b0:	c1 e1 10             	shl    ecx,0x10
  6614b3:	0b ca                	or     ecx,edx
  6614b5:	50                   	push   eax
  6614b6:	51                   	push   ecx
  6614b7:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  6614ba:	e8 11 e8 00 00       	call   0x66fcd0
  6614bf:	80 bc 24 88 00 00 00 00 	cmp    BYTE PTR [esp+0x88],0x0
  6614c7:	8b f8                	mov    edi,eax
  6614c9:	74 26                	je     0x6614f1
  6614cb:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
  6614cf:	74 20                	je     0x6614f1
  6614d1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6614d4:	8b 08                	mov    ecx,DWORD PTR [eax]
  6614d6:	81 e1 00 cf 00 00    	and    ecx,0xcf00
  6614dc:	51                   	push   ecx
  6614dd:	e8 de c8 ef ff       	call   0x55ddc0
  6614e2:	83 c4 04             	add    esp,0x4
  6614e5:	84 c0                	test   al,al
  6614e7:	c6 84 24 88 00 00 00 01 	mov    BYTE PTR [esp+0x88],0x1
  6614ef:	75 08                	jne    0x6614f9
  6614f1:	c6 84 24 88 00 00 00 00 	mov    BYTE PTR [esp+0x88],0x0
  6614f9:	83 7e 24 15          	cmp    DWORD PTR [esi+0x24],0x15
  6614fd:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
  661504:	0f b6 4e 02          	movzx  ecx,BYTE PTR [esi+0x2]
  661508:	0f 94 c2             	sete   dl
  66150b:	52                   	push   edx
  66150c:	0f b7 56 14          	movzx  edx,WORD PTR [esi+0x14]
  661510:	6a 00                	push   0x0
  661512:	50                   	push   eax
  661513:	0f b7 46 16          	movzx  eax,WORD PTR [esi+0x16]
  661517:	c1 e2 10             	shl    edx,0x10
  66151a:	51                   	push   ecx
  66151b:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  66151e:	0b d0                	or     edx,eax
  661520:	52                   	push   edx
  661521:	e8 aa e7 00 00       	call   0x66fcd0
  661526:	3b f8                	cmp    edi,eax
  661528:	0f 84 f4 00 00 00    	je     0x661622
  66152e:	d9 84 24 58 01 00 00 	fld    DWORD PTR [esp+0x158]
  661535:	8d 8c 24 04 01 00 00 	lea    ecx,[esp+0x104]
  66153c:	51                   	push   ecx
  66153d:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  661540:	83 ec 08             	sub    esp,0x8
  661543:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  661547:	8d 94 24 9c 01 00 00 	lea    edx,[esp+0x19c]
  66154e:	d9 84 24 6c 01 00 00 	fld    DWORD PTR [esp+0x16c]
  661555:	33 f6                	xor    esi,esi
  661557:	d9 1c 24             	fstp   DWORD PTR [esp]
  66155a:	50                   	push   eax
  66155b:	d9 84 24 bc 00 00 00 	fld    DWORD PTR [esp+0xbc]
  661562:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  661565:	83 ec 08             	sub    esp,0x8
  661568:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  66156c:	89 b4 24 1c 01 00 00 	mov    DWORD PTR [esp+0x11c],esi
  661573:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  661577:	89 b4 24 20 01 00 00 	mov    DWORD PTR [esp+0x120],esi
  66157e:	d9 1c 24             	fstp   DWORD PTR [esp]
  661581:	57                   	push   edi
  661582:	52                   	push   edx
  661583:	50                   	push   eax
  661584:	89 b4 24 30 01 00 00 	mov    DWORD PTR [esp+0x130],esi
  66158b:	c7 84 24 34 01 00 00 c8 e4 fe 00 	mov    DWORD PTR [esp+0x134],0xfee4c8
  661596:	e8 05 08 01 00       	call   0x671da0
  66159b:	84 c0                	test   al,al
  66159d:	0f 84 76 05 00 00    	je     0x661b19
  6615a3:	d9 84 24 58 01 00 00 	fld    DWORD PTR [esp+0x158]
  6615aa:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  6615ad:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  6615b0:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  6615b3:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
  6615b7:	83 ec 10             	sub    esp,0x10
  6615ba:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  6615be:	d9 84 24 70 01 00 00 	fld    DWORD PTR [esp+0x170]
  6615c5:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  6615c9:	d9 84 24 bc 00 00 00 	fld    DWORD PTR [esp+0xbc]
  6615d0:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6615d4:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  6615d8:	d9 1c 24             	fstp   DWORD PTR [esp]
  6615db:	51                   	push   ecx
  6615dc:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  6615df:	52                   	push   edx
  6615e0:	50                   	push   eax
  6615e1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6615e4:	51                   	push   ecx
  6615e5:	57                   	push   edi
  6615e6:	8d 94 24 28 01 00 00 	lea    edx,[esp+0x128]
  6615ed:	52                   	push   edx
  6615ee:	50                   	push   eax
  6615ef:	8b cb                	mov    ecx,ebx
  6615f1:	e8 1a 5a ff ff       	call   0x657010
  6615f6:	84 c0                	test   al,al
  6615f8:	8b 84 24 04 01 00 00 	mov    eax,DWORD PTR [esp+0x104]
  6615ff:	0f 84 87 04 00 00    	je     0x661a8c
  661605:	3b c6                	cmp    eax,esi
  661607:	74 19                	je     0x661622
  661609:	50                   	push   eax
  66160a:	e8 d1 2e e8 ff       	call   0x4e44e0
  66160f:	83 c4 04             	add    esp,0x4
  661612:	eb 0e                	jmp    0x661622
  661614:	8d 94 24 b0 00 00 00 	lea    edx,[esp+0xb0]
  66161b:	52                   	push   edx
  66161c:	50                   	push   eax
  66161d:	e8 ae de 42 00       	call   0xa8f4d0
  661622:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  661626:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
  66162d:	83 c0 01             	add    eax,0x1
  661630:	3b c2                	cmp    eax,edx
  661632:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  661636:	0f 82 f9 f3 ff ff    	jb     0x660a35
  66163c:	83 fa 01             	cmp    edx,0x1
  66163f:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
  661643:	0f 85 09 05 00 00    	jne    0x661b52
  661649:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  66164d:	83 78 10 14          	cmp    DWORD PTR [eax+0x10],0x14
  661651:	0f 85 fb 04 00 00    	jne    0x661b52
  661657:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  66165b:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  66165e:	83 ec 0c             	sub    esp,0xc
  661661:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  661665:	d9 84 24 b0 00 00 00 	fld    DWORD PTR [esp+0xb0]
  66166c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  661670:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  661674:	d9 1c 24             	fstp   DWORD PTR [esp]
  661677:	51                   	push   ecx
  661678:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  66167b:	e8 b0 c5 00 00       	call   0x66dc30
  661680:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  661684:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  661687:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  66168a:	83 ec 0c             	sub    esp,0xc
  66168d:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  661691:	8b f0                	mov    esi,eax
  661693:	d9 84 24 90 00 00 00 	fld    DWORD PTR [esp+0x90]
  66169a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  66169e:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  6616a2:	d9 1c 24             	fstp   DWORD PTR [esp]
  6616a5:	52                   	push   edx
  6616a6:	e8 85 c5 00 00       	call   0x66dc30
  6616ab:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  6616af:	33 c9                	xor    ecx,ecx
  6616b1:	89 8c 24 04 01 00 00 	mov    DWORD PTR [esp+0x104],ecx
  6616b8:	89 8c 24 08 01 00 00 	mov    DWORD PTR [esp+0x108],ecx
  6616bf:	89 8c 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],ecx
  6616c6:	8d 8c 24 04 01 00 00 	lea    ecx,[esp+0x104]
  6616cd:	51                   	push   ecx
  6616ce:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  6616d1:	83 ec 08             	sub    esp,0x8
  6616d4:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6616d8:	8d 94 24 9c 01 00 00 	lea    edx,[esp+0x19c]
  6616df:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  6616e3:	c7 84 24 1c 01 00 00 c8 e4 fe 00 	mov    DWORD PTR [esp+0x11c],0xfee4c8
  6616ee:	d9 1c 24             	fstp   DWORD PTR [esp]
  6616f1:	50                   	push   eax
  6616f2:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  6616f6:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  6616f9:	83 ec 08             	sub    esp,0x8
  6616fc:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  661700:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  661704:	d9 1c 24             	fstp   DWORD PTR [esp]
  661707:	56                   	push   esi
  661708:	52                   	push   edx
  661709:	50                   	push   eax
  66170a:	e8 91 06 01 00       	call   0x671da0
  66170f:	84 c0                	test   al,al
  661711:	0f 84 cf 04 00 00    	je     0x661be6
  661717:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  66171b:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  66171e:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  661721:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  661724:	83 ec 10             	sub    esp,0x10
  661727:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  66172b:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  66172f:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  661733:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  661737:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  66173b:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  66173f:	d9 1c 24             	fstp   DWORD PTR [esp]
  661742:	51                   	push   ecx
  661743:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  661746:	52                   	push   edx
  661747:	50                   	push   eax
  661748:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  66174b:	51                   	push   ecx
  66174c:	57                   	push   edi
  66174d:	8d 94 24 28 01 00 00 	lea    edx,[esp+0x128]
  661754:	52                   	push   edx
  661755:	50                   	push   eax
  661756:	8b cb                	mov    ecx,ebx
  661758:	e8 b3 58 ff ff       	call   0x657010
  66175d:	84 c0                	test   al,al
  66175f:	8b 84 24 04 01 00 00 	mov    eax,DWORD PTR [esp+0x104]
  661766:	0f 85 d9 03 00 00    	jne    0x661b45
  66176c:	85 c0                	test   eax,eax
  66176e:	74 09                	je     0x661779
  661770:	50                   	push   eax
  661771:	e8 6a 2d e8 ff       	call   0x4e44e0
  661776:	83 c4 04             	add    esp,0x4
  661779:	85 ff                	test   edi,edi
  66177b:	74 09                	je     0x661786
  66177d:	8b 17                	mov    edx,DWORD PTR [edi]
  66177f:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661782:	8b cf                	mov    ecx,edi
  661784:	ff d0                	call   eax
  661786:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  66178a:	51                   	push   ecx
  66178b:	e9 98 02 00 00       	jmp    0x661a28
  661790:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  661794:	85 c9                	test   ecx,ecx
  661796:	74 07                	je     0x66179f
  661798:	8b 01                	mov    eax,DWORD PTR [ecx]
  66179a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  66179d:	ff d2                	call   edx
  66179f:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  6617a3:	85 c0                	test   eax,eax
  6617a5:	74 09                	je     0x6617b0
  6617a7:	50                   	push   eax
  6617a8:	e8 33 2d e8 ff       	call   0x4e44e0
  6617ad:	83 c4 04             	add    esp,0x4
  6617b0:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  6617b4:	85 c9                	test   ecx,ecx
  6617b6:	0f 84 a1 de ff ff    	je     0x65f65d
  6617bc:	8b 01                	mov    eax,DWORD PTR [ecx]
  6617be:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6617c1:	ff d2                	call   edx
  6617c3:	e9 95 de ff ff       	jmp    0x65f65d
  6617c8:	8b 84 24 70 01 00 00 	mov    eax,DWORD PTR [esp+0x170]
  6617cf:	85 c0                	test   eax,eax
  6617d1:	74 09                	je     0x6617dc
  6617d3:	50                   	push   eax
  6617d4:	e8 07 2d e8 ff       	call   0x4e44e0
  6617d9:	83 c4 04             	add    esp,0x4
  6617dc:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  6617e0:	85 c9                	test   ecx,ecx
  6617e2:	74 07                	je     0x6617eb
  6617e4:	8b 01                	mov    eax,DWORD PTR [ecx]
  6617e6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6617e9:	ff d2                	call   edx
  6617eb:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  6617ef:	85 c0                	test   eax,eax
  6617f1:	74 09                	je     0x6617fc
  6617f3:	50                   	push   eax
  6617f4:	e8 e7 2c e8 ff       	call   0x4e44e0
  6617f9:	83 c4 04             	add    esp,0x4
  6617fc:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  661800:	85 c9                	test   ecx,ecx
  661802:	74 07                	je     0x66180b
  661804:	8b 01                	mov    eax,DWORD PTR [ecx]
  661806:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661809:	ff d2                	call   edx
  66180b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  66180f:	85 c9                	test   ecx,ecx
  661811:	74 07                	je     0x66181a
  661813:	8b 01                	mov    eax,DWORD PTR [ecx]
  661815:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661818:	ff d2                	call   edx
  66181a:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  66181e:	85 c0                	test   eax,eax
  661820:	74 09                	je     0x66182b
  661822:	50                   	push   eax
  661823:	e8 b8 2c e8 ff       	call   0x4e44e0
  661828:	83 c4 04             	add    esp,0x4
  66182b:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  661832:	e8 89 15 ff ff       	call   0x652dc0
  661837:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  66183b:	85 c9                	test   ecx,ecx
  66183d:	74 05                	je     0x661844
  66183f:	e8 fc 43 fc ff       	call   0x625c40
  661844:	b8 06 00 00 00       	mov    eax,0x6
  661849:	5f                   	pop    edi
  66184a:	5e                   	pop    esi
  66184b:	5b                   	pop    ebx
  66184c:	8b e5                	mov    esp,ebp
  66184e:	5d                   	pop    ebp
  66184f:	c2 30 00             	ret    0x30
  661852:	8b 84 24 70 01 00 00 	mov    eax,DWORD PTR [esp+0x170]
  661859:	85 c0                	test   eax,eax
  66185b:	74 09                	je     0x661866
  66185d:	50                   	push   eax
  66185e:	e8 7d 2c e8 ff       	call   0x4e44e0
  661863:	83 c4 04             	add    esp,0x4
  661866:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  66186a:	85 c9                	test   ecx,ecx
  66186c:	74 07                	je     0x661875
  66186e:	8b 01                	mov    eax,DWORD PTR [ecx]
  661870:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661873:	ff d2                	call   edx
  661875:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  661879:	85 c0                	test   eax,eax
  66187b:	74 09                	je     0x661886
  66187d:	50                   	push   eax
  66187e:	e8 5d 2c e8 ff       	call   0x4e44e0
  661883:	83 c4 04             	add    esp,0x4
  661886:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  66188a:	85 c9                	test   ecx,ecx
  66188c:	74 07                	je     0x661895
  66188e:	8b 01                	mov    eax,DWORD PTR [ecx]
  661890:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661893:	ff d2                	call   edx
  661895:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  661899:	85 c9                	test   ecx,ecx
  66189b:	74 07                	je     0x6618a4
  66189d:	8b 01                	mov    eax,DWORD PTR [ecx]
  66189f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6618a2:	ff d2                	call   edx
  6618a4:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  6618a8:	85 c0                	test   eax,eax
  6618aa:	74 09                	je     0x6618b5
  6618ac:	50                   	push   eax
  6618ad:	e8 2e 2c e8 ff       	call   0x4e44e0
  6618b2:	83 c4 04             	add    esp,0x4
  6618b5:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  6618bc:	e8 ff 14 ff ff       	call   0x652dc0
  6618c1:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6618c5:	85 c9                	test   ecx,ecx
  6618c7:	0f 84 77 ff ff ff    	je     0x661844
  6618cd:	e8 6e 43 fc ff       	call   0x625c40
  6618d2:	b8 06 00 00 00       	mov    eax,0x6
  6618d7:	5f                   	pop    edi
  6618d8:	5e                   	pop    esi
  6618d9:	5b                   	pop    ebx
  6618da:	8b e5                	mov    esp,ebp
  6618dc:	5d                   	pop    ebp
  6618dd:	c2 30 00             	ret    0x30
  6618e0:	8b 84 24 80 01 00 00 	mov    eax,DWORD PTR [esp+0x180]
  6618e7:	85 c0                	test   eax,eax
  6618e9:	74 09                	je     0x6618f4
  6618eb:	50                   	push   eax
  6618ec:	e8 ef 2b e8 ff       	call   0x4e44e0
  6618f1:	83 c4 04             	add    esp,0x4
  6618f4:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  6618f8:	85 c9                	test   ecx,ecx
  6618fa:	74 07                	je     0x661903
  6618fc:	8b 01                	mov    eax,DWORD PTR [ecx]
  6618fe:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661901:	ff d2                	call   edx
  661903:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  661907:	85 c0                	test   eax,eax
  661909:	74 09                	je     0x661914
  66190b:	50                   	push   eax
  66190c:	e8 cf 2b e8 ff       	call   0x4e44e0
  661911:	83 c4 04             	add    esp,0x4
  661914:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  661918:	85 c9                	test   ecx,ecx
  66191a:	74 07                	je     0x661923
  66191c:	8b 01                	mov    eax,DWORD PTR [ecx]
  66191e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661921:	ff d2                	call   edx
  661923:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  661927:	85 c9                	test   ecx,ecx
  661929:	74 07                	je     0x661932
  66192b:	8b 01                	mov    eax,DWORD PTR [ecx]
  66192d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661930:	ff d2                	call   edx
  661932:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  661936:	85 c0                	test   eax,eax
  661938:	74 09                	je     0x661943
  66193a:	50                   	push   eax
  66193b:	e8 a0 2b e8 ff       	call   0x4e44e0
  661940:	83 c4 04             	add    esp,0x4
  661943:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  66194a:	e8 71 14 ff ff       	call   0x652dc0
  66194f:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  661953:	85 c9                	test   ecx,ecx
  661955:	0f 84 e9 fe ff ff    	je     0x661844
  66195b:	e8 e0 42 fc ff       	call   0x625c40
  661960:	b8 06 00 00 00       	mov    eax,0x6
  661965:	5f                   	pop    edi
  661966:	5e                   	pop    esi
  661967:	5b                   	pop    ebx
  661968:	8b e5                	mov    esp,ebp
  66196a:	5d                   	pop    ebp
  66196b:	c2 30 00             	ret    0x30
  66196e:	e8 bd fe fe ff       	call   0x651830
  661973:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
  66197a:	e9 bd fc ff ff       	jmp    0x66163c
  66197f:	8b 84 24 80 01 00 00 	mov    eax,DWORD PTR [esp+0x180]
  661986:	85 c0                	test   eax,eax
  661988:	74 09                	je     0x661993
  66198a:	50                   	push   eax
  66198b:	e8 50 2b e8 ff       	call   0x4e44e0
  661990:	83 c4 04             	add    esp,0x4
  661993:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  661997:	85 c9                	test   ecx,ecx
  661999:	74 07                	je     0x6619a2
  66199b:	8b 01                	mov    eax,DWORD PTR [ecx]
  66199d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6619a0:	ff d2                	call   edx
  6619a2:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  6619a6:	85 c0                	test   eax,eax
  6619a8:	74 09                	je     0x6619b3
  6619aa:	50                   	push   eax
  6619ab:	e8 30 2b e8 ff       	call   0x4e44e0
  6619b0:	83 c4 04             	add    esp,0x4
  6619b3:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  6619b7:	e8 74 e7 23 00       	call   0x8a0130
  6619bc:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  6619c0:	e8 6b e7 23 00       	call   0x8a0130
  6619c5:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  6619c9:	e8 62 fe fe ff       	call   0x651830
  6619ce:	e9 58 fe ff ff       	jmp    0x66182b
  6619d3:	8b 8c 24 6c 02 00 00 	mov    ecx,DWORD PTR [esp+0x26c]
  6619da:	85 c9                	test   ecx,ecx
  6619dc:	74 0d                	je     0x6619eb
  6619de:	51                   	push   ecx
  6619df:	e8 fc 2a e8 ff       	call   0x4e44e0
  6619e4:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  6619e8:	83 c4 04             	add    esp,0x4
  6619eb:	8b 8c 24 1c 01 00 00 	mov    ecx,DWORD PTR [esp+0x11c]
  6619f2:	85 c9                	test   ecx,ecx
  6619f4:	74 0d                	je     0x661a03
  6619f6:	51                   	push   ecx
  6619f7:	e8 e4 2a e8 ff       	call   0x4e44e0
  6619fc:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  661a00:	83 c4 04             	add    esp,0x4
  661a03:	85 c0                	test   eax,eax
  661a05:	74 09                	je     0x661a10
  661a07:	8b 10                	mov    edx,DWORD PTR [eax]
  661a09:	8b c8                	mov    ecx,eax
  661a0b:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661a0e:	ff d0                	call   eax
  661a10:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  661a14:	85 c9                	test   ecx,ecx
  661a16:	74 07                	je     0x661a1f
  661a18:	8b 11                	mov    edx,DWORD PTR [ecx]
  661a1a:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661a1d:	ff d0                	call   eax
  661a1f:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  661a23:	85 c0                	test   eax,eax
  661a25:	74 09                	je     0x661a30
  661a27:	50                   	push   eax
  661a28:	e8 b3 2a e8 ff       	call   0x4e44e0
  661a2d:	83 c4 04             	add    esp,0x4
  661a30:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  661a34:	85 c9                	test   ecx,ecx
  661a36:	74 07                	je     0x661a3f
  661a38:	8b 11                	mov    edx,DWORD PTR [ecx]
  661a3a:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661a3d:	ff d0                	call   eax
  661a3f:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  661a43:	85 c9                	test   ecx,ecx
  661a45:	74 07                	je     0x661a4e
  661a47:	8b 11                	mov    edx,DWORD PTR [ecx]
  661a49:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661a4c:	ff d0                	call   eax
  661a4e:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  661a52:	85 c0                	test   eax,eax
  661a54:	74 09                	je     0x661a5f
  661a56:	50                   	push   eax
  661a57:	e8 84 2a e8 ff       	call   0x4e44e0
  661a5c:	83 c4 04             	add    esp,0x4
  661a5f:	8b 8c 24 e4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1e4]
  661a66:	51                   	push   ecx
  661a67:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  661a6e:	e8 3d ff 24 00       	call   0x8b19b0
  661a73:	8b 94 24 b4 01 00 00 	mov    edx,DWORD PTR [esp+0x1b4]
  661a7a:	52                   	push   edx
  661a7b:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  661a82:	e8 29 ff 24 00       	call   0x8b19b0
  661a87:	e9 ab fd ff ff       	jmp    0x661837
  661a8c:	3b c6                	cmp    eax,esi
  661a8e:	74 09                	je     0x661a99
  661a90:	50                   	push   eax
  661a91:	e8 4a 2a e8 ff       	call   0x4e44e0
  661a96:	83 c4 04             	add    esp,0x4
  661a99:	3b fe                	cmp    edi,esi
  661a9b:	74 09                	je     0x661aa6
  661a9d:	8b 07                	mov    eax,DWORD PTR [edi]
  661a9f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661aa2:	8b cf                	mov    ecx,edi
  661aa4:	ff d2                	call   edx
  661aa6:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  661aaa:	3b c6                	cmp    eax,esi
  661aac:	74 09                	je     0x661ab7
  661aae:	50                   	push   eax
  661aaf:	e8 2c 2a e8 ff       	call   0x4e44e0
  661ab4:	83 c4 04             	add    esp,0x4
  661ab7:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  661abb:	3b ce                	cmp    ecx,esi
  661abd:	74 07                	je     0x661ac6
  661abf:	8b 01                	mov    eax,DWORD PTR [ecx]
  661ac1:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661ac4:	ff d2                	call   edx
  661ac6:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  661aca:	3b ce                	cmp    ecx,esi
  661acc:	74 07                	je     0x661ad5
  661ace:	8b 01                	mov    eax,DWORD PTR [ecx]
  661ad0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661ad3:	ff d2                	call   edx
  661ad5:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  661ad9:	3b c6                	cmp    eax,esi
  661adb:	74 09                	je     0x661ae6
  661add:	50                   	push   eax
  661ade:	e8 fd 29 e8 ff       	call   0x4e44e0
  661ae3:	83 c4 04             	add    esp,0x4
  661ae6:	8b 84 24 e4 01 00 00 	mov    eax,DWORD PTR [esp+0x1e4]
  661aed:	50                   	push   eax
  661aee:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  661af5:	e8 b6 fe 24 00       	call   0x8b19b0
  661afa:	8b 8c 24 b4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1b4]
  661b01:	51                   	push   ecx
  661b02:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  661b09:	e8 a2 fe 24 00       	call   0x8b19b0
  661b0e:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  661b12:	3b ce                	cmp    ecx,esi
  661b14:	e9 24 fd ff ff       	jmp    0x66183d
  661b19:	8b 84 24 04 01 00 00 	mov    eax,DWORD PTR [esp+0x104]
  661b20:	3b c6                	cmp    eax,esi
  661b22:	74 09                	je     0x661b2d
  661b24:	50                   	push   eax
  661b25:	e8 b6 29 e8 ff       	call   0x4e44e0
  661b2a:	83 c4 04             	add    esp,0x4
  661b2d:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  661b31:	3b ce                	cmp    ecx,esi
  661b33:	74 07                	je     0x661b3c
  661b35:	8b 11                	mov    edx,DWORD PTR [ecx]
  661b37:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661b3a:	ff d0                	call   eax
  661b3c:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  661b40:	e9 29 e3 ff ff       	jmp    0x65fe6e
  661b45:	85 c0                	test   eax,eax
  661b47:	74 09                	je     0x661b52
  661b49:	50                   	push   eax
  661b4a:	e8 91 29 e8 ff       	call   0x4e44e0
  661b4f:	83 c4 04             	add    esp,0x4
  661b52:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  661b56:	85 d2                	test   edx,edx
  661b58:	0f 84 8e 01 00 00    	je     0x661cec
  661b5e:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  661b61:	2b 42 08             	sub    eax,DWORD PTR [edx+0x8]
  661b64:	c1 f8 06             	sar    eax,0x6
  661b67:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  661b6b:	0f 84 7b 01 00 00    	je     0x661cec
  661b71:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
  661b74:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  661b78:	85 c0                	test   eax,eax
  661b7a:	b9 10 00 00 00       	mov    ecx,0x10
  661b7f:	8d bc 24 b0 00 00 00 	lea    edi,[esp+0xb0]
  661b86:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  661b88:	c7 84 24 cc 00 00 00 08 00 00 00 	mov    DWORD PTR [esp+0xcc],0x8
  661b93:	74 1d                	je     0x661bb2
  661b95:	83 b8 08 04 00 00 01 	cmp    DWORD PTR [eax+0x408],0x1
  661b9c:	75 14                	jne    0x661bb2
  661b9e:	83 b8 0c 04 00 00 50 	cmp    DWORD PTR [eax+0x40c],0x50
  661ba5:	75 0b                	jne    0x661bb2
  661ba7:	c7 84 24 e8 00 00 00 14 00 00 00 	mov    DWORD PTR [esp+0xe8],0x14
  661bb2:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  661bb6:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
  661bb9:	83 c0 08             	add    eax,0x8
  661bbc:	3b 78 08             	cmp    edi,DWORD PTR [eax+0x8]
  661bbf:	0f 83 9f 00 00 00    	jae    0x661c64
  661bc5:	85 ff                	test   edi,edi
  661bc7:	8d 4f 40             	lea    ecx,[edi+0x40]
  661bca:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  661bcd:	0f 84 a6 00 00 00    	je     0x661c79
  661bd3:	b9 10 00 00 00       	mov    ecx,0x10
  661bd8:	8d b4 24 b0 00 00 00 	lea    esi,[esp+0xb0]
  661bdf:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  661be1:	e9 93 00 00 00       	jmp    0x661c79
  661be6:	8b 84 24 04 01 00 00 	mov    eax,DWORD PTR [esp+0x104]
  661bed:	85 c0                	test   eax,eax
  661bef:	74 09                	je     0x661bfa
  661bf1:	50                   	push   eax
  661bf2:	e8 e9 28 e8 ff       	call   0x4e44e0
  661bf7:	83 c4 04             	add    esp,0x4
  661bfa:	85 ff                	test   edi,edi
  661bfc:	74 09                	je     0x661c07
  661bfe:	8b 07                	mov    eax,DWORD PTR [edi]
  661c00:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661c03:	8b cf                	mov    ecx,edi
  661c05:	ff d2                	call   edx
  661c07:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  661c0b:	50                   	push   eax
  661c0c:	e8 cf 28 e8 ff       	call   0x4e44e0
  661c11:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  661c15:	83 c4 04             	add    esp,0x4
  661c18:	85 c9                	test   ecx,ecx
  661c1a:	74 07                	je     0x661c23
  661c1c:	8b 11                	mov    edx,DWORD PTR [ecx]
  661c1e:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661c21:	ff d0                	call   eax
  661c23:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  661c27:	85 c9                	test   ecx,ecx
  661c29:	74 07                	je     0x661c32
  661c2b:	8b 11                	mov    edx,DWORD PTR [ecx]
  661c2d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  661c30:	ff d0                	call   eax
  661c32:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  661c36:	85 c0                	test   eax,eax
  661c38:	74 09                	je     0x661c43
  661c3a:	50                   	push   eax
  661c3b:	e8 a0 28 e8 ff       	call   0x4e44e0
  661c40:	83 c4 04             	add    esp,0x4
  661c43:	8b 8c 24 e4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1e4]
  661c4a:	51                   	push   ecx
  661c4b:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  661c52:	e8 59 fd 24 00       	call   0x8b19b0
  661c57:	8b 94 24 b4 01 00 00 	mov    edx,DWORD PTR [esp+0x1b4]
  661c5e:	52                   	push   edx
  661c5f:	e9 b0 d3 ff ff       	jmp    0x65f014
  661c64:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  661c68:	8d 94 24 b0 00 00 00 	lea    edx,[esp+0xb0]
  661c6f:	52                   	push   edx
  661c70:	57                   	push   edi
  661c71:	83 c1 08             	add    ecx,0x8
  661c74:	e8 57 d8 42 00       	call   0xa8f4d0
  661c79:	83 7c 24 34 01       	cmp    DWORD PTR [esp+0x34],0x1
  661c7e:	0f 86 ed 00 00 00    	jbe    0x661d71
  661c84:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  661c88:	83 c0 ff             	add    eax,0xffffffff
  661c8b:	c7 44 24 40 40 00 00 00 	mov    DWORD PTR [esp+0x40],0x40
  661c93:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  661c97:	eb 07                	jmp    0x661ca0
  661c99:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  661ca0:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  661ca4:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  661ca8:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  661cab:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
  661cae:	03 74 24 40          	add    esi,DWORD PTR [esp+0x40]
  661cb2:	83 c0 08             	add    eax,0x8
  661cb5:	3b 78 08             	cmp    edi,DWORD PTR [eax+0x8]
  661cb8:	73 13                	jae    0x661ccd
  661cba:	85 ff                	test   edi,edi
  661cbc:	8d 57 40             	lea    edx,[edi+0x40]
  661cbf:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  661cc2:	74 17                	je     0x661cdb
  661cc4:	b9 10 00 00 00       	mov    ecx,0x10
  661cc9:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  661ccb:	eb 0e                	jmp    0x661cdb
  661ccd:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  661cd1:	56                   	push   esi
  661cd2:	57                   	push   edi
  661cd3:	83 c1 08             	add    ecx,0x8
  661cd6:	e8 f5 d7 42 00       	call   0xa8f4d0
  661cdb:	83 44 24 40 40       	add    DWORD PTR [esp+0x40],0x40
  661ce0:	83 6c 24 34 01       	sub    DWORD PTR [esp+0x34],0x1
  661ce5:	75 b9                	jne    0x661ca0
  661ce7:	e9 85 00 00 00       	jmp    0x661d71
  661cec:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  661cf3:	e8 18 fe fd ff       	call   0x641b10
  661cf8:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  661cfe:	8d 4f 08             	lea    ecx,[edi+0x8]
  661d01:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
  661d04:	3b 79 08             	cmp    edi,DWORD PTR [ecx+0x8]
  661d07:	f3 0f 11 84 24 b0 00 00 00 	movss  DWORD PTR [esp+0xb0],xmm0
  661d10:	f3 0f 10 84 24 84 00 00 00 	movss  xmm0,DWORD PTR [esp+0x84]
  661d19:	f3 0f 11 84 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm0
  661d22:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  661d28:	f3 0f 11 84 24 b8 00 00 00 	movss  DWORD PTR [esp+0xb8],xmm0
  661d31:	c7 84 24 cc 00 00 00 07 00 00 00 	mov    DWORD PTR [esp+0xcc],0x7
  661d3c:	c7 84 24 e8 00 00 00 10 00 00 00 	mov    DWORD PTR [esp+0xe8],0x10
  661d47:	73 1a                	jae    0x661d63
  661d49:	85 ff                	test   edi,edi
  661d4b:	8d 47 40             	lea    eax,[edi+0x40]
  661d4e:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  661d51:	74 1e                	je     0x661d71
  661d53:	b9 10 00 00 00       	mov    ecx,0x10
  661d58:	8d b4 24 b0 00 00 00 	lea    esi,[esp+0xb0]
  661d5f:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  661d61:	eb 0e                	jmp    0x661d71
  661d63:	8d 94 24 b0 00 00 00 	lea    edx,[esp+0xb0]
  661d6a:	52                   	push   edx
  661d6b:	57                   	push   edi
  661d6c:	e8 5f d7 42 00       	call   0xa8f4d0
  661d71:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  661d75:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  661d78:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  661d7b:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  661d7f:	83 ec 08             	sub    esp,0x8
  661d82:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  661d86:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  661d8a:	d9 1c 24             	fstp   DWORD PTR [esp]
  661d8d:	50                   	push   eax
  661d8e:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  661d91:	51                   	push   ecx
  661d92:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  661d96:	52                   	push   edx
  661d97:	50                   	push   eax
  661d98:	51                   	push   ecx
  661d99:	8b cb                	mov    ecx,ebx
  661d9b:	e8 10 f4 fe ff       	call   0x6511b0
  661da0:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  661da4:	85 f6                	test   esi,esi
  661da6:	0f 84 5a ea ff ff    	je     0x660806
  661dac:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  661daf:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  661db2:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  661db5:	57                   	push   edi
  661db6:	52                   	push   edx
  661db7:	50                   	push   eax
  661db8:	56                   	push   esi
  661db9:	8b cb                	mov    ecx,ebx
  661dbb:	e8 50 82 ff ff       	call   0x65a010
  661dc0:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  661dc3:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  661dc6:	57                   	push   edi
  661dc7:	53                   	push   ebx
  661dc8:	51                   	push   ecx
  661dc9:	52                   	push   edx
  661dca:	8d 8c 24 a8 02 00 00 	lea    ecx,[esp+0x2a8]
  661dd1:	e8 0a 25 fe ff       	call   0x6442e0
  661dd6:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  661dda:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  661ddd:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  661de4:	2b c8                	sub    ecx,eax
  661de6:	8b 02                	mov    eax,DWORD PTR [edx]
  661de8:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  661deb:	8d 0c 88             	lea    ecx,[eax+ecx*4]
  661dee:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  661df2:	c1 e0 05             	shl    eax,0x5
  661df5:	03 02                	add    eax,DWORD PTR [edx]
  661df7:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  661dfa:	6a 01                	push   0x1
  661dfc:	52                   	push   edx
  661dfd:	51                   	push   ecx
  661dfe:	50                   	push   eax
  661dff:	56                   	push   esi
  661e00:	8d 8c 24 ac 02 00 00 	lea    ecx,[esp+0x2ac]
  661e07:	e8 f4 cd fe ff       	call   0x64ec00
  661e0c:	84 c0                	test   al,al
  661e0e:	8d 8c 24 98 02 00 00 	lea    ecx,[esp+0x298]
  661e15:	0f 85 91 00 00 00    	jne    0x661eac
  661e1b:	e8 e0 1f fe ff       	call   0x643e00
  661e20:	8b 06                	mov    eax,DWORD PTR [esi]
  661e22:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661e25:	8b ce                	mov    ecx,esi
  661e27:	ff d2                	call   edx
  661e29:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  661e2d:	85 c0                	test   eax,eax
  661e2f:	74 09                	je     0x661e3a
  661e31:	50                   	push   eax
  661e32:	e8 a9 26 e8 ff       	call   0x4e44e0
  661e37:	83 c4 04             	add    esp,0x4
  661e3a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  661e3e:	85 c9                	test   ecx,ecx
  661e40:	74 07                	je     0x661e49
  661e42:	8b 01                	mov    eax,DWORD PTR [ecx]
  661e44:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661e47:	ff d2                	call   edx
  661e49:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  661e4d:	85 c9                	test   ecx,ecx
  661e4f:	74 07                	je     0x661e58
  661e51:	8b 01                	mov    eax,DWORD PTR [ecx]
  661e53:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  661e56:	ff d2                	call   edx
  661e58:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  661e5c:	85 c0                	test   eax,eax
  661e5e:	74 09                	je     0x661e69
  661e60:	50                   	push   eax
  661e61:	e8 7a 26 e8 ff       	call   0x4e44e0
  661e66:	83 c4 04             	add    esp,0x4
  661e69:	8b 84 24 e4 01 00 00 	mov    eax,DWORD PTR [esp+0x1e4]
  661e70:	50                   	push   eax
  661e71:	8d 8c 24 dc 01 00 00 	lea    ecx,[esp+0x1dc]
  661e78:	e8 33 fb 24 00       	call   0x8b19b0
  661e7d:	8b 8c 24 b4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1b4]
  661e84:	51                   	push   ecx
  661e85:	8d 8c 24 ac 01 00 00 	lea    ecx,[esp+0x1ac]
  661e8c:	e8 1f fb 24 00       	call   0x8b19b0
  661e91:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  661e95:	85 c9                	test   ecx,ecx
  661e97:	74 05                	je     0x661e9e
  661e99:	e8 a2 3d fc ff       	call   0x625c40
  661e9e:	b8 07 00 00 00       	mov    eax,0x7
  661ea3:	5f                   	pop    edi
  661ea4:	5e                   	pop    esi
  661ea5:	5b                   	pop    ebx
  661ea6:	8b e5                	mov    esp,ebp
  661ea8:	5d                   	pop    ebp
  661ea9:	c2 30 00             	ret    0x30
  661eac:	e8 4f 1f fe ff       	call   0x643e00
  661eb1:	e9 47 e9 ff ff       	jmp    0x6607fd
  661eb6:	8b 45 34             	mov    eax,DWORD PTR [ebp+0x34]
  661eb9:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  661ebc:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  661ebf:	8b 75 1c             	mov    esi,DWORD PTR [ebp+0x1c]
  661ec2:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  661ec5:	6a 00                	push   0x0
  661ec7:	50                   	push   eax
  661ec8:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  661ecb:	52                   	push   edx
  661ecc:	6a 00                	push   0x0
  661ece:	50                   	push   eax
  661ecf:	8d 54 24 4c          	lea    edx,[esp+0x4c]
  661ed3:	52                   	push   edx
  661ed4:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  661ed7:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  661edb:	50                   	push   eax
  661edc:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  661edf:	56                   	push   esi
  661ee0:	57                   	push   edi
  661ee1:	51                   	push   ecx
  661ee2:	d9 1c 24             	fstp   DWORD PTR [esp]
  661ee5:	52                   	push   edx
  661ee6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  661ee9:	50                   	push   eax
  661eea:	52                   	push   edx
  661eeb:	e8 e0 f9 fd ff       	call   0x6418d0
  661ef0:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  661ef4:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  661ef8:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  661efb:	83 ec 08             	sub    esp,0x8
  661efe:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  661f02:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  661f06:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  661f0a:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  661f0d:	d9 1c 24             	fstp   DWORD PTR [esp]
  661f10:	57                   	push   edi
  661f11:	50                   	push   eax
  661f12:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  661f16:	51                   	push   ecx
  661f17:	52                   	push   edx
  661f18:	50                   	push   eax
  661f19:	8b cb                	mov    ecx,ebx
  661f1b:	e8 90 f2 fe ff       	call   0x6511b0
  661f20:	85 f6                	test   esi,esi
  661f22:	74 5f                	je     0x661f83
  661f24:	83 3e 00             	cmp    DWORD PTR [esi],0x0
  661f27:	74 5a                	je     0x661f83
  661f29:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  661f2c:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  661f2f:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  661f32:	51                   	push   ecx
  661f33:	53                   	push   ebx
  661f34:	52                   	push   edx
  661f35:	50                   	push   eax
  661f36:	8d 8c 24 a8 02 00 00 	lea    ecx,[esp+0x2a8]
  661f3d:	e8 9e 23 fe ff       	call   0x6442e0
  661f42:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  661f46:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  661f49:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
  661f50:	2b d0                	sub    edx,eax
  661f52:	8b 07                	mov    eax,DWORD PTR [edi]
  661f54:	6a 01                	push   0x1
  661f56:	51                   	push   ecx
  661f57:	8d 0c 90             	lea    ecx,[eax+edx*4]
  661f5a:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  661f5e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  661f61:	51                   	push   ecx
  661f62:	8b 0e                	mov    ecx,DWORD PTR [esi]
  661f64:	c1 e2 05             	shl    edx,0x5
  661f67:	03 10                	add    edx,DWORD PTR [eax]
  661f69:	52                   	push   edx
  661f6a:	51                   	push   ecx
  661f6b:	8d 8c 24 ac 02 00 00 	lea    ecx,[esp+0x2ac]
  661f72:	e8 89 cc fe ff       	call   0x64ec00
  661f77:	8d 8c 24 98 02 00 00 	lea    ecx,[esp+0x298]
  661f7e:	e8 7d 1e fe ff       	call   0x643e00
  661f83:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  661f88:	74 09                	je     0x661f93
  661f8a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  661f8e:	e8 ad 3c fc ff       	call   0x625c40
  661f93:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  661f97:	5f                   	pop    edi
  661f98:	5e                   	pop    esi
  661f99:	5b                   	pop    ebx
  661f9a:	8b e5                	mov    esp,ebp
  661f9c:	5d                   	pop    ebp
  661f9d:	c2 30 00             	ret    0x30

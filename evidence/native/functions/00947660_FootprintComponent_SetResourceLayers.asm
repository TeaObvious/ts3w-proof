# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00947660, 0x00947838); analyst name FootprintComponent_SetResourceLayers.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00947660 <.text+0x546660>:
  947660:	51                   	push   ecx
  947661:	53                   	push   ebx
  947662:	56                   	push   esi
  947663:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  947667:	8b d9                	mov    ebx,ecx
  947669:	3b 73 28             	cmp    esi,DWORD PTR [ebx+0x28]
  94766c:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
  947670:	74 26                	je     0x947698
  947672:	85 f6                	test   esi,esi
  947674:	75 09                	jne    0x94767f
  947676:	80 7c 24 1c 01       	cmp    BYTE PTR [esp+0x1c],0x1
  94767b:	75 1b                	jne    0x947698
  94767d:	eb 08                	jmp    0x947687
  94767f:	8b 06                	mov    eax,DWORD PTR [esi]
  947681:	8b 10                	mov    edx,DWORD PTR [eax]
  947683:	8b ce                	mov    ecx,esi
  947685:	ff d2                	call   edx
  947687:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
  94768a:	85 c9                	test   ecx,ecx
  94768c:	74 07                	je     0x947695
  94768e:	8b 01                	mov    eax,DWORD PTR [ecx]
  947690:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  947693:	ff d2                	call   edx
  947695:	89 73 28             	mov    DWORD PTR [ebx+0x28],esi
  947698:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
  94769b:	85 c9                	test   ecx,ecx
  94769d:	55                   	push   ebp
  94769e:	57                   	push   edi
  94769f:	74 37                	je     0x9476d8
  9476a1:	e8 aa b6 fe ff       	call   0x932d50
  9476a6:	8b f8                	mov    edi,eax
  9476a8:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  9476ab:	2b 37                	sub    esi,DWORD PTR [edi]
  9476ad:	8d 4b 58             	lea    ecx,[ebx+0x58]
  9476b0:	c1 fe 06             	sar    esi,0x6
  9476b3:	56                   	push   esi
  9476b4:	e8 37 ab 2d 00       	call   0xc221f0
  9476b9:	33 c0                	xor    eax,eax
  9476bb:	85 f6                	test   esi,esi
  9476bd:	76 19                	jbe    0x9476d8
  9476bf:	33 c9                	xor    ecx,ecx
  9476c1:	8b 17                	mov    edx,DWORD PTR [edi]
  9476c3:	8b 54 0a 08          	mov    edx,DWORD PTR [edx+ecx*1+0x8]
  9476c7:	8b 6b 58             	mov    ebp,DWORD PTR [ebx+0x58]
  9476ca:	89 54 85 00          	mov    DWORD PTR [ebp+eax*4+0x0],edx
  9476ce:	83 c0 01             	add    eax,0x1
  9476d1:	83 c1 40             	add    ecx,0x40
  9476d4:	3b c6                	cmp    eax,esi
  9476d6:	72 e9                	jb     0x9476c1
  9476d8:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  9476dc:	3b 73 2c             	cmp    esi,DWORD PTR [ebx+0x2c]
  9476df:	74 26                	je     0x947707
  9476e1:	85 f6                	test   esi,esi
  9476e3:	75 09                	jne    0x9476ee
  9476e5:	80 7c 24 24 01       	cmp    BYTE PTR [esp+0x24],0x1
  9476ea:	75 1b                	jne    0x947707
  9476ec:	eb 08                	jmp    0x9476f6
  9476ee:	8b 06                	mov    eax,DWORD PTR [esi]
  9476f0:	8b 10                	mov    edx,DWORD PTR [eax]
  9476f2:	8b ce                	mov    ecx,esi
  9476f4:	ff d2                	call   edx
  9476f6:	8b 4b 2c             	mov    ecx,DWORD PTR [ebx+0x2c]
  9476f9:	85 c9                	test   ecx,ecx
  9476fb:	74 07                	je     0x947704
  9476fd:	8b 01                	mov    eax,DWORD PTR [ecx]
  9476ff:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  947702:	ff d2                	call   edx
  947704:	89 73 2c             	mov    DWORD PTR [ebx+0x2c],esi
  947707:	8b 4b 2c             	mov    ecx,DWORD PTR [ebx+0x2c]
  94770a:	85 c9                	test   ecx,ecx
  94770c:	74 39                	je     0x947747
  94770e:	e8 3d b6 fe ff       	call   0x932d50
  947713:	8b f8                	mov    edi,eax
  947715:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  947718:	2b 37                	sub    esi,DWORD PTR [edi]
  94771a:	8d 4b 48             	lea    ecx,[ebx+0x48]
  94771d:	c1 fe 06             	sar    esi,0x6
  947720:	56                   	push   esi
  947721:	e8 ca aa 2d 00       	call   0xc221f0
  947726:	33 c0                	xor    eax,eax
  947728:	85 f6                	test   esi,esi
  94772a:	76 1b                	jbe    0x947747
  94772c:	33 c9                	xor    ecx,ecx
  94772e:	8b ff                	mov    edi,edi
  947730:	8b 17                	mov    edx,DWORD PTR [edi]
  947732:	8b 54 11 08          	mov    edx,DWORD PTR [ecx+edx*1+0x8]
  947736:	8b 6b 48             	mov    ebp,DWORD PTR [ebx+0x48]
  947739:	89 54 85 00          	mov    DWORD PTR [ebp+eax*4+0x0],edx
  94773d:	83 c0 01             	add    eax,0x1
  947740:	83 c1 40             	add    ecx,0x40
  947743:	3b c6                	cmp    eax,esi
  947745:	72 e9                	jb     0x947730
  947747:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  94774b:	3b 73 30             	cmp    esi,DWORD PTR [ebx+0x30]
  94774e:	74 26                	je     0x947776
  947750:	85 f6                	test   esi,esi
  947752:	75 09                	jne    0x94775d
  947754:	80 7c 24 24 01       	cmp    BYTE PTR [esp+0x24],0x1
  947759:	75 1b                	jne    0x947776
  94775b:	eb 08                	jmp    0x947765
  94775d:	8b 06                	mov    eax,DWORD PTR [esi]
  94775f:	8b 10                	mov    edx,DWORD PTR [eax]
  947761:	8b ce                	mov    ecx,esi
  947763:	ff d2                	call   edx
  947765:	8b 4b 30             	mov    ecx,DWORD PTR [ebx+0x30]
  947768:	85 c9                	test   ecx,ecx
  94776a:	74 07                	je     0x947773
  94776c:	8b 01                	mov    eax,DWORD PTR [ecx]
  94776e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  947771:	ff d2                	call   edx
  947773:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
  947776:	8b 4b 30             	mov    ecx,DWORD PTR [ebx+0x30]
  947779:	85 c9                	test   ecx,ecx
  94777b:	0f 84 89 00 00 00    	je     0x94780a
  947781:	e8 da b5 fe ff       	call   0x932d60
  947786:	8b 7b 6c             	mov    edi,DWORD PTR [ebx+0x6c]
  947789:	8b 4b 68             	mov    ecx,DWORD PTR [ebx+0x68]
  94778c:	8b e8                	mov    ebp,eax
  94778e:	8b 75 04             	mov    esi,DWORD PTR [ebp+0x4]
  947791:	2b 75 00             	sub    esi,DWORD PTR [ebp+0x0]
  947794:	83 c3 68             	add    ebx,0x68
  947797:	8b c7                	mov    eax,edi
  947799:	2b c1                	sub    eax,ecx
  94779b:	c1 fe 06             	sar    esi,0x6
  94779e:	c1 f8 02             	sar    eax,0x2
  9477a1:	3b f0                	cmp    esi,eax
  9477a3:	76 1c                	jbe    0x9477c1
  9477a5:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  9477a9:	51                   	push   ecx
  9477aa:	8b d6                	mov    edx,esi
  9477ac:	2b d0                	sub    edx,eax
  9477ae:	52                   	push   edx
  9477af:	57                   	push   edi
  9477b0:	8b cb                	mov    ecx,ebx
  9477b2:	c7 44 24 30 00 00 00 00 	mov    DWORD PTR [esp+0x30],0x0
  9477ba:	e8 81 d1 d9 ff       	call   0x6e4940
  9477bf:	eb 27                	jmp    0x9477e8
  9477c1:	8d 04 b1             	lea    eax,[ecx+esi*4]
  9477c4:	8b cf                	mov    ecx,edi
  9477c6:	2b cf                	sub    ecx,edi
  9477c8:	51                   	push   ecx
  9477c9:	57                   	push   edi
  9477ca:	50                   	push   eax
  9477cb:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  9477cf:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  9477d5:	2b 7c 24 30          	sub    edi,DWORD PTR [esp+0x30]
  9477d9:	83 c4 0c             	add    esp,0xc
  9477dc:	c1 ff 02             	sar    edi,0x2
  9477df:	f7 df                	neg    edi
  9477e1:	03 ff                	add    edi,edi
  9477e3:	03 ff                	add    edi,edi
  9477e5:	01 7b 04             	add    DWORD PTR [ebx+0x4],edi
  9477e8:	33 c0                	xor    eax,eax
  9477ea:	85 f6                	test   esi,esi
  9477ec:	76 18                	jbe    0x947806
  9477ee:	33 c9                	xor    ecx,ecx
  9477f0:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  9477f3:	8b 54 11 08          	mov    edx,DWORD PTR [ecx+edx*1+0x8]
  9477f7:	8b 3b                	mov    edi,DWORD PTR [ebx]
  9477f9:	89 14 87             	mov    DWORD PTR [edi+eax*4],edx
  9477fc:	83 c0 01             	add    eax,0x1
  9477ff:	83 c1 40             	add    ecx,0x40
  947802:	3b c6                	cmp    eax,esi
  947804:	72 ea                	jb     0x9477f0
  947806:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  94780a:	8b cb                	mov    ecx,ebx
  94780c:	e8 ef fc ff ff       	call   0x947500
  947811:	83 7b 28 00          	cmp    DWORD PTR [ebx+0x28],0x0
  947815:	5f                   	pop    edi
  947816:	5d                   	pop    ebp
  947817:	75 14                	jne    0x94782d
  947819:	83 7b 30 00          	cmp    DWORD PTR [ebx+0x30],0x0
  94781d:	75 0e                	jne    0x94782d
  94781f:	83 7b 2c 00          	cmp    DWORD PTR [ebx+0x2c],0x0
  947823:	75 08                	jne    0x94782d
  947825:	5e                   	pop    esi
  947826:	33 c0                	xor    eax,eax
  947828:	5b                   	pop    ebx
  947829:	59                   	pop    ecx
  94782a:	c2 10 00             	ret    0x10
  94782d:	5e                   	pop    esi
  94782e:	b8 01 00 00 00       	mov    eax,0x1
  947833:	5b                   	pop    ebx
  947834:	59                   	pop    ecx
  947835:	c2 10 00             	ret    0x10

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00759770, 0x00759bb0); analyst name SlotArrayDestination_ExpandCandidates.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00759770 <.text+0x358770>:
  759770:	55                   	push   ebp
  759771:	8b ec                	mov    ebp,esp
  759773:	83 e4 f0             	and    esp,0xfffffff0
  759776:	81 ec 44 01 00 00    	sub    esp,0x144
  75977c:	53                   	push   ebx
  75977d:	56                   	push   esi
  75977e:	57                   	push   edi
  75977f:	6a 00                	push   0x0
  759781:	6a 00                	push   0x0
  759783:	8b f1                	mov    esi,ecx
  759785:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  759788:	68 04 10 00 00       	push   0x1004
  75978d:	e8 4e 2d 0c 00       	call   0x81c4e0
  759792:	88 44 24 2c          	mov    BYTE PTR [esp+0x2c],al
  759796:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  759799:	3b 46 34             	cmp    eax,DWORD PTR [esi+0x34]
  75979c:	0f 84 03 04 00 00    	je     0x759ba5
  7597a2:	e8 c9 dd 1d 00       	call   0x937570
  7597a7:	8b f8                	mov    edi,eax
  7597a9:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
  7597ad:	e8 3e f5 0c 00       	call   0x828cf0
  7597b2:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  7597b5:	8b 56 48             	mov    edx,DWORD PTR [esi+0x48]
  7597b8:	51                   	push   ecx
  7597b9:	52                   	push   edx
  7597ba:	8b cf                	mov    ecx,edi
  7597bc:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  7597c0:	e8 bb e7 1d 00       	call   0x937f80
  7597c5:	8b d8                	mov    ebx,eax
  7597c7:	85 db                	test   ebx,ebx
  7597c9:	0f 84 d6 03 00 00    	je     0x759ba5
  7597cf:	8d 43 04             	lea    eax,[ebx+0x4]
  7597d2:	b9 01 00 00 00       	mov    ecx,0x1
  7597d7:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  7597db:	8b 15 14 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea114
  7597e1:	52                   	push   edx
  7597e2:	8b cb                	mov    ecx,ebx
  7597e4:	e8 77 aa 1d 00       	call   0x934260
  7597e9:	85 c0                	test   eax,eax
  7597eb:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  7597ef:	0f 84 90 03 00 00    	je     0x759b85
  7597f5:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  7597fa:	50                   	push   eax
  7597fb:	8b cb                	mov    ecx,ebx
  7597fd:	e8 5e aa 1d 00       	call   0x934260
  759802:	8b f8                	mov    edi,eax
  759804:	85 ff                	test   edi,edi
  759806:	0f 84 79 03 00 00    	je     0x759b85
  75980c:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  759813:	51                   	push   ecx
  759814:	8b cf                	mov    ecx,edi
  759816:	c7 44 24 20 00 00 00 00 	mov    DWORD PTR [esp+0x20],0x0
  75981e:	e8 6d e2 1f 00       	call   0x957a90
  759823:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  759827:	52                   	push   edx
  759828:	8d 44 24 34          	lea    eax,[esp+0x34]
  75982c:	50                   	push   eax
  75982d:	8b cf                	mov    ecx,edi
  75982f:	e8 fc e1 1f 00       	call   0x957a30
  759834:	50                   	push   eax
  759835:	e8 26 28 ff ff       	call   0x74c060
  75983a:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  75983d:	8b 7e 30             	mov    edi,DWORD PTR [esi+0x30]
  759840:	33 c9                	xor    ecx,ecx
  759842:	33 d2                	xor    edx,edx
  759844:	83 c4 08             	add    esp,0x8
  759847:	3b f8                	cmp    edi,eax
  759849:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  75984d:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  759851:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  759855:	0f 84 53 02 00 00    	je     0x759aae
  75985b:	eb 03                	jmp    0x759860
  75985d:	8d 49 00             	lea    ecx,[ecx+0x0]
  759860:	8b 0f                	mov    ecx,DWORD PTR [edi]
  759862:	51                   	push   ecx
  759863:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  759867:	e8 04 66 1f 00       	call   0x94fe70
  75986c:	85 c0                	test   eax,eax
  75986e:	0f 84 25 02 00 00    	je     0x759a99
  759874:	f6 40 08 01          	test   BYTE PTR [eax+0x8],0x1
  759878:	0f 85 1b 02 00 00    	jne    0x759a99
  75987e:	8b 10                	mov    edx,DWORD PTR [eax]
  759880:	8b 52 14             	mov    edx,DWORD PTR [edx+0x14]
  759883:	8d 8c 24 10 01 00 00 	lea    ecx,[esp+0x110]
  75988a:	51                   	push   ecx
  75988b:	8b c8                	mov    ecx,eax
  75988d:	ff d2                	call   edx
  75988f:	0f 28 84 24 30 01 00 00 	movaps xmm0,XMMWORD PTR [esp+0x130]
  759897:	0f 28 94 24 e0 00 00 00 	movaps xmm2,XMMWORD PTR [esp+0xe0]
  75989f:	0f 28 9c 24 d0 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0xd0]
  7598a7:	0f 28 c8             	movaps xmm1,xmm0
  7598aa:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  7598ae:	0f 59 ca             	mulps  xmm1,xmm2
  7598b1:	0f 28 e0             	movaps xmm4,xmm0
  7598b4:	0f c6 e0 00          	shufps xmm4,xmm0,0x0
  7598b8:	0f 59 e3             	mulps  xmm4,xmm3
  7598bb:	0f 58 cc             	addps  xmm1,xmm4
  7598be:	0f 28 a4 24 f0 00 00 00 	movaps xmm4,XMMWORD PTR [esp+0xf0]
  7598c6:	0f 28 e8             	movaps xmm5,xmm0
  7598c9:	0f c6 e8 aa          	shufps xmm5,xmm0,0xaa
  7598cd:	0f 59 ec             	mulps  xmm5,xmm4
  7598d0:	0f 58 cd             	addps  xmm1,xmm5
  7598d3:	0f 28 ac 24 00 01 00 00 	movaps xmm5,XMMWORD PTR [esp+0x100]
  7598db:	0f 28 f0             	movaps xmm6,xmm0
  7598de:	0f c6 f0 ff          	shufps xmm6,xmm0,0xff
  7598e2:	0f 28 84 24 40 01 00 00 	movaps xmm0,XMMWORD PTR [esp+0x140]
  7598ea:	0f 59 f5             	mulps  xmm6,xmm5
  7598ed:	0f 58 ce             	addps  xmm1,xmm6
  7598f0:	0f 29 8c 24 b0 00 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm1
  7598f8:	0f 28 c8             	movaps xmm1,xmm0
  7598fb:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  7598ff:	0f 59 ca             	mulps  xmm1,xmm2
  759902:	0f 28 d0             	movaps xmm2,xmm0
  759905:	0f c6 d0 00          	shufps xmm2,xmm0,0x0
  759909:	0f 59 d3             	mulps  xmm2,xmm3
  75990c:	0f 58 ca             	addps  xmm1,xmm2
  75990f:	0f 28 d0             	movaps xmm2,xmm0
  759912:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  759916:	0f 59 d4             	mulps  xmm2,xmm4
  759919:	0f 58 ca             	addps  xmm1,xmm2
  75991c:	0f 28 d0             	movaps xmm2,xmm0
  75991f:	0f c6 d0 ff          	shufps xmm2,xmm0,0xff
  759923:	0f 59 d5             	mulps  xmm2,xmm5
  759926:	0f 58 ca             	addps  xmm1,xmm2
  759929:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  75992d:	0f 29 8c 24 c0 00 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm1
  759935:	e8 c6 77 ef ff       	call   0x651100
  75993a:	80 7e 54 00          	cmp    BYTE PTR [esi+0x54],0x0
  75993e:	f3 0f 10 84 24 c0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xc0]
  759947:	f3 0f 10 8c 24 c4 00 00 00 	movss  xmm1,DWORD PTR [esp+0xc4]
  759950:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  759954:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  759958:	0f c6 c1 10          	shufps xmm0,xmm1,0x10
  75995c:	f3 0f 10 8c 24 c8 00 00 00 	movss  xmm1,DWORD PTR [esp+0xc8]
  759965:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  759969:	0f c6 c1 28          	shufps xmm0,xmm1,0x28
  75996d:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  759972:	74 14                	je     0x759988
  759974:	8b 46 50             	mov    eax,DWORD PTR [esi+0x50]
  759977:	6a 00                	push   0x0
  759979:	50                   	push   eax
  75997a:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  75997e:	53                   	push   ebx
  75997f:	51                   	push   ecx
  759980:	e8 db 57 01 00       	call   0x76f160
  759985:	83 c4 10             	add    esp,0x10
  759988:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  75998b:	81 e2 00 cf 00 00    	and    edx,0xcf00
  759991:	52                   	push   edx
  759992:	e8 a9 af ec ff       	call   0x624940
  759997:	83 c4 04             	add    esp,0x4
  75999a:	84 c0                	test   al,al
  75999c:	74 27                	je     0x7599c5
  75999e:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  7599a4:	85 c9                	test   ecx,ecx
  7599a6:	74 1d                	je     0x7599c5
  7599a8:	e8 e3 76 50 00       	call   0xc61090
  7599ad:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  7599b2:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  7599b7:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
  7599bb:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  7599c0:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  7599c5:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  7599c8:	8b 0f                	mov    ecx,DWORD PTR [edi]
  7599ca:	0f 28 84 24 b0 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xb0]
  7599d2:	8d 54 24 50          	lea    edx,[esp+0x50]
  7599d6:	52                   	push   edx
  7599d7:	0f 29 44 24 64       	movaps XMMWORD PTR [esp+0x64],xmm0
  7599dc:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  7599e3:	89 4c 24 7c          	mov    DWORD PTR [esp+0x7c],ecx
  7599e7:	e8 54 c4 0e 00       	call   0x845e40
  7599ec:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  7599f0:	f3 0f 10 47 04       	movss  xmm0,DWORD PTR [edi+0x4]
  7599f5:	f3 0f 59 46 2c       	mulss  xmm0,DWORD PTR [esi+0x2c]
  7599fa:	6a 01                	push   0x1
  7599fc:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
  759a00:	6a 00                	push   0x0
  759a02:	8d 44 24 5c          	lea    eax,[esp+0x5c]
  759a06:	50                   	push   eax
  759a07:	51                   	push   ecx
  759a08:	f3 0f 11 84 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm0
  759a11:	e8 ba 5f 3a 00       	call   0xaff9d0
  759a16:	83 c4 14             	add    esp,0x14
  759a19:	84 c0                	test   al,al
  759a1b:	0f 85 27 01 00 00    	jne    0x759b48
  759a21:	8b 56 44             	mov    edx,DWORD PTR [esi+0x44]
  759a24:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  759a27:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  759a2b:	52                   	push   edx
  759a2c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  759a2f:	50                   	push   eax
  759a30:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  759a33:	51                   	push   ecx
  759a34:	52                   	push   edx
  759a35:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  759a39:	50                   	push   eax
  759a3a:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  759a3e:	51                   	push   ecx
  759a3f:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  759a43:	53                   	push   ebx
  759a44:	52                   	push   edx
  759a45:	8d 44 24 60          	lea    eax,[esp+0x60]
  759a49:	50                   	push   eax
  759a4a:	e8 21 76 0d 00       	call   0x831070
  759a4f:	83 7c 24 40 00       	cmp    DWORD PTR [esp+0x40],0x0
  759a54:	0f 94 c0             	sete   al
  759a57:	84 c0                	test   al,al
  759a59:	0f 85 e9 00 00 00    	jne    0x759b48
  759a5f:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  759a63:	8b 4c 24 4c          	mov    ecx,DWORD PTR [esp+0x4c]
  759a67:	8b d0                	mov    edx,eax
  759a69:	0b d1                	or     edx,ecx
  759a6b:	74 08                	je     0x759a75
  759a6d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  759a71:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  759a75:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  759a79:	51                   	push   ecx
  759a7a:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  759a7d:	e8 fe ae ef ff       	call   0x654980
  759a82:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  759a85:	85 c0                	test   eax,eax
  759a87:	74 10                	je     0x759a99
  759a89:	6a 01                	push   0x1
  759a8b:	8d 54 24 54          	lea    edx,[esp+0x54]
  759a8f:	52                   	push   edx
  759a90:	50                   	push   eax
  759a91:	e8 ca 2d ff ff       	call   0x74c860
  759a96:	83 c4 0c             	add    esp,0xc
  759a99:	83 c7 08             	add    edi,0x8
  759a9c:	3b 7c 24 20          	cmp    edi,DWORD PTR [esp+0x20]
  759aa0:	0f 85 ba fd ff ff    	jne    0x759860
  759aa6:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  759aaa:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  759aae:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  759ab1:	8b 30                	mov    esi,DWORD PTR [eax]
  759ab3:	3b 70 04             	cmp    esi,DWORD PTR [eax+0x4]
  759ab6:	0f 85 9e 00 00 00    	jne    0x759b5a
  759abc:	8b c1                	mov    eax,ecx
  759abe:	0b c2                	or     eax,edx
  759ac0:	74 5b                	je     0x759b1d
  759ac2:	52                   	push   edx
  759ac3:	51                   	push   ecx
  759ac4:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  759ac8:	e8 b3 e4 1d 00       	call   0x937f80
  759acd:	85 c0                	test   eax,eax
  759acf:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  759ad3:	74 3f                	je     0x759b14
  759ad5:	8d 48 04             	lea    ecx,[eax+0x4]
  759ad8:	ba 01 00 00 00       	mov    edx,0x1
  759add:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  759ae1:	50                   	push   eax
  759ae2:	e8 69 45 e0 ff       	call   0x55e050
  759ae7:	83 c4 04             	add    esp,0x4
  759aea:	85 c0                	test   eax,eax
  759aec:	74 26                	je     0x759b14
  759aee:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  759af1:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  759af5:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  759af9:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  759afc:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  759b00:	51                   	push   ecx
  759b01:	8b c8                	mov    ecx,eax
  759b03:	89 56 24             	mov    DWORD PTR [esi+0x24],edx
  759b06:	e8 25 df 1f 00       	call   0x957a30
  759b0b:	50                   	push   eax
  759b0c:	8d 4e 2c             	lea    ecx,[esi+0x2c]
  759b0f:	e8 ec 25 01 00       	call   0x76c100
  759b14:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  759b18:	e8 c3 c7 fe ff       	call   0x7462e0
  759b1d:	8d 43 04             	lea    eax,[ebx+0x4]
  759b20:	8b d0                	mov    edx,eax
  759b22:	83 c9 ff             	or     ecx,0xffffffff
  759b25:	f0 0f c1 0a          	lock xadd DWORD PTR [edx],ecx
  759b29:	49                   	dec    ecx
  759b2a:	75 79                	jne    0x759ba5
  759b2c:	ba 01 00 00 00       	mov    edx,0x1
  759b31:	87 10                	xchg   DWORD PTR [eax],edx
  759b33:	8b 03                	mov    eax,DWORD PTR [ebx]
  759b35:	8b 10                	mov    edx,DWORD PTR [eax]
  759b37:	6a 01                	push   0x1
  759b39:	8b cb                	mov    ecx,ebx
  759b3b:	ff d2                	call   edx
  759b3d:	32 c0                	xor    al,al
  759b3f:	5f                   	pop    edi
  759b40:	5e                   	pop    esi
  759b41:	5b                   	pop    ebx
  759b42:	8b e5                	mov    esp,ebp
  759b44:	5d                   	pop    ebp
  759b45:	c2 20 00             	ret    0x20
  759b48:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  759b4b:	8d 44 24 50          	lea    eax,[esp+0x50]
  759b4f:	50                   	push   eax
  759b50:	e8 2b ae ef ff       	call   0x654980
  759b55:	e9 3f ff ff ff       	jmp    0x759a99
  759b5a:	8d 43 04             	lea    eax,[ebx+0x4]
  759b5d:	8b c8                	mov    ecx,eax
  759b5f:	83 ca ff             	or     edx,0xffffffff
  759b62:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  759b66:	4a                   	dec    edx
  759b67:	75 11                	jne    0x759b7a
  759b69:	b9 01 00 00 00       	mov    ecx,0x1
  759b6e:	87 08                	xchg   DWORD PTR [eax],ecx
  759b70:	8b 13                	mov    edx,DWORD PTR [ebx]
  759b72:	8b 02                	mov    eax,DWORD PTR [edx]
  759b74:	6a 01                	push   0x1
  759b76:	8b cb                	mov    ecx,ebx
  759b78:	ff d0                	call   eax
  759b7a:	b0 01                	mov    al,0x1
  759b7c:	5f                   	pop    edi
  759b7d:	5e                   	pop    esi
  759b7e:	5b                   	pop    ebx
  759b7f:	8b e5                	mov    esp,ebp
  759b81:	5d                   	pop    ebp
  759b82:	c2 20 00             	ret    0x20
  759b85:	8d 43 04             	lea    eax,[ebx+0x4]
  759b88:	8b c8                	mov    ecx,eax
  759b8a:	83 ca ff             	or     edx,0xffffffff
  759b8d:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  759b91:	4a                   	dec    edx
  759b92:	75 11                	jne    0x759ba5
  759b94:	b9 01 00 00 00       	mov    ecx,0x1
  759b99:	87 08                	xchg   DWORD PTR [eax],ecx
  759b9b:	8b 13                	mov    edx,DWORD PTR [ebx]
  759b9d:	8b 02                	mov    eax,DWORD PTR [edx]
  759b9f:	6a 01                	push   0x1
  759ba1:	8b cb                	mov    ecx,ebx
  759ba3:	ff d0                	call   eax
  759ba5:	5f                   	pop    edi
  759ba6:	5e                   	pop    esi
  759ba7:	32 c0                	xor    al,al
  759ba9:	5b                   	pop    ebx
  759baa:	8b e5                	mov    esp,ebp
  759bac:	5d                   	pop    ebp
  759bad:	c2 20 00             	ret    0x20

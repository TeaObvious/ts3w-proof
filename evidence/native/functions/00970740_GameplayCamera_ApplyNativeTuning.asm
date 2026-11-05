# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00970740, 0x00970d54).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00970740 <.text+0x56f740>:
  970740:	55                   	push   ebp
  970741:	8b ec                	mov    ebp,esp
  970743:	83 e4 f0             	and    esp,0xfffffff0
  970746:	81 ec 44 01 00 00    	sub    esp,0x144
  97074c:	83 7d 0c 5f          	cmp    DWORD PTR [ebp+0xc],0x5f
  970750:	53                   	push   ebx
  970751:	56                   	push   esi
  970752:	57                   	push   edi
  970753:	8b f9                	mov    edi,ecx
  970755:	0f 85 f0 05 00 00    	jne    0x970d4b
  97075b:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
  97075e:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  970762:	88 87 5c 09 00 00    	mov    BYTE PTR [edi+0x95c],al
  970768:	e8 13 19 ff ff       	call   0x962080
  97076d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  970770:	33 db                	xor    ebx,ebx
  970772:	83 fb 06             	cmp    ebx,0x6
  970775:	0f 84 b8 00 00 00    	je     0x970833
  97077b:	83 fb 01             	cmp    ebx,0x1
  97077e:	0f 84 af 00 00 00    	je     0x970833
  970784:	d9 06                	fld    DWORD PTR [esi]
  970786:	51                   	push   ecx
  970787:	d9 1c 24             	fstp   DWORD PTR [esp]
  97078a:	53                   	push   ebx
  97078b:	6a 00                	push   0x0
  97078d:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  970791:	e8 3a 19 ff ff       	call   0x9620d0
  970796:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  970799:	51                   	push   ecx
  97079a:	83 c6 04             	add    esi,0x4
  97079d:	d9 1c 24             	fstp   DWORD PTR [esp]
  9707a0:	53                   	push   ebx
  9707a1:	6a 00                	push   0x0
  9707a3:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  9707a7:	e8 44 19 ff ff       	call   0x9620f0
  9707ac:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  9707af:	51                   	push   ecx
  9707b0:	83 c6 04             	add    esi,0x4
  9707b3:	d9 1c 24             	fstp   DWORD PTR [esp]
  9707b6:	53                   	push   ebx
  9707b7:	6a 01                	push   0x1
  9707b9:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  9707bd:	e8 0e 19 ff ff       	call   0x9620d0
  9707c2:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  9707c5:	51                   	push   ecx
  9707c6:	83 c6 04             	add    esi,0x4
  9707c9:	d9 1c 24             	fstp   DWORD PTR [esp]
  9707cc:	53                   	push   ebx
  9707cd:	6a 01                	push   0x1
  9707cf:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  9707d3:	e8 18 19 ff ff       	call   0x9620f0
  9707d8:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  9707db:	51                   	push   ecx
  9707dc:	83 c6 04             	add    esi,0x4
  9707df:	d9 1c 24             	fstp   DWORD PTR [esp]
  9707e2:	53                   	push   ebx
  9707e3:	6a 02                	push   0x2
  9707e5:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  9707e9:	e8 e2 18 ff ff       	call   0x9620d0
  9707ee:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  9707f1:	51                   	push   ecx
  9707f2:	83 c6 04             	add    esi,0x4
  9707f5:	d9 1c 24             	fstp   DWORD PTR [esp]
  9707f8:	53                   	push   ebx
  9707f9:	6a 02                	push   0x2
  9707fb:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  9707ff:	e8 ec 18 ff ff       	call   0x9620f0
  970804:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  970807:	51                   	push   ecx
  970808:	83 c6 04             	add    esi,0x4
  97080b:	d9 1c 24             	fstp   DWORD PTR [esp]
  97080e:	53                   	push   ebx
  97080f:	6a 03                	push   0x3
  970811:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  970815:	e8 b6 18 ff ff       	call   0x9620d0
  97081a:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  97081d:	51                   	push   ecx
  97081e:	83 c6 04             	add    esi,0x4
  970821:	d9 1c 24             	fstp   DWORD PTR [esp]
  970824:	53                   	push   ebx
  970825:	6a 03                	push   0x3
  970827:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  97082b:	e8 c0 18 ff ff       	call   0x9620f0
  970830:	83 c6 04             	add    esi,0x4
  970833:	83 c3 01             	add    ebx,0x1
  970836:	83 fb 07             	cmp    ebx,0x7
  970839:	0f 82 33 ff ff ff    	jb     0x970772
  97083f:	33 db                	xor    ebx,ebx
  970841:	6a 00                	push   0x0
  970843:	53                   	push   ebx
  970844:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  970848:	e8 d3 18 ff ff       	call   0x962120
  97084d:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  970851:	6a 00                	push   0x0
  970853:	53                   	push   ebx
  970854:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  970858:	e8 e3 18 ff ff       	call   0x962140
  97085d:	d9 5c 24 24          	fstp   DWORD PTR [esp+0x24]
  970861:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  970865:	51                   	push   ecx
  970866:	d9 1c 24             	fstp   DWORD PTR [esp]
  970869:	6a 01                	push   0x1
  97086b:	53                   	push   ebx
  97086c:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  970870:	e8 5b 18 ff ff       	call   0x9620d0
  970875:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  970879:	51                   	push   ecx
  97087a:	d9 1c 24             	fstp   DWORD PTR [esp]
  97087d:	6a 01                	push   0x1
  97087f:	53                   	push   ebx
  970880:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  970884:	e8 67 18 ff ff       	call   0x9620f0
  970889:	83 c3 01             	add    ebx,0x1
  97088c:	83 fb 04             	cmp    ebx,0x4
  97088f:	72 b0                	jb     0x970841
  970891:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  970895:	51                   	push   ecx
  970896:	8d 4f 40             	lea    ecx,[edi+0x40]
  970899:	e8 62 1b ff ff       	call   0x962400
  97089e:	d9 06                	fld    DWORD PTR [esi]
  9708a0:	d9 9f d0 08 00 00    	fstp   DWORD PTR [edi+0x8d0]
  9708a6:	83 c6 04             	add    esi,0x4
  9708a9:	d9 06                	fld    DWORD PTR [esi]
  9708ab:	83 c6 04             	add    esi,0x4
  9708ae:	d9 9f d4 08 00 00    	fstp   DWORD PTR [edi+0x8d4]
  9708b4:	83 c6 04             	add    esi,0x4
  9708b7:	d9 46 fc             	fld    DWORD PTR [esi-0x4]
  9708ba:	83 c6 04             	add    esi,0x4
  9708bd:	d9 9f d8 08 00 00    	fstp   DWORD PTR [edi+0x8d8]
  9708c3:	83 c6 04             	add    esi,0x4
  9708c6:	d9 46 f8             	fld    DWORD PTR [esi-0x8]
  9708c9:	83 c6 04             	add    esi,0x4
  9708cc:	d9 9f dc 08 00 00    	fstp   DWORD PTR [edi+0x8dc]
  9708d2:	83 c6 04             	add    esi,0x4
  9708d5:	d9 46 f4             	fld    DWORD PTR [esi-0xc]
  9708d8:	83 c6 04             	add    esi,0x4
  9708db:	d9 9f e0 08 00 00    	fstp   DWORD PTR [edi+0x8e0]
  9708e1:	83 c6 04             	add    esi,0x4
  9708e4:	d9 46 f0             	fld    DWORD PTR [esi-0x10]
  9708e7:	83 c6 04             	add    esi,0x4
  9708ea:	d9 9f f4 08 00 00    	fstp   DWORD PTR [edi+0x8f4]
  9708f0:	83 c6 04             	add    esi,0x4
  9708f3:	d9 46 ec             	fld    DWORD PTR [esi-0x14]
  9708f6:	83 c6 04             	add    esi,0x4
  9708f9:	d9 9f f8 08 00 00    	fstp   DWORD PTR [edi+0x8f8]
  9708ff:	83 c6 04             	add    esi,0x4
  970902:	d9 46 e8             	fld    DWORD PTR [esi-0x18]
  970905:	8b c6                	mov    eax,esi
  970907:	d9 9f 60 09 00 00    	fstp   DWORD PTR [edi+0x960]
  97090d:	83 c6 04             	add    esi,0x4
  970910:	d9 46 e8             	fld    DWORD PTR [esi-0x18]
  970913:	d9 5f 10             	fstp   DWORD PTR [edi+0x10]
  970916:	d9 46 ec             	fld    DWORD PTR [esi-0x14]
  970919:	d9 9f 0c 09 00 00    	fstp   DWORD PTR [edi+0x90c]
  97091f:	d9 46 f0             	fld    DWORD PTR [esi-0x10]
  970922:	d9 9f 1c 09 00 00    	fstp   DWORD PTR [edi+0x91c]
  970928:	d9 46 f4             	fld    DWORD PTR [esi-0xc]
  97092b:	d9 9f 2c 09 00 00    	fstp   DWORD PTR [edi+0x92c]
  970931:	d9 46 f8             	fld    DWORD PTR [esi-0x8]
  970934:	d9 9f 3c 09 00 00    	fstp   DWORD PTR [edi+0x93c]
  97093a:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  97093e:	f3 0f 10 05 b0 6c 04 	movss  xmm0,DWORD PTR ds:0x1046cb0
  970945:	01
  970946:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97094a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97094e:	0f 59 c8             	mulps  xmm1,xmm0
  970951:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  970956:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  97095c:	f3 0f 11 8f 10 09 00 	movss  DWORD PTR [edi+0x910],xmm1
  970963:	00
  970964:	8b c6                	mov    eax,esi
  970966:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  97096a:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97096e:	0f 59 c8             	mulps  xmm1,xmm0
  970971:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  970976:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  97097c:	f3 0f 11 8f 20 09 00 	movss  DWORD PTR [edi+0x920],xmm1
  970983:	00
  970984:	83 c6 04             	add    esi,0x4
  970987:	8b c6                	mov    eax,esi
  970989:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  97098d:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970991:	0f 59 c8             	mulps  xmm1,xmm0
  970994:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  970999:	f3 0f 10 74 24 10    	movss  xmm6,DWORD PTR [esp+0x10]
  97099f:	83 c6 04             	add    esi,0x4
  9709a2:	8b c6                	mov    eax,esi
  9709a4:	f3 0f 11 b7 30 09 00 	movss  DWORD PTR [edi+0x930],xmm6
  9709ab:	00
  9709ac:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  9709b0:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9709b4:	0f 59 c8             	mulps  xmm1,xmm0
  9709b7:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  9709bc:	f3 0f 10 54 24 10    	movss  xmm2,DWORD PTR [esp+0x10]
  9709c2:	83 c6 04             	add    esi,0x4
  9709c5:	8b c6                	mov    eax,esi
  9709c7:	f3 0f 11 97 40 09 00 	movss  DWORD PTR [edi+0x940],xmm2
  9709ce:	00
  9709cf:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  9709d3:	83 c6 04             	add    esi,0x4
  9709d6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9709da:	0f 59 c8             	mulps  xmm1,xmm0
  9709dd:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  9709e2:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  9709e8:	f3 0f 11 8f 14 09 00 	movss  DWORD PTR [edi+0x914],xmm1
  9709ef:	00
  9709f0:	8b c6                	mov    eax,esi
  9709f2:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  9709f6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9709fa:	0f 59 c8             	mulps  xmm1,xmm0
  9709fd:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  970a02:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  970a08:	f3 0f 11 8f 24 09 00 	movss  DWORD PTR [edi+0x924],xmm1
  970a0f:	00
  970a10:	83 c6 04             	add    esi,0x4
  970a13:	8b c6                	mov    eax,esi
  970a15:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  970a19:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970a1d:	0f 59 c8             	mulps  xmm1,xmm0
  970a20:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  970a25:	f3 0f 10 4c 24 50    	movss  xmm1,DWORD PTR [esp+0x50]
  970a2b:	f3 0f 11 8f 34 09 00 	movss  DWORD PTR [edi+0x934],xmm1
  970a32:	00
  970a33:	83 c6 04             	add    esi,0x4
  970a36:	8b c6                	mov    eax,esi
  970a38:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  970a3c:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970a40:	0f 59 c8             	mulps  xmm1,xmm0
  970a43:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  970a48:	f3 0f 10 5c 24 10    	movss  xmm3,DWORD PTR [esp+0x10]
  970a4e:	f3 0f 10 25 88 fd 03 	movss  xmm4,DWORD PTR ds:0x103fd88
  970a55:	01
  970a56:	83 c6 04             	add    esi,0x4
  970a59:	8b c6                	mov    eax,esi
  970a5b:	f3 0f 11 9f 44 09 00 	movss  DWORD PTR [edi+0x944],xmm3
  970a62:	00
  970a63:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  970a67:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970a6b:	0f 59 c8             	mulps  xmm1,xmm0
  970a6e:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  970a73:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  970a79:	f3 0f 11 8f 18 09 00 	movss  DWORD PTR [edi+0x918],xmm1
  970a80:	00
  970a81:	8b 97 0c 09 00 00    	mov    edx,DWORD PTR [edi+0x90c]
  970a87:	8b 8f 14 09 00 00    	mov    ecx,DWORD PTR [edi+0x914]
  970a8d:	f3 0f 10 af 2c 09 00 	movss  xmm5,DWORD PTR [edi+0x92c]
  970a94:	00
  970a95:	83 c6 04             	add    esi,0x4
  970a98:	8b c6                	mov    eax,esi
  970a9a:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  970a9e:	8b 87 10 09 00 00    	mov    eax,DWORD PTR [edi+0x910]
  970aa4:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970aa8:	0f 59 c8             	mulps  xmm1,xmm0
  970aab:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  970ab0:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  970ab6:	f3 0f 11 8f 28 09 00 	movss  DWORD PTR [edi+0x928],xmm1
  970abd:	00
  970abe:	f3 0f 10 4e 04       	movss  xmm1,DWORD PTR [esi+0x4]
  970ac3:	83 c6 04             	add    esi,0x4
  970ac6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970aca:	0f 59 c8             	mulps  xmm1,xmm0
  970acd:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  970ad2:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  970ad8:	f3 0f 11 8f 38 09 00 	movss  DWORD PTR [edi+0x938],xmm1
  970adf:	00
  970ae0:	f3 0f 10 4e 04       	movss  xmm1,DWORD PTR [esi+0x4]
  970ae5:	83 c6 04             	add    esi,0x4
  970ae8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970aec:	0f 59 c8             	mulps  xmm1,xmm0
  970aef:	0f 29 4c 24 60       	movaps XMMWORD PTR [esp+0x60],xmm1
  970af4:	f3 0f 10 44 24 60    	movss  xmm0,DWORD PTR [esp+0x60]
  970afa:	f3 0f 10 8f 3c 09 00 	movss  xmm1,DWORD PTR [edi+0x93c]
  970b01:	00
  970b02:	89 97 fc 08 00 00    	mov    DWORD PTR [edi+0x8fc],edx
  970b08:	8b 97 18 09 00 00    	mov    edx,DWORD PTR [edi+0x918]
  970b0e:	f3 0f 11 87 48 09 00 	movss  DWORD PTR [edi+0x948],xmm0
  970b15:	00
  970b16:	89 87 00 09 00 00    	mov    DWORD PTR [edi+0x900],eax
  970b1c:	0f 28 f9             	movaps xmm7,xmm1
  970b1f:	f3 0f 59 fc          	mulss  xmm7,xmm4
  970b23:	f3 0f 59 d4          	mulss  xmm2,xmm4
  970b27:	f3 0f 59 dc          	mulss  xmm3,xmm4
  970b2b:	f3 0f 5c 5c 24 50    	subss  xmm3,DWORD PTR [esp+0x50]
  970b31:	89 8f 04 09 00 00    	mov    DWORD PTR [edi+0x904],ecx
  970b37:	f3 0f 5c fd          	subss  xmm7,xmm5
  970b3b:	f3 0f 5c d6          	subss  xmm2,xmm6
  970b3f:	f3 0f 59 c4          	mulss  xmm0,xmm4
  970b43:	f3 0f 5c 44 24 10    	subss  xmm0,DWORD PTR [esp+0x10]
  970b49:	83 c6 04             	add    esi,0x4
  970b4c:	89 97 08 09 00 00    	mov    DWORD PTR [edi+0x908],edx
  970b52:	f3 0f 11 bf 4c 09 00 	movss  DWORD PTR [edi+0x94c],xmm7
  970b59:	00
  970b5a:	f3 0f 11 97 50 09 00 	movss  DWORD PTR [edi+0x950],xmm2
  970b61:	00
  970b62:	f3 0f 11 9f 54 09 00 	movss  DWORD PTR [edi+0x954],xmm3
  970b69:	00
  970b6a:	f3 0f 11 87 58 09 00 	movss  DWORD PTR [edi+0x958],xmm0
  970b71:	00
  970b72:	f3 0f 10 87 0c 09 00 	movss  xmm0,DWORD PTR [edi+0x90c]
  970b79:	00
  970b7a:	0f 2e c1             	ucomiss xmm0,xmm1
  970b7d:	9f                   	lahf
  970b7e:	f6 c4 44             	test   ah,0x44
  970b81:	f3 0f 11 87 e4 08 00 	movss  DWORD PTR [edi+0x8e4],xmm0
  970b88:	00
  970b89:	f3 0f 11 af ec 08 00 	movss  DWORD PTR [edi+0x8ec],xmm5
  970b90:	00
  970b91:	f3 0f 11 8f e8 08 00 	movss  DWORD PTR [edi+0x8e8],xmm1
  970b98:	00
  970b99:	7b 12                	jnp    0x970bad
  970b9b:	f3 0f 5c c8          	subss  xmm1,xmm0
  970b9f:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  970ba6:	00
  970ba7:	f3 0f 5e c1          	divss  xmm0,xmm1
  970bab:	eb 08                	jmp    0x970bb5
  970bad:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  970bb4:	00
  970bb5:	f3 0f 11 87 f0 08 00 	movss  DWORD PTR [edi+0x8f0],xmm0
  970bbc:	00
  970bbd:	d9 06                	fld    DWORD PTR [esi]
  970bbf:	d9 9f 64 09 00 00    	fstp   DWORD PTR [edi+0x964]
  970bc5:	83 c6 04             	add    esi,0x4
  970bc8:	d9 06                	fld    DWORD PTR [esi]
  970bca:	83 c6 04             	add    esi,0x4
  970bcd:	d9 9f 68 09 00 00    	fstp   DWORD PTR [edi+0x968]
  970bd3:	83 c6 04             	add    esi,0x4
  970bd6:	d9 46 fc             	fld    DWORD PTR [esi-0x4]
  970bd9:	83 c6 04             	add    esi,0x4
  970bdc:	d9 9f 6c 09 00 00    	fstp   DWORD PTR [edi+0x96c]
  970be2:	83 c6 04             	add    esi,0x4
  970be5:	d9 46 f8             	fld    DWORD PTR [esi-0x8]
  970be8:	83 c6 04             	add    esi,0x4
  970beb:	d9 9f 70 09 00 00    	fstp   DWORD PTR [edi+0x970]
  970bf1:	83 c6 04             	add    esi,0x4
  970bf4:	d9 46 f4             	fld    DWORD PTR [esi-0xc]
  970bf7:	83 c6 04             	add    esi,0x4
  970bfa:	d9 9f 74 09 00 00    	fstp   DWORD PTR [edi+0x974]
  970c00:	83 c6 04             	add    esi,0x4
  970c03:	d9 46 f0             	fld    DWORD PTR [esi-0x10]
  970c06:	83 c6 04             	add    esi,0x4
  970c09:	d9 9f 78 09 00 00    	fstp   DWORD PTR [edi+0x978]
  970c0f:	83 c6 04             	add    esi,0x4
  970c12:	d9 46 ec             	fld    DWORD PTR [esi-0x14]
  970c15:	83 c6 04             	add    esi,0x4
  970c18:	d9 9f 7c 09 00 00    	fstp   DWORD PTR [edi+0x97c]
  970c1e:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  970c22:	d9 46 ec             	fld    DWORD PTR [esi-0x14]
  970c25:	83 c6 04             	add    esi,0x4
  970c28:	d9 9f 84 09 00 00    	fstp   DWORD PTR [edi+0x984]
  970c2e:	d9 46 ec             	fld    DWORD PTR [esi-0x14]
  970c31:	d9 9f 88 09 00 00    	fstp   DWORD PTR [edi+0x988]
  970c37:	d9 46 f0             	fld    DWORD PTR [esi-0x10]
  970c3a:	d9 9f 8c 09 00 00    	fstp   DWORD PTR [edi+0x98c]
  970c40:	d9 46 f4             	fld    DWORD PTR [esi-0xc]
  970c43:	d9 9f 90 09 00 00    	fstp   DWORD PTR [edi+0x990]
  970c49:	d9 46 f8             	fld    DWORD PTR [esi-0x8]
  970c4c:	d9 9f 94 09 00 00    	fstp   DWORD PTR [edi+0x994]
  970c52:	d9 46 fc             	fld    DWORD PTR [esi-0x4]
  970c55:	d9 9f 98 09 00 00    	fstp   DWORD PTR [edi+0x998]
  970c5b:	e8 70 13 ff ff       	call   0x961fd0
  970c60:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970c64:	83 c6 04             	add    esi,0x4
  970c67:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  970c6d:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970c71:	83 c6 04             	add    esi,0x4
  970c74:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  970c7a:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970c7e:	83 c6 04             	add    esi,0x4
  970c81:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  970c87:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970c8b:	83 c6 04             	add    esi,0x4
  970c8e:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  970c94:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970c98:	83 c6 04             	add    esi,0x4
  970c9b:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  970ca1:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970ca5:	83 c6 04             	add    esi,0x4
  970ca8:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  970cae:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970cb2:	83 c6 04             	add    esi,0x4
  970cb5:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  970cbb:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970cbf:	83 c6 04             	add    esi,0x4
  970cc2:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  970cc8:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970ccc:	83 c6 04             	add    esi,0x4
  970ccf:	8d 44 24 28          	lea    eax,[esp+0x28]
  970cd3:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  970cd9:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  970cdd:	50                   	push   eax
  970cde:	8d 8f f0 05 00 00    	lea    ecx,[edi+0x5f0]
  970ce4:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  970cea:	83 c6 04             	add    esi,0x4
  970ced:	e8 4e 13 ff ff       	call   0x962040
  970cf2:	d9 06                	fld    DWORD PTR [esi]
  970cf4:	d9 9f 9c 09 00 00    	fstp   DWORD PTR [edi+0x99c]
  970cfa:	83 c6 04             	add    esi,0x4
  970cfd:	d9 06                	fld    DWORD PTR [esi]
  970cff:	d9 9f a0 09 00 00    	fstp   DWORD PTR [edi+0x9a0]
  970d05:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  970d08:	83 c6 04             	add    esi,0x4
  970d0b:	d9 9f 80 09 00 00    	fstp   DWORD PTR [edi+0x980]
  970d11:	83 c6 04             	add    esi,0x4
  970d14:	d9 06                	fld    DWORD PTR [esi]
  970d16:	83 c6 04             	add    esi,0x4
  970d19:	d9 9f a4 09 00 00    	fstp   DWORD PTR [edi+0x9a4]
  970d1f:	83 c6 04             	add    esi,0x4
  970d22:	80 7f 15 00          	cmp    BYTE PTR [edi+0x15],0x0
  970d26:	d9 46 fc             	fld    DWORD PTR [esi-0x4]
  970d29:	d9 9f a8 09 00 00    	fstp   DWORD PTR [edi+0x9a8]
  970d2f:	d9 06                	fld    DWORD PTR [esi]
  970d31:	d9 9f ac 09 00 00    	fstp   DWORD PTR [edi+0x9ac]
  970d37:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  970d3a:	d9 9f b0 09 00 00    	fstp   DWORD PTR [edi+0x9b0]
  970d40:	74 09                	je     0x970d4b
  970d42:	8b 17                	mov    edx,DWORD PTR [edi]
  970d44:	8b 42 58             	mov    eax,DWORD PTR [edx+0x58]
  970d47:	8b cf                	mov    ecx,edi
  970d49:	ff d0                	call   eax
  970d4b:	5f                   	pop    edi
  970d4c:	5e                   	pop    esi
  970d4d:	5b                   	pop    ebx
  970d4e:	8b e5                	mov    esp,ebp
  970d50:	5d                   	pop    ebp
  970d51:	c2 0c 00             	ret    0xc

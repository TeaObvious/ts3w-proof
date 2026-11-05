# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074d600,0x0074d8ba); analyst name RouteManager_AddPortalLocationVariation.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074d600 <.text+0x34c600>:
  74d600:	55                   	push   ebp
  74d601:	8b ec                	mov    ebp,esp
  74d603:	83 e4 f0             	and    esp,0xfffffff0
  74d606:	81 ec 14 01 00 00    	sub    esp,0x114
  74d60c:	53                   	push   ebx
  74d60d:	56                   	push   esi
  74d60e:	57                   	push   edi
  74d60f:	e8 dc b6 0d 00       	call   0x828cf0
  74d614:	33 db                	xor    ebx,ebx
  74d616:	3b c3                	cmp    eax,ebx
  74d618:	74 0d                	je     0x74d627
  74d61a:	8b c8                	mov    ecx,eax
  74d61c:	e8 9f bf 0d 00       	call   0x8295c0
  74d621:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  74d625:	eb 04                	jmp    0x74d62b
  74d627:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  74d62b:	e8 60 bd 01 00       	call   0x769390
  74d630:	39 5c 24 18          	cmp    DWORD PTR [esp+0x18],ebx
  74d634:	0f 84 77 02 00 00    	je     0x74d8b1
  74d63a:	3b c3                	cmp    eax,ebx
  74d63c:	0f 84 6f 02 00 00    	je     0x74d8b1
  74d642:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  74d645:	8b d1                	mov    edx,ecx
  74d647:	81 e2 00 00 00 ff    	and    edx,0xff000000
  74d64d:	81 fa 00 00 00 28    	cmp    edx,0x28000000
  74d653:	0f 85 58 02 00 00    	jne    0x74d8b1
  74d659:	8b 10                	mov    edx,DWORD PTR [eax]
  74d65b:	51                   	push   ecx
  74d65c:	8b c8                	mov    ecx,eax
  74d65e:	8b 82 cc 00 00 00    	mov    eax,DWORD PTR [edx+0xcc]
  74d664:	ff d0                	call   eax
  74d666:	3b c3                	cmp    eax,ebx
  74d668:	0f 84 43 02 00 00    	je     0x74d8b1
  74d66e:	8b 10                	mov    edx,DWORD PTR [eax]
  74d670:	8b c8                	mov    ecx,eax
  74d672:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  74d675:	68 84 41 46 f0       	push   0xf0464184
  74d67a:	ff d0                	call   eax
  74d67c:	3b c3                	cmp    eax,ebx
  74d67e:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  74d682:	0f 84 29 02 00 00    	je     0x74d8b1
  74d688:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  74d68e:	3b cb                	cmp    ecx,ebx
  74d690:	0f 84 1b 02 00 00    	je     0x74d8b1
  74d696:	d9 45 1c             	fld    DWORD PTR [ebp+0x1c]
  74d699:	83 ec 08             	sub    esp,0x8
  74d69c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  74d6a0:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  74d6a3:	d9 1c 24             	fstp   DWORD PTR [esp]
  74d6a6:	e8 25 b1 51 00       	call   0xc687d0
  74d6ab:	8b f0                	mov    esi,eax
  74d6ad:	3b f3                	cmp    esi,ebx
  74d6af:	0f 84 fc 01 00 00    	je     0x74d8b1
  74d6b5:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  74d6bc:	51                   	push   ecx
  74d6bd:	8d 55 14             	lea    edx,[ebp+0x14]
  74d6c0:	52                   	push   edx
  74d6c1:	e8 9a ec 01 00       	call   0x76c360
  74d6c6:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  74d6ce:	8d 44 24 28          	lea    eax,[esp+0x28]
  74d6d2:	50                   	push   eax
  74d6d3:	8d 8c 24 8c 00 00 00 	lea    ecx,[esp+0x8c]
  74d6da:	51                   	push   ecx
  74d6db:	56                   	push   esi
  74d6dc:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  74d6e2:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  74d6e8:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  74d6ec:	e8 2f f2 38 00       	call   0xadc920
  74d6f1:	0f 28 84 24 94 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x94]
  74d6f9:	8b 7c 24 3c          	mov    edi,DWORD PTR [esp+0x3c]
  74d6fd:	8d 54 24 74          	lea    edx,[esp+0x74]
  74d701:	52                   	push   edx
  74d702:	8d 45 20             	lea    eax,[ebp+0x20]
  74d705:	50                   	push   eax
  74d706:	0f 29 84 24 0c 01 00 00 	movaps XMMWORD PTR [esp+0x10c],xmm0
  74d70e:	0f 29 84 24 2c 01 00 00 	movaps XMMWORD PTR [esp+0x12c],xmm0
  74d716:	e8 45 ec 01 00       	call   0x76c360
  74d71b:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  74d723:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  74d727:	51                   	push   ecx
  74d728:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  74d72f:	52                   	push   edx
  74d730:	56                   	push   esi
  74d731:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  74d737:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  74d73d:	89 5c 24 68          	mov    DWORD PTR [esp+0x68],ebx
  74d741:	e8 da f1 38 00       	call   0xadc920
  74d746:	0f 28 84 24 88 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x88]
  74d74e:	8b 5c 24 68          	mov    ebx,DWORD PTR [esp+0x68]
  74d752:	8d 44 24 78          	lea    eax,[esp+0x78]
  74d756:	50                   	push   eax
  74d757:	8d 4d 2c             	lea    ecx,[ebp+0x2c]
  74d75a:	51                   	push   ecx
  74d75b:	0f 29 84 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  74d763:	0f 29 84 24 00 01 00 00 	movaps XMMWORD PTR [esp+0x100],xmm0
  74d76b:	e8 f0 eb 01 00       	call   0x76c360
  74d770:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  74d778:	8d 54 24 5c          	lea    edx,[esp+0x5c]
  74d77c:	52                   	push   edx
  74d77d:	8d 84 24 84 00 00 00 	lea    eax,[esp+0x84]
  74d784:	50                   	push   eax
  74d785:	56                   	push   esi
  74d786:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  74d78c:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  74d792:	c7 44 24 70 00 00 00 00 	mov    DWORD PTR [esp+0x70],0x0
  74d79a:	e8 81 f1 38 00       	call   0xadc920
  74d79f:	0f 28 84 24 8c 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x8c]
  74d7a7:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  74d7ab:	8d 94 24 ac 00 00 00 	lea    edx,[esp+0xac]
  74d7b2:	52                   	push   edx
  74d7b3:	8d 45 38             	lea    eax,[ebp+0x38]
  74d7b6:	50                   	push   eax
  74d7b7:	0f 29 84 24 44 01 00 00 	movaps XMMWORD PTR [esp+0x144],xmm0
  74d7bf:	0f 29 84 24 24 01 00 00 	movaps XMMWORD PTR [esp+0x124],xmm0
  74d7c7:	89 8c 24 e0 00 00 00 	mov    DWORD PTR [esp+0xe0],ecx
  74d7ce:	e8 8d eb 01 00       	call   0x76c360
  74d7d3:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  74d7db:	83 c4 44             	add    esp,0x44
  74d7de:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  74d7e2:	51                   	push   ecx
  74d7e3:	8d 54 24 74          	lea    edx,[esp+0x74]
  74d7e7:	52                   	push   edx
  74d7e8:	56                   	push   esi
  74d7e9:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  74d7ef:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  74d7f5:	c7 44 24 58 00 00 00 00 	mov    DWORD PTR [esp+0x58],0x0
  74d7fd:	e8 1e f1 38 00       	call   0xadc920
  74d802:	0f 28 44 24 7c       	movaps xmm0,XMMWORD PTR [esp+0x7c]
  74d807:	8b 45 48             	mov    eax,DWORD PTR [ebp+0x48]
  74d80a:	83 c4 0c             	add    esp,0xc
  74d80d:	6a 00                	push   0x0
  74d80f:	0f 29 84 24 c4 00 00 00 	movaps XMMWORD PTR [esp+0xc4],xmm0
  74d817:	0f 29 84 24 a4 00 00 00 	movaps XMMWORD PTR [esp+0xa4],xmm0
  74d81f:	50                   	push   eax
  74d820:	8b 4d 44             	mov    ecx,DWORD PTR [ebp+0x44]
  74d823:	d9 84 24 d0 00 00 00 	fld    DWORD PTR [esp+0xd0]
  74d82a:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  74d82e:	8b 84 24 a4 00 00 00 	mov    eax,DWORD PTR [esp+0xa4]
  74d835:	51                   	push   ecx
  74d836:	52                   	push   edx
  74d837:	83 ec 08             	sub    esp,0x8
  74d83a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  74d83e:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  74d842:	d9 84 24 b8 00 00 00 	fld    DWORD PTR [esp+0xb8]
  74d849:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  74d84c:	d9 1c 24             	fstp   DWORD PTR [esp]
  74d84f:	50                   	push   eax
  74d850:	d9 84 24 24 01 00 00 	fld    DWORD PTR [esp+0x124]
  74d857:	83 ec 08             	sub    esp,0x8
  74d85a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  74d85e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  74d861:	d9 84 24 04 01 00 00 	fld    DWORD PTR [esp+0x104]
  74d868:	d9 1c 24             	fstp   DWORD PTR [esp]
  74d86b:	53                   	push   ebx
  74d86c:	d9 84 24 e0 00 00 00 	fld    DWORD PTR [esp+0xe0]
  74d873:	83 ec 08             	sub    esp,0x8
  74d876:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  74d87a:	d9 84 24 00 01 00 00 	fld    DWORD PTR [esp+0x100]
  74d881:	d9 1c 24             	fstp   DWORD PTR [esp]
  74d884:	57                   	push   edi
  74d885:	d9 84 24 2c 01 00 00 	fld    DWORD PTR [esp+0x12c]
  74d88c:	83 ec 08             	sub    esp,0x8
  74d88f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  74d893:	d9 84 24 4c 01 00 00 	fld    DWORD PTR [esp+0x14c]
  74d89a:	d9 1c 24             	fstp   DWORD PTR [esp]
  74d89d:	51                   	push   ecx
  74d89e:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  74d8a2:	52                   	push   edx
  74d8a3:	50                   	push   eax
  74d8a4:	56                   	push   esi
  74d8a5:	e8 a6 ab ee ff       	call   0x638450
  74d8aa:	5f                   	pop    edi
  74d8ab:	5e                   	pop    esi
  74d8ac:	5b                   	pop    ebx
  74d8ad:	8b e5                	mov    esp,ebp
  74d8af:	5d                   	pop    ebp
  74d8b0:	c3                   	ret
  74d8b1:	5f                   	pop    edi
  74d8b2:	5e                   	pop    esi
  74d8b3:	32 c0                	xor    al,al
  74d8b5:	5b                   	pop    ebx
  74d8b6:	8b e5                	mov    esp,ebp
  74d8b8:	5d                   	pop    ebp
  74d8b9:	c3                   	ret

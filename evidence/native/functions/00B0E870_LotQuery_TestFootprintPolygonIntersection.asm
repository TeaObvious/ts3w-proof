# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00b0e870, 0x00b0e9fe); analyst name LotQuery_TestFootprintPolygonIntersection.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0e870 <.text+0x70d870>:
  b0e870:	83 ec 54             	sub    esp,0x54
  b0e873:	53                   	push   ebx
  b0e874:	55                   	push   ebp
  b0e875:	56                   	push   esi
  b0e876:	57                   	push   edi
  b0e877:	8b 7c 24 68          	mov    edi,DWORD PTR [esp+0x68]
  b0e87b:	33 ed                	xor    ebp,ebp
  b0e87d:	3b fd                	cmp    edi,ebp
  b0e87f:	0f 84 54 01 00 00    	je     0xb0e9d9
  b0e885:	a1 a8 9f 1e 01       	mov    eax,ds:0x11e9fa8
  b0e88a:	50                   	push   eax
  b0e88b:	8b cf                	mov    ecx,edi
  b0e88d:	e8 ce 59 e2 ff       	call   0x934260
  b0e892:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  b0e898:	51                   	push   ecx
  b0e899:	8b cf                	mov    ecx,edi
  b0e89b:	8b d8                	mov    ebx,eax
  b0e89d:	e8 be 59 e2 ff       	call   0x934260
  b0e8a2:	3b dd                	cmp    ebx,ebp
  b0e8a4:	8b f0                	mov    esi,eax
  b0e8a6:	0f 84 2d 01 00 00    	je     0xb0e9d9
  b0e8ac:	3b f5                	cmp    esi,ebp
  b0e8ae:	0f 84 25 01 00 00    	je     0xb0e9d9
  b0e8b4:	8b cb                	mov    ecx,ebx
  b0e8b6:	e8 c5 60 e3 ff       	call   0x944980
  b0e8bb:	84 c0                	test   al,al
  b0e8bd:	0f 84 16 01 00 00    	je     0xb0e9d9
  b0e8c3:	d9 05 18 b2 fa 00    	fld    DWORD PTR ds:0xfab218
  b0e8c9:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  b0e8cd:	52                   	push   edx
  b0e8ce:	d9 54 24 18          	fst    DWORD PTR [esp+0x18]
  b0e8d2:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  b0e8d6:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  b0e8da:	50                   	push   eax
  b0e8db:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  b0e8df:	51                   	push   ecx
  b0e8e0:	8b ce                	mov    ecx,esi
  b0e8e2:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  b0e8e6:	e8 f5 ab 17 00       	call   0xc894e0
  b0e8eb:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  b0e8ef:	8d 54 24 40          	lea    edx,[esp+0x40]
  b0e8f3:	52                   	push   edx
  b0e8f4:	83 ec 08             	sub    esp,0x8
  b0e8f7:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b0e8fb:	8b ce                	mov    ecx,esi
  b0e8fd:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  b0e901:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  b0e905:	d9 1c 24             	fstp   DWORD PTR [esp]
  b0e908:	89 6c 24 74          	mov    DWORD PTR [esp+0x74],ebp
  b0e90c:	e8 2f b0 17 00       	call   0xc89940
  b0e911:	51                   	push   ecx
  b0e912:	d9 1c 24             	fstp   DWORD PTR [esp]
  b0e915:	57                   	push   edi
  b0e916:	e8 f5 b6 ff ff       	call   0xb0a010
  b0e91b:	8b b4 24 8c 00 00 00 	mov    esi,DWORD PTR [esp+0x8c]
  b0e922:	83 c4 14             	add    esp,0x14
  b0e925:	6a 01                	push   0x1
  b0e927:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  b0e92b:	50                   	push   eax
  b0e92c:	56                   	push   esi
  b0e92d:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  b0e931:	51                   	push   ecx
  b0e932:	8b cb                	mov    ecx,ebx
  b0e934:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  b0e938:	89 6c 24 34          	mov    DWORD PTR [esp+0x34],ebp
  b0e93c:	89 6c 24 38          	mov    DWORD PTR [esp+0x38],ebp
  b0e940:	c7 44 24 3c 78 6a 06 01 	mov    DWORD PTR [esp+0x3c],0x1066a78
  b0e948:	e8 33 67 e3 ff       	call   0x945080
  b0e94d:	84 c0                	test   al,al
  b0e94f:	74 77                	je     0xb0e9c8
  b0e951:	8b 7c 24 74          	mov    edi,DWORD PTR [esp+0x74]
  b0e955:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  b0e959:	8b 51 30             	mov    edx,DWORD PTR [ecx+0x30]
  b0e95c:	3b 51 34             	cmp    edx,DWORD PTR [ecx+0x34]
  b0e95f:	8d 41 30             	lea    eax,[ecx+0x30]
  b0e962:	74 4c                	je     0xb0e9b0
  b0e964:	0f be 49 05          	movsx  ecx,BYTE PTR [ecx+0x5]
  b0e968:	03 4c 24 1c          	add    ecx,DWORD PTR [esp+0x1c]
  b0e96c:	3b 4c 24 6c          	cmp    ecx,DWORD PTR [esp+0x6c]
  b0e970:	75 3e                	jne    0xb0e9b0
  b0e972:	8d 54 24 20          	lea    edx,[esp+0x20]
  b0e976:	52                   	push   edx
  b0e977:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  b0e97b:	51                   	push   ecx
  b0e97c:	50                   	push   eax
  b0e97d:	e8 9e fb ff ff       	call   0xb0e520
  b0e982:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  b0e986:	52                   	push   edx
  b0e987:	8d 44 24 30          	lea    eax,[esp+0x30]
  b0e98b:	50                   	push   eax
  b0e98c:	e8 2f f8 cb ff       	call   0x7ce1c0
  b0e991:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
  b0e998:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  b0e99c:	51                   	push   ecx
  b0e99d:	8d 54 24 38          	lea    edx,[esp+0x38]
  b0e9a1:	52                   	push   edx
  b0e9a2:	57                   	push   edi
  b0e9a3:	50                   	push   eax
  b0e9a4:	e8 f7 00 cc ff       	call   0x7ceaa0
  b0e9a9:	83 c4 24             	add    esp,0x24
  b0e9ac:	84 c0                	test   al,al
  b0e9ae:	75 33                	jne    0xb0e9e3
  b0e9b0:	6a 01                	push   0x1
  b0e9b2:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  b0e9b6:	51                   	push   ecx
  b0e9b7:	56                   	push   esi
  b0e9b8:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  b0e9bc:	52                   	push   edx
  b0e9bd:	8b cb                	mov    ecx,ebx
  b0e9bf:	e8 bc 66 e3 ff       	call   0x945080
  b0e9c4:	84 c0                	test   al,al
  b0e9c6:	75 8d                	jne    0xb0e955
  b0e9c8:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  b0e9cc:	3b c5                	cmp    eax,ebp
  b0e9ce:	74 09                	je     0xb0e9d9
  b0e9d0:	50                   	push   eax
  b0e9d1:	e8 0a 5b 9d ff       	call   0x4e44e0
  b0e9d6:	83 c4 04             	add    esp,0x4
  b0e9d9:	5f                   	pop    edi
  b0e9da:	5e                   	pop    esi
  b0e9db:	5d                   	pop    ebp
  b0e9dc:	32 c0                	xor    al,al
  b0e9de:	5b                   	pop    ebx
  b0e9df:	83 c4 54             	add    esp,0x54
  b0e9e2:	c3                   	ret
  b0e9e3:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  b0e9e7:	3b c5                	cmp    eax,ebp
  b0e9e9:	74 09                	je     0xb0e9f4
  b0e9eb:	50                   	push   eax
  b0e9ec:	e8 ef 5a 9d ff       	call   0x4e44e0
  b0e9f1:	83 c4 04             	add    esp,0x4
  b0e9f4:	5f                   	pop    edi
  b0e9f5:	5e                   	pop    esi
  b0e9f6:	5d                   	pop    ebp
  b0e9f7:	b0 01                	mov    al,0x1
  b0e9f9:	5b                   	pop    ebx
  b0e9fa:	83 c4 54             	add    esp,0x54
  b0e9fd:	c3                   	ret

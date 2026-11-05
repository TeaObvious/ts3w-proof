# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00acad10..00acadfa; Lot_NotifyObjectsCurrent
  acad10:	83 ec 24             	sub    esp,0x24
  acad13:	53                   	push   ebx
  acad14:	55                   	push   ebp
  acad15:	33 db                	xor    ebx,ebx
  acad17:	57                   	push   edi
  acad18:	8b f9                	mov    edi,ecx
  acad1a:	33 ed                	xor    ebp,ebp
  acad1c:	39 9f 84 01 00 00    	cmp    DWORD PTR [edi+0x184],ebx
  acad22:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  acad26:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  acad2a:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  acad2e:	c7 44 24 1c ec 68 06 01 	mov    DWORD PTR [esp+0x1c],0x10668ec
  acad36:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  acad3a:	0f 8e a5 00 00 00    	jle    0xacade5
  acad40:	56                   	push   esi
  acad41:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  acad45:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  acad49:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  acad50:	8b 87 74 01 00 00    	mov    eax,DWORD PTR [edi+0x174]
  acad56:	8b 8f 78 01 00 00    	mov    ecx,DWORD PTR [edi+0x178]
  acad5c:	6a 01                	push   0x1
  acad5e:	6a 05                	push   0x5
  acad60:	53                   	push   ebx
  acad61:	53                   	push   ebx
  acad62:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  acad66:	8b 87 7c 01 00 00    	mov    eax,DWORD PTR [edi+0x17c]
  acad6c:	03 44 24 20          	add    eax,DWORD PTR [esp+0x20]
  acad70:	53                   	push   ebx
  acad71:	8d 54 24 28          	lea    edx,[esp+0x28]
  acad75:	52                   	push   edx
  acad76:	89 4c 24 48          	mov    DWORD PTR [esp+0x48],ecx
  acad7a:	50                   	push   eax
  acad7b:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  acad7f:	51                   	push   ecx
  acad80:	8b cf                	mov    ecx,edi
  acad82:	89 6c 24 38          	mov    DWORD PTR [esp+0x38],ebp
  acad86:	e8 45 d8 ff ff       	call   0xac85d0
  acad8b:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  acad8f:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  acad93:	2b f5                	sub    esi,ebp
  acad95:	c1 fe 02             	sar    esi,0x2
  acad98:	74 31                	je     0xacadcb
  acad9a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  acada0:	8b 4c 9d 00          	mov    ecx,DWORD PTR [ebp+ebx*4+0x0]
  acada4:	85 c9                	test   ecx,ecx
  acada6:	74 1c                	je     0xacadc4
  acada8:	8b 15 a8 a2 1e 01    	mov    edx,DWORD PTR ds:0x11ea2a8
  acadae:	52                   	push   edx
  acadaf:	e8 ac 94 e6 ff       	call   0x934260
  acadb4:	85 c0                	test   eax,eax
  acadb6:	74 0c                	je     0xacadc4
  acadb8:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  acadbc:	51                   	push   ecx
  acadbd:	8b c8                	mov    ecx,eax
  acadbf:	e8 6c 4b e9 ff       	call   0x95f930
  acadc4:	83 c3 01             	add    ebx,0x1
  acadc7:	3b de                	cmp    ebx,esi
  acadc9:	72 d5                	jb     0xacada0
  acadcb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  acadcf:	83 c0 01             	add    eax,0x1
  acadd2:	33 db                	xor    ebx,ebx
  acadd4:	3b 87 84 01 00 00    	cmp    eax,DWORD PTR [edi+0x184]
  acadda:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  acadde:	0f 8c 6c ff ff ff    	jl     0xacad50
  acade4:	5e                   	pop    esi
  acade5:	3b eb                	cmp    ebp,ebx
  acade7:	74 09                	je     0xacadf2
  acade9:	55                   	push   ebp
  acadea:	e8 f1 96 a1 ff       	call   0x4e44e0
  acadef:	83 c4 04             	add    esp,0x4
  acadf2:	5f                   	pop    edi
  acadf3:	5d                   	pop    ebp
  acadf4:	5b                   	pop    ebx
  acadf5:	83 c4 24             	add    esp,0x24
  acadf8:	c2 04 00             	ret    0x4

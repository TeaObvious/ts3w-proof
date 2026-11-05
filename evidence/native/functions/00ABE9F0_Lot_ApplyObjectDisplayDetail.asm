# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00abe9f0..00abeb7b; Lot_ApplyObjectDisplayDetail
  abe9f0:	83 ec 0c             	sub    esp,0xc
  abe9f3:	83 b9 64 03 00 00 00 	cmp    DWORD PTR [ecx+0x364],0x0
  abe9fa:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  abe9fe:	0f 84 72 01 00 00    	je     0xabeb76
  abea04:	83 b9 08 04 00 00 01 	cmp    DWORD PTR [ecx+0x408],0x1
  abea0b:	53                   	push   ebx
  abea0c:	56                   	push   esi
  abea0d:	75 09                	jne    0xabea18
  abea0f:	83 b9 0c 04 00 00 50 	cmp    DWORD PTR [ecx+0x40c],0x50
  abea16:	74 15                	je     0xabea2d
  abea18:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  abea1c:	56                   	push   esi
  abea1d:	e8 5e 86 04 00       	call   0xb07080
  abea22:	83 c4 04             	add    esp,0x4
  abea25:	84 c0                	test   al,al
  abea27:	74 08                	je     0xabea31
  abea29:	b3 01                	mov    bl,0x1
  abea2b:	eb 06                	jmp    0xabea33
  abea2d:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  abea31:	32 db                	xor    bl,bl
  abea33:	85 f6                	test   esi,esi
  abea35:	88 5c 24 08          	mov    BYTE PTR [esp+0x8],bl
  abea39:	0f 84 35 01 00 00    	je     0xabeb74
  abea3f:	a1 08 df 1e 01       	mov    eax,ds:0x11edf08
  abea44:	57                   	push   edi
  abea45:	50                   	push   eax
  abea46:	8b ce                	mov    ecx,esi
  abea48:	e8 13 58 e7 ff       	call   0x934260
  abea4d:	8b f8                	mov    edi,eax
  abea4f:	85 ff                	test   edi,edi
  abea51:	0f 84 1c 01 00 00    	je     0xabeb73
  abea57:	8b 47 18             	mov    eax,DWORD PTR [edi+0x18]
  abea5a:	3d ff ff ff 7f       	cmp    eax,0x7fffffff
  abea5f:	55                   	push   ebp
  abea60:	75 04                	jne    0xabea66
  abea62:	33 ed                	xor    ebp,ebp
  abea64:	eb 0c                	jmp    0xabea72
  abea66:	8b e8                	mov    ebp,eax
  abea68:	85 ed                	test   ebp,ebp
  abea6a:	7d 06                	jge    0xabea72
  abea6c:	32 db                	xor    bl,bl
  abea6e:	88 5c 24 10          	mov    BYTE PTR [esp+0x10],bl
  abea72:	80 7c 24 28 00       	cmp    BYTE PTR [esp+0x28],0x0
  abea77:	74 08                	je     0xabea81
  abea79:	84 db                	test   bl,bl
  abea7b:	0f 84 f1 00 00 00    	je     0xabeb72
  abea81:	80 7c 24 24 00       	cmp    BYTE PTR [esp+0x24],0x0
  abea86:	75 0a                	jne    0xabea92
  abea88:	84 db                	test   bl,bl
  abea8a:	0f 85 e2 00 00 00    	jne    0xabeb72
  abea90:	eb 17                	jmp    0xabeaa9
  abea92:	84 db                	test   bl,bl
  abea94:	74 13                	je     0xabeaa9
  abea96:	56                   	push   esi
  abea97:	e8 f4 1a 04 00       	call   0xb00590
  abea9c:	83 c4 04             	add    esp,0x4
  abea9f:	84 c0                	test   al,al
  abeaa1:	74 06                	je     0xabeaa9
  abeaa3:	32 db                	xor    bl,bl
  abeaa5:	88 5c 24 10          	mov    BYTE PTR [esp+0x10],bl
  abeaa9:	8b 77 1c             	mov    esi,DWORD PTR [edi+0x1c]
  abeaac:	81 fe ff ff ff 7f    	cmp    esi,0x7fffffff
  abeab2:	75 11                	jne    0xabeac5
  abeab4:	8b 47 18             	mov    eax,DWORD PTR [edi+0x18]
  abeab7:	8b f0                	mov    esi,eax
  abeab9:	81 ee ff ff ff 7f    	sub    esi,0x7fffffff
  abeabf:	f7 de                	neg    esi
  abeac1:	1b f6                	sbb    esi,esi
  abeac3:	23 f0                	and    esi,eax
  abeac5:	8b 4f 2c             	mov    ecx,DWORD PTR [edi+0x2c]
  abeac8:	c1 e9 05             	shr    ecx,0x5
  abeacb:	f6 c1 01             	test   cl,0x1
  abeace:	74 06                	je     0xabead6
  abead0:	83 c5 01             	add    ebp,0x1
  abead3:	83 c6 01             	add    esi,0x1
  abead6:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
  abeada:	57                   	push   edi
  abeadb:	e8 e0 1f 04 00       	call   0xb00ac0
  abeae0:	83 c4 04             	add    esp,0x4
  abeae3:	84 db                	test   bl,bl
  abeae5:	75 22                	jne    0xabeb09
  abeae7:	84 c0                	test   al,al
  abeae9:	74 04                	je     0xabeaef
  abeaeb:	85 ed                	test   ebp,ebp
  abeaed:	7d 1a                	jge    0xabeb09
  abeaef:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  abeaf3:	8b 83 9c 03 00 00    	mov    eax,DWORD PTR [ebx+0x39c]
  abeaf9:	3b c6                	cmp    eax,esi
  abeafb:	7d 12                	jge    0xabeb0f
  abeafd:	3b c5                	cmp    eax,ebp
  abeaff:	7c 04                	jl     0xabeb05
  abeb01:	8b f0                	mov    esi,eax
  abeb03:	eb 0a                	jmp    0xabeb0f
  abeb05:	8b f5                	mov    esi,ebp
  abeb07:	eb 06                	jmp    0xabeb0f
  abeb09:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  abeb0d:	33 f6                	xor    esi,esi
  abeb0f:	80 bb 68 03 00 00 00 	cmp    BYTE PTR [ebx+0x368],0x0
  abeb16:	74 41                	je     0xabeb59
  abeb18:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  abeb1b:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  abeb1e:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  abeb22:	51                   	push   ecx
  abeb23:	8b 8b dc 02 00 00    	mov    ecx,DWORD PTR [ebx+0x2dc]
  abeb29:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  abeb2d:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  abeb31:	e8 4a e2 1b 00       	call   0xc7cd80
  abeb36:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  abeb3a:	8b 83 64 03 00 00    	mov    eax,DWORD PTR [ebx+0x364]
  abeb40:	8b 8b dc 02 00 00    	mov    ecx,DWORD PTR [ebx+0x2dc]
  abeb46:	56                   	push   esi
  abeb47:	52                   	push   edx
  abeb48:	57                   	push   edi
  abeb49:	50                   	push   eax
  abeb4a:	e8 71 12 ff ff       	call   0xaafdc0
  abeb4f:	5d                   	pop    ebp
  abeb50:	5f                   	pop    edi
  abeb51:	5e                   	pop    esi
  abeb52:	5b                   	pop    ebx
  abeb53:	83 c4 0c             	add    esp,0xc
  abeb56:	c2 0c 00             	ret    0xc
  abeb59:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  abeb5d:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
  abeb60:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  abeb63:	56                   	push   esi
  abeb64:	51                   	push   ecx
  abeb65:	8b 8b dc 02 00 00    	mov    ecx,DWORD PTR [ebx+0x2dc]
  abeb6b:	52                   	push   edx
  abeb6c:	50                   	push   eax
  abeb6d:	e8 9e f3 ff ff       	call   0xabdf10
  abeb72:	5d                   	pop    ebp
  abeb73:	5f                   	pop    edi
  abeb74:	5e                   	pop    esi
  abeb75:	5b                   	pop    ebx
  abeb76:	83 c4 0c             	add    esp,0xc
  abeb79:	c2 0c 00             	ret    0xc

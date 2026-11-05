# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c62e30..00c62e9e; LotDetailScores_MakeHeap
  c62e30:	83 ec 10             	sub    esp,0x10
  c62e33:	53                   	push   ebx
  c62e34:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  c62e38:	55                   	push   ebp
  c62e39:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  c62e3d:	2b dd                	sub    ebx,ebp
  c62e3f:	c1 fb 04             	sar    ebx,0x4
  c62e42:	83 fb 02             	cmp    ebx,0x2
  c62e45:	7c 52                	jl     0xc62e99
  c62e47:	56                   	push   esi
  c62e48:	57                   	push   edi
  c62e49:	8d 7b fe             	lea    edi,[ebx-0x2]
  c62e4c:	d1 ff                	sar    edi,1
  c62e4e:	83 c7 01             	add    edi,0x1
  c62e51:	8b f7                	mov    esi,edi
  c62e53:	c1 e6 04             	shl    esi,0x4
  c62e56:	03 f5                	add    esi,ebp
  c62e58:	eb 06                	jmp    0xc62e60
  c62e5a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  c62e60:	8b 4e f4             	mov    ecx,DWORD PTR [esi-0xc]
  c62e63:	8b 46 f0             	mov    eax,DWORD PTR [esi-0x10]
  c62e66:	8b 56 f8             	mov    edx,DWORD PTR [esi-0x8]
  c62e69:	83 ee 10             	sub    esi,0x10
  c62e6c:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  c62e70:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  c62e74:	51                   	push   ecx
  c62e75:	83 ef 01             	sub    edi,0x1
  c62e78:	57                   	push   edi
  c62e79:	53                   	push   ebx
  c62e7a:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  c62e7e:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  c62e81:	57                   	push   edi
  c62e82:	55                   	push   ebp
  c62e83:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  c62e87:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  c62e8b:	e8 80 ec ff ff       	call   0xc61b10
  c62e90:	83 c4 14             	add    esp,0x14
  c62e93:	85 ff                	test   edi,edi
  c62e95:	75 c9                	jne    0xc62e60
  c62e97:	5f                   	pop    edi
  c62e98:	5e                   	pop    esi
  c62e99:	5d                   	pop    ebp
  c62e9a:	5b                   	pop    ebx
  c62e9b:	83 c4 10             	add    esp,0x10
  c62e9e:	c3                   	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079ebd0, 0x0079ed8c); analyst name ShaderPass_ResolveParameterIds.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079ebd0 <.text+0x39dbd0>:
  79ebd0:	53                   	push   ebx
  79ebd1:	55                   	push   ebp
  79ebd2:	56                   	push   esi
  79ebd3:	57                   	push   edi
  79ebd4:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  79ebd8:	85 ff                	test   edi,edi
  79ebda:	8b f1                	mov    esi,ecx
  79ebdc:	74 1c                	je     0x79ebfa
  79ebde:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  79ebe1:	50                   	push   eax
  79ebe2:	8b cf                	mov    ecx,edi
  79ebe4:	e8 87 bf ff ff       	call   0x79ab70
  79ebe9:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  79ebec:	51                   	push   ecx
  79ebed:	8b cf                	mov    ecx,edi
  79ebef:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  79ebf2:	e8 79 bf ff ff       	call   0x79ab70
  79ebf7:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  79ebfa:	8b 2d 30 85 1d 01    	mov    ebp,DWORD PTR ds:0x11d8530
  79ec00:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  79ec04:	8d 7e 08             	lea    edi,[esi+0x8]
  79ec07:	bb 04 00 00 00       	mov    ebx,0x4
  79ec0c:	8d 64 24 00          	lea    esp,[esp+0x0]
  79ec10:	8b 07                	mov    eax,DWORD PTR [edi]
  79ec12:	85 c0                	test   eax,eax
  79ec14:	74 10                	je     0x79ec26
  79ec16:	6a 06                	push   0x6
  79ec18:	6a 01                	push   0x1
  79ec1a:	50                   	push   eax
  79ec1b:	8b cd                	mov    ecx,ebp
  79ec1d:	e8 de b8 ff ff       	call   0x79a500
  79ec22:	89 07                	mov    DWORD PTR [edi],eax
  79ec24:	eb 06                	jmp    0x79ec2c
  79ec26:	c7 07 ff ff ff ff    	mov    DWORD PTR [edi],0xffffffff
  79ec2c:	83 c7 04             	add    edi,0x4
  79ec2f:	83 eb 01             	sub    ebx,0x1
  79ec32:	75 dc                	jne    0x79ec10
  79ec34:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  79ec37:	85 c0                	test   eax,eax
  79ec39:	74 11                	je     0x79ec4c
  79ec3b:	6a 06                	push   0x6
  79ec3d:	6a 01                	push   0x1
  79ec3f:	50                   	push   eax
  79ec40:	8b cd                	mov    ecx,ebp
  79ec42:	e8 b9 b8 ff ff       	call   0x79a500
  79ec47:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  79ec4a:	eb 07                	jmp    0x79ec53
  79ec4c:	c7 46 18 ff ff ff ff 	mov    DWORD PTR [esi+0x18],0xffffffff
  79ec53:	33 db                	xor    ebx,ebx
  79ec55:	39 5e 3c             	cmp    DWORD PTR [esi+0x3c],ebx
  79ec58:	76 2f                	jbe    0x79ec89
  79ec5a:	33 ed                	xor    ebp,ebp
  79ec5c:	8d 64 24 00          	lea    esp,[esp+0x0]
  79ec60:	8b 7e 40             	mov    edi,DWORD PTR [esi+0x40]
  79ec63:	8b 54 2f 04          	mov    edx,DWORD PTR [edi+ebp*1+0x4]
  79ec67:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  79ec6b:	6a 01                	push   0x1
  79ec6d:	03 fd                	add    edi,ebp
  79ec6f:	6a 01                	push   0x1
  79ec71:	52                   	push   edx
  79ec72:	e8 89 b8 ff ff       	call   0x79a500
  79ec77:	83 c3 01             	add    ebx,0x1
  79ec7a:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  79ec7d:	83 c5 0c             	add    ebp,0xc
  79ec80:	3b 5e 3c             	cmp    ebx,DWORD PTR [esi+0x3c]
  79ec83:	72 db                	jb     0x79ec60
  79ec85:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  79ec89:	33 db                	xor    ebx,ebx
  79ec8b:	39 9e c8 00 00 00    	cmp    DWORD PTR [esi+0xc8],ebx
  79ec91:	76 3c                	jbe    0x79eccf
  79ec93:	33 ed                	xor    ebp,ebp
  79ec95:	eb 09                	jmp    0x79eca0
  79ec97:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  79ec9e:	8b ff                	mov    edi,edi
  79eca0:	8b be cc 00 00 00    	mov    edi,DWORD PTR [esi+0xcc]
  79eca6:	8b 44 2f 04          	mov    eax,DWORD PTR [edi+ebp*1+0x4]
  79ecaa:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  79ecae:	6a 01                	push   0x1
  79ecb0:	03 fd                	add    edi,ebp
  79ecb2:	6a 01                	push   0x1
  79ecb4:	50                   	push   eax
  79ecb5:	e8 46 b8 ff ff       	call   0x79a500
  79ecba:	83 c3 01             	add    ebx,0x1
  79ecbd:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  79ecc0:	83 c5 0c             	add    ebp,0xc
  79ecc3:	3b 9e c8 00 00 00    	cmp    ebx,DWORD PTR [esi+0xc8]
  79ecc9:	72 d5                	jb     0x79eca0
  79eccb:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  79eccf:	33 db                	xor    ebx,ebx
  79ecd1:	8d 7e 48             	lea    edi,[esi+0x48]
  79ecd4:	ba 01 00 00 00       	mov    edx,0x1
  79ecd9:	8b cb                	mov    ecx,ebx
  79ecdb:	d3 e2                	shl    edx,cl
  79ecdd:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  79ece3:	85 56 44             	test   DWORD PTR [esi+0x44],edx
  79ece6:	74 2d                	je     0x79ed15
  79ece8:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  79eceb:	85 c0                	test   eax,eax
  79eced:	74 0c                	je     0x79ecfb
  79ecef:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  79ecf3:	50                   	push   eax
  79ecf4:	e8 d7 be ff ff       	call   0x79abd0
  79ecf9:	89 07                	mov    DWORD PTR [edi],eax
  79ecfb:	8b 87 88 00 00 00    	mov    eax,DWORD PTR [edi+0x88]
  79ed01:	6a 05                	push   0x5
  79ed03:	6a 01                	push   0x1
  79ed05:	50                   	push   eax
  79ed06:	8b cd                	mov    ecx,ebp
  79ed08:	e8 f3 b7 ff ff       	call   0x79a500
  79ed0d:	89 87 c8 00 00 00    	mov    DWORD PTR [edi+0xc8],eax
  79ed13:	eb 0a                	jmp    0x79ed1f
  79ed15:	c7 87 c8 00 00 00 ff ff ff ff 	mov    DWORD PTR [edi+0xc8],0xffffffff
  79ed1f:	83 c3 01             	add    ebx,0x1
  79ed22:	83 c7 04             	add    edi,0x4
  79ed25:	83 fb 10             	cmp    ebx,0x10
  79ed28:	72 aa                	jb     0x79ecd4
  79ed2a:	8b be 68 01 00 00    	mov    edi,DWORD PTR [esi+0x168]
  79ed30:	8b 9e 6c 01 00 00    	mov    ebx,DWORD PTR [esi+0x16c]
  79ed36:	3b fb                	cmp    edi,ebx
  79ed38:	8b 2d 30 85 1d 01    	mov    ebp,DWORD PTR ds:0x11d8530
  79ed3e:	74 15                	je     0x79ed55
  79ed40:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  79ed43:	51                   	push   ecx
  79ed44:	8b cd                	mov    ecx,ebp
  79ed46:	e8 75 b6 ff ff       	call   0x79a3c0
  79ed4b:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
  79ed4e:	83 c7 1c             	add    edi,0x1c
  79ed51:	3b fb                	cmp    edi,ebx
  79ed53:	75 eb                	jne    0x79ed40
  79ed55:	8b be 78 01 00 00    	mov    edi,DWORD PTR [esi+0x178]
  79ed5b:	8b b6 7c 01 00 00    	mov    esi,DWORD PTR [esi+0x17c]
  79ed61:	3b fe                	cmp    edi,esi
  79ed63:	8b 1d 30 85 1d 01    	mov    ebx,DWORD PTR ds:0x11d8530
  79ed69:	74 1a                	je     0x79ed85
  79ed6b:	eb 03                	jmp    0x79ed70
  79ed6d:	8d 49 00             	lea    ecx,[ecx+0x0]
  79ed70:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
  79ed73:	52                   	push   edx
  79ed74:	8b cb                	mov    ecx,ebx
  79ed76:	e8 45 b6 ff ff       	call   0x79a3c0
  79ed7b:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
  79ed7e:	83 c7 1c             	add    edi,0x1c
  79ed81:	3b fe                	cmp    edi,esi
  79ed83:	75 eb                	jne    0x79ed70
  79ed85:	5f                   	pop    edi
  79ed86:	5e                   	pop    esi
  79ed87:	5d                   	pop    ebp
  79ed88:	5b                   	pop    ebx
  79ed89:	c2 08 00             	ret    0x8

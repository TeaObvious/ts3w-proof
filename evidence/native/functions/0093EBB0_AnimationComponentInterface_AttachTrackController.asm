# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0093ebb0, 0x0093eceb); analyst name AnimationComponentInterface_AttachTrackController.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093ebb0 <.text+0x53dbb0>:
  93ebb0:	8b 41 f8             	mov    eax,DWORD PTR [ecx-0x8]
  93ebb3:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  93ebb6:	56                   	push   esi
  93ebb7:	8d 71 f8             	lea    esi,[ecx-0x8]
  93ebba:	57                   	push   edi
  93ebbb:	8b ce                	mov    ecx,esi
  93ebbd:	ff d2                	call   edx
  93ebbf:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  93ebc3:	85 ff                	test   edi,edi
  93ebc5:	0f 84 19 01 00 00    	je     0x93ece4
  93ebcb:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  93ebce:	85 c0                	test   eax,eax
  93ebd0:	0f 84 0e 01 00 00    	je     0x93ece4
  93ebd6:	83 b8 b0 00 00 00 00 	cmp    DWORD PTR [eax+0xb0],0x0
  93ebdd:	0f 84 01 01 00 00    	je     0x93ece4
  93ebe3:	85 c0                	test   eax,eax
  93ebe5:	74 08                	je     0x93ebef
  93ebe7:	8b 80 b0 00 00 00    	mov    eax,DWORD PTR [eax+0xb0]
  93ebed:	eb 02                	jmp    0x93ebf1
  93ebef:	33 c0                	xor    eax,eax
  93ebf1:	6a ff                	push   0xffffffff
  93ebf3:	50                   	push   eax
  93ebf4:	8d 4f 0c             	lea    ecx,[edi+0xc]
  93ebf7:	e8 84 82 c3 ff       	call   0x576e80
  93ebfc:	8b 76 24             	mov    esi,DWORD PTR [esi+0x24]
  93ebff:	85 f6                	test   esi,esi
  93ec01:	74 08                	je     0x93ec0b
  93ec03:	8b 8e b0 00 00 00    	mov    ecx,DWORD PTR [esi+0xb0]
  93ec09:	eb 02                	jmp    0x93ec0d
  93ec0b:	33 c9                	xor    ecx,ecx
  93ec0d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  93ec11:	50                   	push   eax
  93ec12:	e8 59 54 c4 ff       	call   0x584070
  93ec17:	8b c8                	mov    ecx,eax
  93ec19:	85 c9                	test   ecx,ecx
  93ec1b:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  93ec1f:	0f 84 bf 00 00 00    	je     0x93ece4
  93ec25:	83 41 04 01          	add    DWORD PTR [ecx+0x4],0x1
  93ec29:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  93ec2d:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  93ec31:	33 d2                	xor    edx,edx
  93ec33:	38 54 24 28          	cmp    BYTE PTR [esp+0x28],dl
  93ec37:	53                   	push   ebx
  93ec38:	0f 95 c2             	setne  dl
  93ec3b:	83 e8 01             	sub    eax,0x1
  93ec3e:	74 6d                	je     0x93ecad
  93ec40:	83 e8 01             	sub    eax,0x1
  93ec43:	74 37                	je     0x93ec7c
  93ec45:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  93ec49:	50                   	push   eax
  93ec4a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  93ec4e:	52                   	push   edx
  93ec4f:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  93ec53:	52                   	push   edx
  93ec54:	50                   	push   eax
  93ec55:	83 ec 08             	sub    esp,0x8
  93ec58:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  93ec5c:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  93ec60:	d9 1c 24             	fstp   DWORD PTR [esp]
  93ec63:	57                   	push   edi
  93ec64:	e8 07 84 c2 ff       	call   0x567070
  93ec69:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  93ec6d:	8a d8                	mov    bl,al
  93ec6f:	e8 ac 70 c2 ff       	call   0x565d20
  93ec74:	8a c3                	mov    al,bl
  93ec76:	5b                   	pop    ebx
  93ec77:	5f                   	pop    edi
  93ec78:	5e                   	pop    esi
  93ec79:	c2 24 00             	ret    0x24
  93ec7c:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  93ec80:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  93ec84:	52                   	push   edx
  93ec85:	50                   	push   eax
  93ec86:	83 ec 08             	sub    esp,0x8
  93ec89:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  93ec8d:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  93ec91:	d9 1c 24             	fstp   DWORD PTR [esp]
  93ec94:	57                   	push   edi
  93ec95:	e8 16 91 c2 ff       	call   0x567db0
  93ec9a:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  93ec9e:	8a d8                	mov    bl,al
  93eca0:	e8 7b 70 c2 ff       	call   0x565d20
  93eca5:	8a c3                	mov    al,bl
  93eca7:	5b                   	pop    ebx
  93eca8:	5f                   	pop    edi
  93eca9:	5e                   	pop    esi
  93ecaa:	c2 24 00             	ret    0x24
  93ecad:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  93ecb1:	50                   	push   eax
  93ecb2:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  93ecb6:	52                   	push   edx
  93ecb7:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  93ecbb:	52                   	push   edx
  93ecbc:	50                   	push   eax
  93ecbd:	83 ec 08             	sub    esp,0x8
  93ecc0:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  93ecc4:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  93ecc8:	d9 1c 24             	fstp   DWORD PTR [esp]
  93eccb:	57                   	push   edi
  93eccc:	e8 6f 8f c2 ff       	call   0x567c40
  93ecd1:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  93ecd5:	8a d8                	mov    bl,al
  93ecd7:	e8 44 70 c2 ff       	call   0x565d20
  93ecdc:	8a c3                	mov    al,bl
  93ecde:	5b                   	pop    ebx
  93ecdf:	5f                   	pop    edi
  93ece0:	5e                   	pop    esi
  93ece1:	c2 24 00             	ret    0x24
  93ece4:	5f                   	pop    edi
  93ece5:	32 c0                	xor    al,al
  93ece7:	5e                   	pop    esi
  93ece8:	c2 24 00             	ret    0x24

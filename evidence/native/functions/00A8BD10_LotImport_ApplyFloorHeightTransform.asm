# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00a8bd10, 0x00a8c06e).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

; Analyst-assigned name: LotImport_ApplyFloorHeightTransform
; Original machine bytes and instructions, verified Ghidra function envelope 0x00a8bd10..0x00a8c06d.
; Alignment gaps inside non-contiguous Ghidra bodies are included in this envelope.

PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a8bd10 <.text+0x68ad10>:
  a8bd10:	83 ec 34             	sub    esp,0x34
  a8bd13:	53                   	push   ebx
  a8bd14:	55                   	push   ebp
  a8bd15:	8b 6c 24 40          	mov    ebp,DWORD PTR [esp+0x40]
  a8bd19:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  a8bd1c:	83 e8 01             	sub    eax,0x1
  a8bd1f:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  a8bd23:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  a8bd26:	83 e8 01             	sub    eax,0x1
  a8bd29:	56                   	push   esi
  a8bd2a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  a8bd2d:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  a8bd31:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  a8bd35:	80 78 48 00          	cmp    BYTE PTR [eax+0x48],0x0
  a8bd39:	57                   	push   edi
  a8bd3a:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  a8bd3e:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
  a8bd42:	0f 84 1a 02 00 00    	je     0xa8bf62
  a8bd48:	33 c0                	xor    eax,eax
  a8bd4a:	3b f0                	cmp    esi,eax
  a8bd4c:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  a8bd50:	0f 8e 07 03 00 00    	jle    0xa8c05d
  a8bd56:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
  a8bd5a:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  a8bd5e:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  a8bd62:	8b c7                	mov    eax,edi
  a8bd64:	0f af c2             	imul   eax,edx
  a8bd67:	03 c0                	add    eax,eax
  a8bd69:	03 c0                	add    eax,eax
  a8bd6b:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  a8bd6f:	90                   	nop
  a8bd70:	33 db                	xor    ebx,ebx
  a8bd72:	85 ff                	test   edi,edi
  a8bd74:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  a8bd78:	0f 8e c0 01 00 00    	jle    0xa8bf3e
  a8bd7e:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  a8bd82:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  a8bd86:	85 db                	test   ebx,ebx
  a8bd88:	74 0c                	je     0xa8bd96
  a8bd8a:	8d 47 ff             	lea    eax,[edi-0x1]
  a8bd8d:	3b d8                	cmp    ebx,eax
  a8bd8f:	c6 44 24 48 00       	mov    BYTE PTR [esp+0x48],0x0
  a8bd94:	75 05                	jne    0xa8bd9b
  a8bd96:	c6 44 24 48 01       	mov    BYTE PTR [esp+0x48],0x1
  a8bd9b:	33 f6                	xor    esi,esi
  a8bd9d:	85 d2                	test   edx,edx
  a8bd9f:	0f 8e 73 01 00 00    	jle    0xa8bf18
  a8bda5:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  a8bda9:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  a8bdad:	8d 49 00             	lea    ecx,[ecx+0x0]
  a8bdb0:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  a8bdb4:	8d 54 24 18          	lea    edx,[esp+0x18]
  a8bdb8:	52                   	push   edx
  a8bdb9:	8d 44 24 20          	lea    eax,[esp+0x20]
  a8bdbd:	50                   	push   eax
  a8bdbe:	56                   	push   esi
  a8bdbf:	53                   	push   ebx
  a8bdc0:	83 c1 64             	add    ecx,0x64
  a8bdc3:	e8 f8 72 22 00       	call   0xcb30c0
  a8bdc8:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  a8bdcc:	85 c9                	test   ecx,ecx
  a8bdce:	0f 8e 2c 01 00 00    	jle    0xa8bf00
  a8bdd4:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  a8bdd8:	85 d2                	test   edx,edx
  a8bdda:	0f 8e 20 01 00 00    	jle    0xa8bf00
  a8bde0:	3b 4c 24 38          	cmp    ecx,DWORD PTR [esp+0x38]
  a8bde4:	0f 8d 16 01 00 00    	jge    0xa8bf00
  a8bdea:	3b 54 24 3c          	cmp    edx,DWORD PTR [esp+0x3c]
  a8bdee:	0f 8d 0c 01 00 00    	jge    0xa8bf00
  a8bdf4:	85 f6                	test   esi,esi
  a8bdf6:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  a8bdfa:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  a8bdfe:	8b 00                	mov    eax,DWORD PTR [eax]
  a8be00:	f3 0f 10 0c 07       	movss  xmm1,DWORD PTR [edi+eax*1]
  a8be05:	8b 7c 24 50          	mov    edi,DWORD PTR [esp+0x50]
  a8be09:	f3 0f 10 47 34       	movss  xmm0,DWORD PTR [edi+0x34]
  a8be0e:	f3 0f 58 c1          	addss  xmm0,xmm1
  a8be12:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  a8be18:	74 0f                	je     0xa8be29
  a8be1a:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  a8be1e:	83 c0 ff             	add    eax,0xffffffff
  a8be21:	3b f0                	cmp    esi,eax
  a8be23:	74 04                	je     0xa8be29
  a8be25:	32 c0                	xor    al,al
  a8be27:	eb 02                	jmp    0xa8be2b
  a8be29:	b0 01                	mov    al,0x1
  a8be2b:	80 7f 50 00          	cmp    BYTE PTR [edi+0x50],0x0
  a8be2f:	74 6a                	je     0xa8be9b
  a8be31:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  a8be35:	3b 5f 24             	cmp    ebx,DWORD PTR [edi+0x24]
  a8be38:	75 61                	jne    0xa8be9b
  a8be3a:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
  a8be3e:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
  a8be41:	80 bb b0 04 00 00 00 	cmp    BYTE PTR [ebx+0x4b0],0x0
  a8be48:	75 0e                	jne    0xa8be58
  a8be4a:	f3 0f 5c 05 f8 98 f9 	subss  xmm0,DWORD PTR ds:0xf998f8
  a8be51:	00
  a8be52:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  a8be58:	80 7c 24 48 00       	cmp    BYTE PTR [esp+0x48],0x0
  a8be5d:	75 47                	jne    0xa8bea6
  a8be5f:	84 c0                	test   al,al
  a8be61:	75 43                	jne    0xa8bea6
  a8be63:	0f 57 c9             	xorps  xmm1,xmm1
  a8be66:	0f 2f c8             	comiss xmm1,xmm0
  a8be69:	76 79                	jbe    0xa8bee4
  a8be6b:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  a8be6e:	8b 57 1c             	mov    edx,DWORD PTR [edi+0x1c]
  a8be71:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  a8be75:	6a 00                	push   0x0
  a8be77:	51                   	push   ecx
  a8be78:	52                   	push   edx
  a8be79:	56                   	push   esi
  a8be7a:	53                   	push   ebx
  a8be7b:	e8 00 40 04 00       	call   0xacfe80
  a8be80:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  a8be84:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  a8be88:	83 c4 14             	add    esp,0x14
  a8be8b:	84 c0                	test   al,al
  a8be8d:	74 4d                	je     0xa8bedc
  a8be8f:	f3 0f 10 47 4c       	movss  xmm0,DWORD PTR [edi+0x4c]
  a8be94:	f3 0f 58 47 34       	addss  xmm0,DWORD PTR [edi+0x34]
  a8be99:	eb 4d                	jmp    0xa8bee8
  a8be9b:	80 7c 24 48 00       	cmp    BYTE PTR [esp+0x48],0x0
  a8bea0:	75 04                	jne    0xa8bea6
  a8bea2:	84 c0                	test   al,al
  a8bea4:	74 3e                	je     0xa8bee4
  a8bea6:	f3 0f 10 57 4c       	movss  xmm2,DWORD PTR [edi+0x4c]
  a8beab:	0f 2f d1             	comiss xmm2,xmm1
  a8beae:	76 34                	jbe    0xa8bee4
  a8beb0:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  a8beb3:	0f af 44 24 10       	imul   eax,DWORD PTR [esp+0x10]
  a8beb8:	03 c1                	add    eax,ecx
  a8beba:	0f af 45 08          	imul   eax,DWORD PTR [ebp+0x8]
  a8bebe:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  a8bec1:	03 c2                	add    eax,edx
  a8bec3:	0f 2f 04 81          	comiss xmm0,DWORD PTR [ecx+eax*4]
  a8bec7:	8d 04 81             	lea    eax,[ecx+eax*4]
  a8beca:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  a8bece:	77 02                	ja     0xa8bed2
  a8bed0:	8b c8                	mov    ecx,eax
  a8bed2:	d9 01                	fld    DWORD PTR [ecx]
  a8bed4:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  a8bed8:	d9 18                	fstp   DWORD PTR [eax]
  a8beda:	eb 24                	jmp    0xa8bf00
  a8bedc:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  a8bee2:	eb 04                	jmp    0xa8bee8
  a8bee4:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  a8bee8:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  a8beeb:	0f af 44 24 10       	imul   eax,DWORD PTR [esp+0x10]
  a8bef0:	03 c1                	add    eax,ecx
  a8bef2:	0f af 45 08          	imul   eax,DWORD PTR [ebp+0x8]
  a8bef6:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  a8bef9:	03 c2                	add    eax,edx
  a8befb:	f3 0f 11 04 81       	movss  DWORD PTR [ecx+eax*4],xmm0
  a8bf00:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  a8bf04:	83 44 24 24 04       	add    DWORD PTR [esp+0x24],0x4
  a8bf09:	83 c6 01             	add    esi,0x1
  a8bf0c:	3b f2                	cmp    esi,edx
  a8bf0e:	0f 8c 9c fe ff ff    	jl     0xa8bdb0
  a8bf14:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
  a8bf18:	83 c3 01             	add    ebx,0x1
  a8bf1b:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
  a8bf22:	01 44 24 28          	add    DWORD PTR [esp+0x28],eax
  a8bf26:	3b df                	cmp    ebx,edi
  a8bf28:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  a8bf2c:	0f 8c 54 fe ff ff    	jl     0xa8bd86
  a8bf32:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  a8bf36:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  a8bf3a:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  a8bf3e:	83 44 24 10 01       	add    DWORD PTR [esp+0x10],0x1
  a8bf43:	01 44 24 2c          	add    DWORD PTR [esp+0x2c],eax
  a8bf47:	39 74 24 10          	cmp    DWORD PTR [esp+0x10],esi
  a8bf4b:	0f 8c 1f fe ff ff    	jl     0xa8bd70
  a8bf51:	5f                   	pop    edi
  a8bf52:	5e                   	pop    esi
  a8bf53:	5d                   	pop    ebp
  a8bf54:	c6 81 20 02 00 00 01 	mov    BYTE PTR [ecx+0x220],0x1
  a8bf5b:	5b                   	pop    ebx
  a8bf5c:	83 c4 34             	add    esp,0x34
  a8bf5f:	c2 14 00             	ret    0x14
  a8bf62:	33 c0                	xor    eax,eax
  a8bf64:	3b f0                	cmp    esi,eax
  a8bf66:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  a8bf6a:	0f 8e ed 00 00 00    	jle    0xa8c05d
  a8bf70:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  a8bf74:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  a8bf78:	8b fa                	mov    edi,edx
  a8bf7a:	0f af f9             	imul   edi,ecx
  a8bf7d:	03 ff                	add    edi,edi
  a8bf7f:	03 ff                	add    edi,edi
  a8bf81:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  a8bf85:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  a8bf89:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  a8bf90:	33 db                	xor    ebx,ebx
  a8bf92:	85 d2                	test   edx,edx
  a8bf94:	0f 8e a8 00 00 00    	jle    0xa8c042
  a8bf9a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  a8bf9e:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  a8bfa2:	33 f6                	xor    esi,esi
  a8bfa4:	85 c9                	test   ecx,ecx
  a8bfa6:	0f 8e 7c 00 00 00    	jle    0xa8c028
  a8bfac:	8b 7c 24 48          	mov    edi,DWORD PTR [esp+0x48]
  a8bfb0:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  a8bfb4:	51                   	push   ecx
  a8bfb5:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  a8bfb9:	8d 54 24 28          	lea    edx,[esp+0x28]
  a8bfbd:	52                   	push   edx
  a8bfbe:	56                   	push   esi
  a8bfbf:	53                   	push   ebx
  a8bfc0:	83 c1 64             	add    ecx,0x64
  a8bfc3:	e8 f8 70 22 00       	call   0xcb30c0
  a8bfc8:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  a8bfcc:	85 c0                	test   eax,eax
  a8bfce:	7e 40                	jle    0xa8c010
  a8bfd0:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  a8bfd4:	85 c9                	test   ecx,ecx
  a8bfd6:	7e 38                	jle    0xa8c010
  a8bfd8:	3b 44 24 38          	cmp    eax,DWORD PTR [esp+0x38]
  a8bfdc:	7d 32                	jge    0xa8c010
  a8bfde:	3b 4c 24 3c          	cmp    ecx,DWORD PTR [esp+0x3c]
  a8bfe2:	7d 2c                	jge    0xa8c010
  a8bfe4:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
  a8bfe8:	8b 12                	mov    edx,DWORD PTR [edx]
  a8bfea:	f3 0f 10 04 17       	movss  xmm0,DWORD PTR [edi+edx*1]
  a8bfef:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
  a8bff3:	f3 0f 58 42 34       	addss  xmm0,DWORD PTR [edx+0x34]
  a8bff8:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
  a8bffb:	0f af 54 24 2c       	imul   edx,DWORD PTR [esp+0x2c]
  a8c000:	03 d0                	add    edx,eax
  a8c002:	0f af 55 08          	imul   edx,DWORD PTR [ebp+0x8]
  a8c006:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  a8c009:	03 d1                	add    edx,ecx
  a8c00b:	f3 0f 11 04 90       	movss  DWORD PTR [eax+edx*4],xmm0
  a8c010:	83 c6 01             	add    esi,0x1
  a8c013:	83 c7 04             	add    edi,0x4
  a8c016:	3b 74 24 58          	cmp    esi,DWORD PTR [esp+0x58]
  a8c01a:	7c 94                	jl     0xa8bfb0
  a8c01c:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  a8c020:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  a8c024:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
  a8c028:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
  a8c02f:	01 44 24 48          	add    DWORD PTR [esp+0x48],eax
  a8c033:	83 c3 01             	add    ebx,0x1
  a8c036:	3b da                	cmp    ebx,edx
  a8c038:	0f 8c 64 ff ff ff    	jl     0xa8bfa2
  a8c03e:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  a8c042:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  a8c046:	01 7c 24 28          	add    DWORD PTR [esp+0x28],edi
  a8c04a:	83 c0 01             	add    eax,0x1
  a8c04d:	3b c6                	cmp    eax,esi
  a8c04f:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  a8c053:	0f 8c 37 ff ff ff    	jl     0xa8bf90
  a8c059:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  a8c05d:	5f                   	pop    edi
  a8c05e:	5e                   	pop    esi
  a8c05f:	5d                   	pop    ebp
  a8c060:	c6 81 20 02 00 00 01 	mov    BYTE PTR [ecx+0x220],0x1
  a8c067:	5b                   	pop    ebx
  a8c068:	83 c4 34             	add    esp,0x34
  a8c06b:	c2 14 00             	ret    0x14

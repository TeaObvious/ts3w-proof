# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00b6e9e0, 0x00b6ec1e).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_RebuildValidLotPuddleParts (analyst-assigned)
Entry: 0x00b6e9e0
Ghidra body envelope: 0x00b6e9e0..0x00b6ec1d inclusive
Envelope contains alignment gaps between Ghidra body ranges: 0x00b6e9e0..0x00b6ea54, 0x00b6ea60..0x00b6ec1d


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00b6e9e0 <.text+0x76d9e0>:
  b6e9e0:	83 ec 38             	sub    esp,0x38
  b6e9e3:	55                   	push   ebp
  b6e9e4:	8b e9                	mov    ebp,ecx
  b6e9e6:	68 00 80 00 00       	push   0x8000
  b6e9eb:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  b6e9f0:	e8 ab 53 9b ff       	call   0x523da0
  b6e9f5:	84 c0                	test   al,al
  b6e9f7:	0f 84 1c 02 00 00    	je     0xb6ec19
  b6e9fd:	80 7d 38 00          	cmp    BYTE PTR [ebp+0x38],0x0
  b6ea01:	75 07                	jne    0xb6ea0a
  b6ea03:	8b cd                	mov    ecx,ebp
  b6ea05:	e8 86 f9 ff ff       	call   0xb6e390
  b6ea0a:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  b6ea0d:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  b6ea10:	53                   	push   ebx
  b6ea11:	56                   	push   esi
  b6ea12:	8d 75 24             	lea    esi,[ebp+0x24]
  b6ea15:	50                   	push   eax
  b6ea16:	51                   	push   ecx
  b6ea17:	8b ce                	mov    ecx,esi
  b6ea19:	e8 22 48 ed ff       	call   0xa43240
  b6ea1e:	8b 16                	mov    edx,DWORD PTR [esi]
  b6ea20:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  b6ea23:	8b 45 34             	mov    eax,DWORD PTR [ebp+0x34]
  b6ea26:	bb 01 00 00 00       	mov    ebx,0x1
  b6ea2b:	39 98 08 04 00 00    	cmp    DWORD PTR [eax+0x408],ebx
  b6ea31:	75 0d                	jne    0xb6ea40
  b6ea33:	83 b8 0c 04 00 00 50 	cmp    DWORD PTR [eax+0x40c],0x50
  b6ea3a:	0f 84 d7 01 00 00    	je     0xb6ec17
  b6ea40:	57                   	push   edi
  b6ea41:	33 ff                	xor    edi,edi
  b6ea43:	39 b8 80 01 00 00    	cmp    DWORD PTR [eax+0x180],edi
  b6ea49:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  b6ea4d:	0f 8c c3 01 00 00    	jl     0xb6ec16
  b6ea53:	eb 12                	jmp    0xb6ea67
  b6ea55:	eb 09                	jmp    0xb6ea60
  b6ea57:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  b6ea5e:	8b ff                	mov    edi,edi
  b6ea60:	bb 01 00 00 00       	mov    ebx,0x1
  b6ea65:	33 ff                	xor    edi,edi
  b6ea67:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  b6ea6e:	00
  b6ea6f:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  b6ea72:	3b 4d 2c             	cmp    ecx,DWORD PTR [ebp+0x2c]
  b6ea75:	8d 75 24             	lea    esi,[ebp+0x24]
  b6ea78:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  b6ea7e:	f3 0f 10 05 88 fd 03 	movss  xmm0,DWORD PTR ds:0x103fd88
  b6ea85:	01
  b6ea86:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  b6ea8c:	c7 44 24 44 c0 fc 06 	mov    DWORD PTR [esp+0x44],0x106fcc0
  b6ea93:	01
  b6ea94:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  b6ea98:	c7 44 24 2c 00 d9 14 	mov    DWORD PTR [esp+0x2c],0x114d900
  b6ea9f:	01
  b6eaa0:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  b6eaa4:	89 7c 24 40          	mov    DWORD PTR [esp+0x40],edi
  b6eaa8:	73 16                	jae    0xb6eac0
  b6eaaa:	3b cf                	cmp    ecx,edi
  b6eaac:	8d 41 20             	lea    eax,[ecx+0x20]
  b6eaaf:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  b6eab2:	74 19                	je     0xb6eacd
  b6eab4:	8d 54 24 28          	lea    edx,[esp+0x28]
  b6eab8:	52                   	push   edx
  b6eab9:	e8 d2 2a f3 ff       	call   0xaa1590
  b6eabe:	eb 0d                	jmp    0xb6eacd
  b6eac0:	8d 44 24 28          	lea    eax,[esp+0x28]
  b6eac4:	50                   	push   eax
  b6eac5:	51                   	push   ecx
  b6eac6:	8b ce                	mov    ecx,esi
  b6eac8:	e8 93 5b f3 ff       	call   0xaa4660
  b6eacd:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  b6ead1:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  b6ead5:	51                   	push   ecx
  b6ead6:	52                   	push   edx
  b6ead7:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  b6eadb:	e8 30 19 f7 ff       	call   0xae0410
  b6eae0:	39 5c 24 30          	cmp    DWORD PTR [esp+0x30],ebx
  b6eae4:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  b6eae8:	76 0d                	jbe    0xb6eaf7
  b6eaea:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  b6eaee:	50                   	push   eax
  b6eaef:	e8 ec 59 97 ff       	call   0x4e44e0
  b6eaf4:	83 c4 04             	add    esp,0x4
  b6eaf7:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  b6eafb:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  b6eafe:	c1 e3 05             	shl    ebx,0x5
  b6eb01:	03 1e                	add    ebx,DWORD PTR [esi]
  b6eb03:	8b 37                	mov    esi,DWORD PTR [edi]
  b6eb05:	85 f6                	test   esi,esi
  b6eb07:	75 11                	jne    0xb6eb1a
  b6eb09:	83 c7 04             	add    edi,0x4
  b6eb0c:	39 37                	cmp    DWORD PTR [edi],esi
  b6eb0e:	75 08                	jne    0xb6eb18
  b6eb10:	83 c7 04             	add    edi,0x4
  b6eb13:	83 3f 00             	cmp    DWORD PTR [edi],0x0
  b6eb16:	74 f8                	je     0xb6eb10
  b6eb18:	8b 37                	mov    esi,DWORD PTR [edi]
  b6eb1a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  b6eb1d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  b6eb20:	3b 34 8a             	cmp    esi,DWORD PTR [edx+ecx*4]
  b6eb23:	0f 84 d3 00 00 00    	je     0xb6ebfc
  b6eb29:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  b6eb30:	8a 4e 02             	mov    cl,BYTE PTR [esi+0x2]
  b6eb33:	66 8b 06             	mov    ax,WORD PTR [esi]
  b6eb36:	8a 56 03             	mov    dl,BYTE PTR [esi+0x3]
  b6eb39:	88 4c 24 12          	mov    BYTE PTR [esp+0x12],cl
  b6eb3d:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b6eb41:	66 89 44 24 10       	mov    WORD PTR [esp+0x10],ax
  b6eb46:	8a 44 24 14          	mov    al,BYTE PTR [esp+0x14]
  b6eb4a:	51                   	push   ecx
  b6eb4b:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  b6eb4e:	88 54 24 17          	mov    BYTE PTR [esp+0x17],dl
  b6eb52:	88 44 24 16          	mov    BYTE PTR [esp+0x16],al
  b6eb56:	e8 75 da f4 ff       	call   0xabc5d0
  b6eb5b:	84 c0                	test   al,al
  b6eb5d:	74 7d                	je     0xb6ebdc
  b6eb5f:	8b 55 34             	mov    edx,DWORD PTR [ebp+0x34]
  b6eb62:	8b 8a 90 02 00 00    	mov    ecx,DWORD PTR [edx+0x290]
  b6eb68:	85 c9                	test   ecx,ecx
  b6eb6a:	74 19                	je     0xb6eb85
  b6eb6c:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  b6eb71:	7e 12                	jle    0xb6eb85
  b6eb73:	6a 01                	push   0x1
  b6eb75:	6a 0f                	push   0xf
  b6eb77:	8d 44 24 18          	lea    eax,[esp+0x18]
  b6eb7b:	50                   	push   eax
  b6eb7c:	e8 2f f5 f1 ff       	call   0xa8e0b0
  b6eb81:	84 c0                	test   al,al
  b6eb83:	74 57                	je     0xb6ebdc
  b6eb85:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  b6eb88:	8b 89 98 02 00 00    	mov    ecx,DWORD PTR [ecx+0x298]
  b6eb8e:	85 c9                	test   ecx,ecx
  b6eb90:	74 13                	je     0xb6eba5
  b6eb92:	6a 01                	push   0x1
  b6eb94:	6a 00                	push   0x0
  b6eb96:	8d 54 24 18          	lea    edx,[esp+0x18]
  b6eb9a:	52                   	push   edx
  b6eb9b:	e8 40 85 fd ff       	call   0xb470e0
  b6eba0:	66 85 c0             	test   ax,ax
  b6eba3:	75 37                	jne    0xb6ebdc
  b6eba5:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  b6ebaa:	75 15                	jne    0xb6ebc1
  b6ebac:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  b6ebaf:	8d 44 24 10          	lea    eax,[esp+0x10]
  b6ebb3:	50                   	push   eax
  b6ebb4:	51                   	push   ecx
  b6ebb5:	e8 76 13 f6 ff       	call   0xacff30
  b6ebba:	83 c4 08             	add    esp,0x8
  b6ebbd:	84 c0                	test   al,al
  b6ebbf:	74 1b                	je     0xb6ebdc
  b6ebc1:	c6 44 24 18 00       	mov    BYTE PTR [esp+0x18],0x0
  b6ebc6:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  b6ebca:	52                   	push   edx
  b6ebcb:	8d 44 24 14          	lea    eax,[esp+0x14]
  b6ebcf:	50                   	push   eax
  b6ebd0:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  b6ebd4:	51                   	push   ecx
  b6ebd5:	8b cb                	mov    ecx,ebx
  b6ebd7:	e8 84 75 ee ff       	call   0xa56160
  b6ebdc:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  b6ebdf:	85 f6                	test   esi,esi
  b6ebe1:	75 0a                	jne    0xb6ebed
  b6ebe3:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  b6ebe6:	83 c7 04             	add    edi,0x4
  b6ebe9:	85 f6                	test   esi,esi
  b6ebeb:	74 f6                	je     0xb6ebe3
  b6ebed:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  b6ebf0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  b6ebf3:	3b 34 90             	cmp    esi,DWORD PTR [eax+edx*4]
  b6ebf6:	0f 85 34 ff ff ff    	jne    0xb6eb30
  b6ebfc:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  b6ec00:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  b6ec03:	83 c0 01             	add    eax,0x1
  b6ec06:	3b 81 80 01 00 00    	cmp    eax,DWORD PTR [ecx+0x180]
  b6ec0c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  b6ec10:	0f 8e 4a fe ff ff    	jle    0xb6ea60
  b6ec16:	5f                   	pop    edi
  b6ec17:	5e                   	pop    esi
  b6ec18:	5b                   	pop    ebx
  b6ec19:	5d                   	pop    ebp
  b6ec1a:	83 c4 38             	add    esp,0x38
  b6ec1d:	c3                   	ret

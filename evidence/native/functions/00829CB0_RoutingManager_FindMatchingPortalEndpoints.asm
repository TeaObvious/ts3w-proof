# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00829cb0,0x00829e1d); analyst name RoutingManager_FindMatchingPortalEndpoints.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00829cb0 <.text+0x428cb0>:
  829cb0:	83 ec 30             	sub    esp,0x30
  829cb3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  829cb7:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  829cba:	53                   	push   ebx
  829cbb:	55                   	push   ebp
  829cbc:	8b 6c 24 44          	mov    ebp,DWORD PTR [esp+0x44]
  829cc0:	56                   	push   esi
  829cc1:	8b 74 24 54          	mov    esi,DWORD PTR [esp+0x54]
  829cc5:	89 16                	mov    DWORD PTR [esi],edx
  829cc7:	8b 10                	mov    edx,DWORD PTR [eax]
  829cc9:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  829ccc:	57                   	push   edi
  829ccd:	8b f9                	mov    edi,ecx
  829ccf:	32 c9                	xor    cl,cl
  829cd1:	88 4c 24 13          	mov    BYTE PTR [esp+0x13],cl
  829cd5:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  829cd9:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  829cdd:	8d 49 00             	lea    ecx,[ecx+0x0]
  829ce0:	3b 54 24 24          	cmp    edx,DWORD PTR [esp+0x24]
  829ce4:	0f 84 27 01 00 00    	je     0x829e11
  829cea:	8b 32                	mov    esi,DWORD PTR [edx]
  829cec:	85 f6                	test   esi,esi
  829cee:	0f 84 0a 01 00 00    	je     0x829dfe
  829cf4:	8b 8f 5c 09 00 00    	mov    ecx,DWORD PTR [edi+0x95c]
  829cfa:	56                   	push   esi
  829cfb:	e8 50 b3 df ff       	call   0x625050
  829d00:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  829d04:	51                   	push   ecx
  829d05:	8b 8f 5c 09 00 00    	mov    ecx,DWORD PTR [edi+0x95c]
  829d0b:	8d 56 14             	lea    edx,[esi+0x14]
  829d0e:	52                   	push   edx
  829d0f:	8a d8                	mov    bl,al
  829d11:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  829d15:	55                   	push   ebp
  829d16:	50                   	push   eax
  829d17:	e8 44 56 e0 ff       	call   0x62f360
  829d1c:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  829d20:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  829d24:	f3 0f 5c 44 24 28    	subss  xmm0,DWORD PTR [esp+0x28]
  829d2a:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  829d30:	f3 0f 10 05 fc 24 fc 00 	movss  xmm0,DWORD PTR ds:0xfc24fc
  829d38:	b9 ff ff ff 7f       	mov    ecx,0x7fffffff
  829d3d:	21 4c 24 44          	and    DWORD PTR [esp+0x44],ecx
  829d41:	0f 2f 44 24 44       	comiss xmm0,DWORD PTR [esp+0x44]
  829d46:	0f 86 ae 00 00 00    	jbe    0x829dfa
  829d4c:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  829d51:	f3 0f 5c 4c 24 2c    	subss  xmm1,DWORD PTR [esp+0x2c]
  829d57:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  829d5d:	21 4c 24 14          	and    DWORD PTR [esp+0x14],ecx
  829d61:	0f 2f 44 24 14       	comiss xmm0,DWORD PTR [esp+0x14]
  829d66:	0f 86 8e 00 00 00    	jbe    0x829dfa
  829d6c:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  829d6f:	3b 4c 24 30          	cmp    ecx,DWORD PTR [esp+0x30]
  829d73:	0f 85 81 00 00 00    	jne    0x829dfa
  829d79:	84 db                	test   bl,bl
  829d7b:	75 6e                	jne    0x829deb
  829d7d:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  829d81:	8b 8f 5c 09 00 00    	mov    ecx,DWORD PTR [edi+0x95c]
  829d87:	8d 54 24 34          	lea    edx,[esp+0x34]
  829d8b:	52                   	push   edx
  829d8c:	83 c6 20             	add    esi,0x20
  829d8f:	56                   	push   esi
  829d90:	55                   	push   ebp
  829d91:	50                   	push   eax
  829d92:	e8 c9 55 e0 ff       	call   0x62f360
  829d97:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  829d9b:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  829d9f:	f3 0f 5c 44 24 34    	subss  xmm0,DWORD PTR [esp+0x34]
  829da5:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  829dab:	81 64 24 18 ff ff ff 7f 	and    DWORD PTR [esp+0x18],0x7fffffff
  829db3:	f3 0f 10 05 fc 24 fc 00 	movss  xmm0,DWORD PTR ds:0xfc24fc
  829dbb:	0f 2f 44 24 18       	comiss xmm0,DWORD PTR [esp+0x18]
  829dc0:	76 38                	jbe    0x829dfa
  829dc2:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  829dc7:	f3 0f 5c 4c 24 38    	subss  xmm1,DWORD PTR [esp+0x38]
  829dcd:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  829dd3:	81 64 24 1c ff ff ff 7f 	and    DWORD PTR [esp+0x1c],0x7fffffff
  829ddb:	0f 2f 44 24 1c       	comiss xmm0,DWORD PTR [esp+0x1c]
  829de0:	76 18                	jbe    0x829dfa
  829de2:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  829de5:	3b 4c 24 3c          	cmp    ecx,DWORD PTR [esp+0x3c]
  829de9:	75 0f                	jne    0x829dfa
  829deb:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  829def:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  829df3:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  829df8:	89 10                	mov    DWORD PTR [eax],edx
  829dfa:	8a 4c 24 13          	mov    cl,BYTE PTR [esp+0x13]
  829dfe:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  829e02:	83 c2 04             	add    edx,0x4
  829e05:	84 c9                	test   cl,cl
  829e07:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  829e0b:	0f 84 cf fe ff ff    	je     0x829ce0
  829e11:	5f                   	pop    edi
  829e12:	5e                   	pop    esi
  829e13:	5d                   	pop    ebp
  829e14:	8a c1                	mov    al,cl
  829e16:	5b                   	pop    ebx
  829e17:	83 c4 30             	add    esp,0x30
  829e1a:	c2 18 00             	ret    0x18

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c21e20 <.text+0x820e20>:
  c21e20:	51                   	push   ecx
  c21e21:	55                   	push   ebp
  c21e22:	8b e9                	mov    ebp,ecx
  c21e24:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  c21e27:	2b 45 1c             	sub    eax,DWORD PTR [ebp+0x1c]
  c21e2a:	57                   	push   edi
  c21e2b:	8d 7d 1c             	lea    edi,[ebp+0x1c]
  c21e2e:	c1 f8 02             	sar    eax,0x2
  c21e31:	3d ff 00 00 00       	cmp    eax,0xff
  c21e36:	76 08                	jbe    0xc21e40
  c21e38:	5f                   	pop    edi
  c21e39:	32 c0                	xor    al,al
  c21e3b:	5d                   	pop    ebp
  c21e3c:	59                   	pop    ecx
  c21e3d:	c2 04 00             	ret    0x4
  c21e40:	53                   	push   ebx
  c21e41:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  c21e45:	8a 0b                	mov    cl,BYTE PTR [ebx]
  c21e47:	88 4c 24 14          	mov    BYTE PTR [esp+0x14],cl
  c21e4b:	56                   	push   esi
  c21e4c:	8d 64 24 00          	lea    esp,[esp+0x0]
  c21e50:	6a 00                	push   0x0
  c21e52:	6a 00                	push   0x0
  c21e54:	6a 00                	push   0x0
  c21e56:	6a 00                	push   0x0
  c21e58:	68 88 73 07 01       	push   0x1077388
  c21e5d:	6a 08                	push   0x8
  c21e5f:	e8 9c 26 8c ff       	call   0x4e4500
  c21e64:	8b f0                	mov    esi,eax
  c21e66:	83 c4 18             	add    esp,0x18
  c21e69:	85 f6                	test   esi,esi
  c21e6b:	74 73                	je     0xc21ee0
  c21e6d:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  c21e73:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
  c21e7a:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  c21e7d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  c21e80:	52                   	push   edx
  c21e81:	50                   	push   eax
  c21e82:	8b ce                	mov    ecx,esi
  c21e84:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  c21e88:	e8 53 f1 ff ff       	call   0xc20fe0
  c21e8d:	84 c0                	test   al,al
  c21e8f:	74 3f                	je     0xc21ed0
  c21e91:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  c21e94:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  c21e97:	73 0e                	jae    0xc21ea7
  c21e99:	85 c0                	test   eax,eax
  c21e9b:	8d 48 04             	lea    ecx,[eax+0x4]
  c21e9e:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  c21ea1:	74 11                	je     0xc21eb4
  c21ea3:	89 30                	mov    DWORD PTR [eax],esi
  c21ea5:	eb 0d                	jmp    0xc21eb4
  c21ea7:	8d 54 24 10          	lea    edx,[esp+0x10]
  c21eab:	52                   	push   edx
  c21eac:	50                   	push   eax
  c21ead:	8b cf                	mov    ecx,edi
  c21eaf:	e8 6c 05 d6 ff       	call   0x982420
  c21eb4:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  c21eb7:	2b 07                	sub    eax,DWORD PTR [edi]
  c21eb9:	c1 f8 02             	sar    eax,0x2
  c21ebc:	2c 01                	sub    al,0x1
  c21ebe:	3a 44 24 18          	cmp    al,BYTE PTR [esp+0x18]
  c21ec2:	88 03                	mov    BYTE PTR [ebx],al
  c21ec4:	72 8a                	jb     0xc21e50
  c21ec6:	5e                   	pop    esi
  c21ec7:	5b                   	pop    ebx
  c21ec8:	5f                   	pop    edi
  c21ec9:	b0 01                	mov    al,0x1
  c21ecb:	5d                   	pop    ebp
  c21ecc:	59                   	pop    ecx
  c21ecd:	c2 04 00             	ret    0x4
  c21ed0:	8b ce                	mov    ecx,esi
  c21ed2:	e8 f9 e5 ff ff       	call   0xc204d0
  c21ed7:	56                   	push   esi
  c21ed8:	e8 03 26 8c ff       	call   0x4e44e0
  c21edd:	83 c4 04             	add    esp,0x4
  c21ee0:	5e                   	pop    esi
  c21ee1:	5b                   	pop    ebx
  c21ee2:	5f                   	pop    edi
  c21ee3:	32 c0                	xor    al,al
  c21ee5:	5d                   	pop    ebp
  c21ee6:	59                   	pop    ecx
  c21ee7:	c2 04 00             	ret    0x4

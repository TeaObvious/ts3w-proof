# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00997a10,0x00997b8c); analyst name DownloadContent_MarshalSimContentPayload.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00997a10 <.text+0x596a10>:
  997a10:	83 ec 40             	sub    esp,0x40
  997a13:	53                   	push   ebx
  997a14:	56                   	push   esi
  997a15:	57                   	push   edi
  997a16:	c6 44 24 2c 00       	mov    BYTE PTR [esp+0x2c],0x0
  997a1b:	e8 70 19 dd ff       	call   0x769390
  997a20:	8b f0                	mov    esi,eax
  997a22:	33 db                	xor    ebx,ebx
  997a24:	33 ff                	xor    edi,edi
  997a26:	85 f6                	test   esi,esi
  997a28:	0f 84 44 01 00 00    	je     0x997b72
  997a2e:	8d 54 24 0c          	lea    edx,[esp+0xc]
  997a32:	52                   	push   edx
  997a33:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  997a37:	c7 44 24 10 4c a3 04 01 	mov    DWORD PTR [esp+0x10],0x104a34c
  997a3f:	e8 bc 1a e4 ff       	call   0x7d9500
  997a44:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  997a48:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  997a4c:	50                   	push   eax
  997a4d:	51                   	push   ecx
  997a4e:	56                   	push   esi
  997a4f:	e8 ec d4 ff ff       	call   0x994f40
  997a54:	83 c4 0c             	add    esp,0xc
  997a57:	84 c0                	test   al,al
  997a59:	0f 84 c1 00 00 00    	je     0x997b20
  997a5f:	8d 44 24 0c          	lea    eax,[esp+0xc]
  997a63:	50                   	push   eax
  997a64:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  997a68:	c7 44 24 10 14 a3 04 01 	mov    DWORD PTR [esp+0x10],0x104a314
  997a70:	e8 8b 1a e4 ff       	call   0x7d9500
  997a75:	8b 16                	mov    edx,DWORD PTR [esi]
  997a77:	8b 52 68             	mov    edx,DWORD PTR [edx+0x68]
  997a7a:	8d 44 24 0c          	lea    eax,[esp+0xc]
  997a7e:	50                   	push   eax
  997a7f:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  997a83:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  997a87:	51                   	push   ecx
  997a88:	50                   	push   eax
  997a89:	8b ce                	mov    ecx,esi
  997a8b:	ff d2                	call   edx
  997a8d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  997a91:	85 c0                	test   eax,eax
  997a93:	7e 17                	jle    0x997aac
  997a95:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  997a99:	51                   	push   ecx
  997a9a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  997a9e:	8d 14 c1             	lea    edx,[ecx+eax*8]
  997aa1:	52                   	push   edx
  997aa2:	51                   	push   ecx
  997aa3:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  997aa7:	e8 b4 74 e4 ff       	call   0x7def60
  997aac:	8b 06                	mov    eax,DWORD PTR [esi]
  997aae:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  997ab2:	51                   	push   ecx
  997ab3:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  997ab7:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  997abb:	52                   	push   edx
  997abc:	8b 50 70             	mov    edx,DWORD PTR [eax+0x70]
  997abf:	51                   	push   ecx
  997ac0:	8b ce                	mov    ecx,esi
  997ac2:	ff d2                	call   edx
  997ac4:	68 64 89 f8 04       	push   0x4f88964
  997ac9:	e8 02 eb 00 00       	call   0x9a65d0
  997ace:	8b f8                	mov    edi,eax
  997ad0:	83 c4 04             	add    esp,0x4
  997ad3:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  997ad7:	50                   	push   eax
  997ad8:	8b cf                	mov    ecx,edi
  997ada:	e8 71 02 01 00       	call   0x9a7d50
  997adf:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  997ae3:	51                   	push   ecx
  997ae4:	8b cf                	mov    ecx,edi
  997ae6:	e8 b5 0c 01 00       	call   0x9a87a0
  997aeb:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  997aef:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  997af3:	52                   	push   edx
  997af4:	50                   	push   eax
  997af5:	8b cf                	mov    ecx,edi
  997af7:	e8 b4 df 00 00       	call   0x9a5ab0
  997afc:	e8 5f b3 fe ff       	call   0x982e60
  997b01:	85 c0                	test   eax,eax
  997b03:	74 4b                	je     0x997b50
  997b05:	8b 98 64 06 00 00    	mov    ebx,DWORD PTR [eax+0x664]
  997b0b:	85 db                	test   ebx,ebx
  997b0d:	75 3c                	jne    0x997b4b
  997b0f:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  997b13:	85 c0                	test   eax,eax
  997b15:	74 09                	je     0x997b20
  997b17:	50                   	push   eax
  997b18:	e8 c3 c9 b4 ff       	call   0x4e44e0
  997b1d:	83 c4 04             	add    esp,0x4
  997b20:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  997b24:	85 c0                	test   eax,eax
  997b26:	74 09                	je     0x997b31
  997b28:	50                   	push   eax
  997b29:	e8 b2 c9 b4 ff       	call   0x4e44e0
  997b2e:	83 c4 04             	add    esp,0x4
  997b31:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  997b35:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  997b39:	89 10                	mov    DWORD PTR [eax],edx
  997b3b:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  997b3e:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  997b41:	89 78 0c             	mov    DWORD PTR [eax+0xc],edi
  997b44:	5f                   	pop    edi
  997b45:	5e                   	pop    esi
  997b46:	5b                   	pop    ebx
  997b47:	83 c4 40             	add    esp,0x40
  997b4a:	c3                   	ret
  997b4b:	c6 44 24 2c 01       	mov    BYTE PTR [esp+0x2c],0x1
  997b50:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  997b54:	85 c0                	test   eax,eax
  997b56:	74 09                	je     0x997b61
  997b58:	50                   	push   eax
  997b59:	e8 82 c9 b4 ff       	call   0x4e44e0
  997b5e:	83 c4 04             	add    esp,0x4
  997b61:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  997b65:	85 c0                	test   eax,eax
  997b67:	74 09                	je     0x997b72
  997b69:	50                   	push   eax
  997b6a:	e8 71 c9 b4 ff       	call   0x4e44e0
  997b6f:	83 c4 04             	add    esp,0x4
  997b72:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  997b76:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  997b7a:	89 08                	mov    DWORD PTR [eax],ecx
  997b7c:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  997b7f:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  997b82:	89 78 0c             	mov    DWORD PTR [eax+0xc],edi
  997b85:	5f                   	pop    edi
  997b86:	5e                   	pop    esi
  997b87:	5b                   	pop    ebx
  997b88:	83 c4 40             	add    esp,0x40
  997b8b:	c3                   	ret

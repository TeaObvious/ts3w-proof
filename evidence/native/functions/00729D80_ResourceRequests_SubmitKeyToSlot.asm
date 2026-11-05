# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00729d80 (ResourceRequests_SubmitKeyToSlot)
Complete body envelope: 0x00729d80..0x00729f8e (exclusive end)
Body ranges: [[00729d80, 00729f8d]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00729d80 <.text+0x328d80>:
  729d80:	83 ec 18             	sub    esp,0x18
  729d83:	53                   	push   ebx
  729d84:	55                   	push   ebp
  729d85:	56                   	push   esi
  729d86:	8b d9                	mov    ebx,ecx
  729d88:	57                   	push   edi
  729d89:	8d 7b 40             	lea    edi,[ebx+0x40]
  729d8c:	68 44 e3 ff 00       	push   0xffe344
  729d91:	8b cf                	mov    ecx,edi
  729d93:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  729d97:	e8 64 7e db ff       	call   0x4e1c00
  729d9c:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  729da0:	50                   	push   eax
  729da1:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  729da5:	51                   	push   ecx
  729da6:	e8 65 e5 0a 00       	call   0x7d8310
  729dab:	8b 6c 24 3c          	mov    ebp,DWORD PTR [esp+0x3c]
  729daf:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  729db2:	83 c4 08             	add    esp,0x8
  729db5:	85 d2                	test   edx,edx
  729db7:	74 0d                	je     0x729dc6
  729db9:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  729dbd:	50                   	push   eax
  729dbe:	55                   	push   ebp
  729dbf:	8b cb                	mov    ecx,ebx
  729dc1:	e8 0a e9 ff ff       	call   0x7286d0
  729dc6:	e8 b5 60 d8 ff       	call   0x4afe80
  729dcb:	8b 10                	mov    edx,DWORD PTR [eax]
  729dcd:	8b 52 58             	mov    edx,DWORD PTR [edx+0x58]
  729dd0:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  729dd4:	51                   	push   ecx
  729dd5:	8b c8                	mov    ecx,eax
  729dd7:	ff d2                	call   edx
  729dd9:	85 c0                	test   eax,eax
  729ddb:	74 6a                	je     0x729e47
  729ddd:	8b 10                	mov    edx,DWORD PTR [eax]
  729ddf:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
  729de2:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  729de6:	51                   	push   ecx
  729de7:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  729deb:	51                   	push   ecx
  729dec:	8b c8                	mov    ecx,eax
  729dee:	ff d2                	call   edx
  729df0:	84 c0                	test   al,al
  729df2:	74 53                	je     0x729e47
  729df4:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  729df8:	8b 01                	mov    eax,DWORD PTR [ecx]
  729dfa:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  729dfe:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  729e01:	52                   	push   edx
  729e02:	ff d0                	call   eax
  729e04:	8b f0                	mov    esi,eax
  729e06:	85 f6                	test   esi,esi
  729e08:	75 0b                	jne    0x729e15
  729e0a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  729e0e:	8b 11                	mov    edx,DWORD PTR [ecx]
  729e10:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  729e13:	ff d0                	call   eax
  729e15:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  729e19:	85 c9                	test   ecx,ecx
  729e1b:	89 75 00             	mov    DWORD PTR [ebp+0x0],esi
  729e1e:	74 11                	je     0x729e31
  729e20:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  729e24:	8b 11                	mov    edx,DWORD PTR [ecx]
  729e26:	8b 12                	mov    edx,DWORD PTR [edx]
  729e28:	56                   	push   esi
  729e29:	50                   	push   eax
  729e2a:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  729e2e:	50                   	push   eax
  729e2f:	ff d2                	call   edx
  729e31:	8b cf                	mov    ecx,edi
  729e33:	e8 88 7e db ff       	call   0x4e1cc0
  729e38:	5f                   	pop    edi
  729e39:	85 f6                	test   esi,esi
  729e3b:	5e                   	pop    esi
  729e3c:	5d                   	pop    ebp
  729e3d:	0f 95 c0             	setne  al
  729e40:	5b                   	pop    ebx
  729e41:	83 c4 18             	add    esp,0x18
  729e44:	c2 20 00             	ret    0x20
  729e47:	8b b3 98 03 00 00    	mov    esi,DWORD PTR [ebx+0x398]
  729e4d:	85 f6                	test   esi,esi
  729e4f:	8d bb 98 03 00 00    	lea    edi,[ebx+0x398]
  729e55:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  729e59:	75 11                	jne    0x729e6c
  729e5b:	8b cf                	mov    ecx,edi
  729e5d:	e8 4e d3 ff ff       	call   0x7271b0
  729e62:	8b f0                	mov    esi,eax
  729e64:	85 f6                	test   esi,esi
  729e66:	0f 84 9e 00 00 00    	je     0x729f0a
  729e6c:	8b 06                	mov    eax,DWORD PTR [esi]
  729e6e:	89 07                	mov    DWORD PTR [edi],eax
  729e70:	8d 7e 14             	lea    edi,[esi+0x14]
  729e73:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  729e79:	8b 0f                	mov    ecx,DWORD PTR [edi]
  729e7b:	85 c9                	test   ecx,ecx
  729e7d:	74 0b                	je     0x729e8a
  729e7f:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  729e85:	e8 c6 14 e7 ff       	call   0x59b350
  729e8a:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  729e8e:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729e92:	50                   	push   eax
  729e93:	6a 00                	push   0x0
  729e95:	51                   	push   ecx
  729e96:	57                   	push   edi
  729e97:	6a 00                	push   0x0
  729e99:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  729e9d:	52                   	push   edx
  729e9e:	8b cb                	mov    ecx,ebx
  729ea0:	e8 ab f8 ff ff       	call   0x729750
  729ea5:	85 c0                	test   eax,eax
  729ea7:	0f 85 8c 00 00 00    	jne    0x729f39
  729ead:	d9 ee                	fldz
  729eaf:	51                   	push   ecx
  729eb0:	d9 1c 24             	fstp   DWORD PTR [esp]
  729eb3:	c7 45 00 02 00 00 00 	mov    DWORD PTR [ebp+0x0],0x2
  729eba:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
  729ebe:	6a 03                	push   0x3
  729ec0:	55                   	push   ebp
  729ec1:	8b cb                	mov    ecx,ebx
  729ec3:	e8 e8 de ff ff       	call   0x727db0
  729ec8:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  729ecc:	85 c9                	test   ecx,ecx
  729ece:	74 0e                	je     0x729ede
  729ed0:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  729ed4:	8b 01                	mov    eax,DWORD PTR [ecx]
  729ed6:	8b 00                	mov    eax,DWORD PTR [eax]
  729ed8:	6a 00                	push   0x0
  729eda:	52                   	push   edx
  729edb:	55                   	push   ebp
  729edc:	ff d0                	call   eax
  729ede:	8b 3f                	mov    edi,DWORD PTR [edi]
  729ee0:	85 ff                	test   edi,edi
  729ee2:	74 07                	je     0x729eeb
  729ee4:	8b cf                	mov    ecx,edi
  729ee6:	e8 65 14 e7 ff       	call   0x59b350
  729eeb:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  729eef:	8b 08                	mov    ecx,DWORD PTR [eax]
  729ef1:	89 0e                	mov    DWORD PTR [esi],ecx
  729ef3:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  729ef7:	89 30                	mov    DWORD PTR [eax],esi
  729ef9:	e8 c2 7d db ff       	call   0x4e1cc0
  729efe:	5f                   	pop    edi
  729eff:	5e                   	pop    esi
  729f00:	5d                   	pop    ebp
  729f01:	32 c0                	xor    al,al
  729f03:	5b                   	pop    ebx
  729f04:	83 c4 18             	add    esp,0x18
  729f07:	c2 20 00             	ret    0x20
  729f0a:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  729f0e:	85 c9                	test   ecx,ecx
  729f10:	74 12                	je     0x729f24
  729f12:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  729f16:	8b 11                	mov    edx,DWORD PTR [ecx]
  729f18:	8b 12                	mov    edx,DWORD PTR [edx]
  729f1a:	6a 00                	push   0x0
  729f1c:	50                   	push   eax
  729f1d:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  729f21:	50                   	push   eax
  729f22:	ff d2                	call   edx
  729f24:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  729f28:	e8 93 7d db ff       	call   0x4e1cc0
  729f2d:	5f                   	pop    edi
  729f2e:	5e                   	pop    esi
  729f2f:	5d                   	pop    ebp
  729f30:	32 c0                	xor    al,al
  729f32:	5b                   	pop    ebx
  729f33:	83 c4 18             	add    esp,0x18
  729f36:	c2 20 00             	ret    0x20
  729f39:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  729f3d:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  729f41:	89 4e 18             	mov    DWORD PTR [esi+0x18],ecx
  729f44:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729f48:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  729f4b:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  729f4f:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  729f52:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  729f55:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  729f59:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  729f5c:	89 56 1c             	mov    DWORD PTR [esi+0x1c],edx
  729f5f:	8b 90 bc 00 00 00    	mov    edx,DWORD PTR [eax+0xbc]
  729f65:	05 b8 00 00 00       	add    eax,0xb8
  729f6a:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  729f6d:	89 06                	mov    DWORD PTR [esi],eax
  729f6f:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  729f72:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  729f75:	89 30                	mov    DWORD PTR [eax],esi
  729f77:	83 ce 01             	or     esi,0x1
  729f7a:	89 75 00             	mov    DWORD PTR [ebp+0x0],esi
  729f7d:	e8 3e 7d db ff       	call   0x4e1cc0
  729f82:	5f                   	pop    edi
  729f83:	5e                   	pop    esi
  729f84:	5d                   	pop    ebp
  729f85:	b0 01                	mov    al,0x1
  729f87:	5b                   	pop    ebx
  729f88:	83 c4 18             	add    esp,0x18
  729f8b:	c2 20 00             	ret    0x20

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0059d9b0 <.text+0x19c9b0>:
  59d9b0:	83 ec 38             	sub    esp,0x38
  59d9b3:	53                   	push   ebx
  59d9b4:	55                   	push   ebp
  59d9b5:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  59d9b9:	e8 c2 24 f1 ff       	call   0x4afe80
  59d9be:	8b e8                	mov    ebp,eax
  59d9c0:	33 db                	xor    ebx,ebx
  59d9c2:	3b eb                	cmp    ebp,ebx
  59d9c4:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  59d9c8:	0f 84 26 01 00 00    	je     0x59daf4
  59d9ce:	56                   	push   esi
  59d9cf:	8b 74 24 48          	mov    esi,DWORD PTR [esp+0x48]
  59d9d3:	8b 06                	mov    eax,DWORD PTR [esi]
  59d9d5:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
  59d9d8:	57                   	push   edi
  59d9d9:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  59d9dd:	51                   	push   ecx
  59d9de:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  59d9e2:	52                   	push   edx
  59d9e3:	8b ce                	mov    ecx,esi
  59d9e5:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  59d9e9:	89 5c 24 34          	mov    DWORD PTR [esp+0x34],ebx
  59d9ed:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
  59d9f1:	c7 44 24 3c 0c ec fd 	mov    DWORD PTR [esp+0x3c],0xfdec0c
  59d9f8:	00 
  59d9f9:	c7 44 24 28 b0 92 fd 	mov    DWORD PTR [esp+0x28],0xfd92b0
  59da00:	00 
  59da01:	c7 44 24 2c 70 83 a3 	mov    DWORD PTR [esp+0x2c],0xf3a38370
  59da08:	f3 
  59da09:	ff d0                	call   eax
  59da0b:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  59da0f:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  59da13:	3b c1                	cmp    eax,ecx
  59da15:	8b f8                	mov    edi,eax
  59da17:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  59da1b:	0f 84 bc 00 00 00    	je     0x59dadd
  59da21:	eb 04                	jmp    0x59da27
  59da23:	8b 74 24 4c          	mov    esi,DWORD PTR [esp+0x4c]
  59da27:	8b 0f                	mov    ecx,DWORD PTR [edi]
  59da29:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  59da2c:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  59da2f:	53                   	push   ebx
  59da30:	53                   	push   ebx
  59da31:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  59da35:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  59da38:	56                   	push   esi
  59da39:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  59da3d:	53                   	push   ebx
  59da3e:	89 4c 24 54          	mov    DWORD PTR [esp+0x54],ecx
  59da42:	8d 44 24 20          	lea    eax,[esp+0x20]
  59da46:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
  59da4a:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  59da4d:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  59da50:	50                   	push   eax
  59da51:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  59da55:	51                   	push   ecx
  59da56:	8b cd                	mov    ecx,ebp
  59da58:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  59da5c:	ff d2                	call   edx
  59da5e:	84 c0                	test   al,al
  59da60:	74 5b                	je     0x59dabd
  59da62:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  59da66:	3b cb                	cmp    ecx,ebx
  59da68:	0f 84 8e 00 00 00    	je     0x59dafc
  59da6e:	8b 01                	mov    eax,DWORD PTR [ecx]
  59da70:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  59da73:	68 1f 1a 99 15       	push   0x15991a1f
  59da78:	ff d2                	call   edx
  59da7a:	8b f0                	mov    esi,eax
  59da7c:	3b f3                	cmp    esi,ebx
  59da7e:	74 08                	je     0x59da88
  59da80:	8b 06                	mov    eax,DWORD PTR [esi]
  59da82:	8b 10                	mov    edx,DWORD PTR [eax]
  59da84:	8b ce                	mov    ecx,esi
  59da86:	ff d2                	call   edx
  59da88:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  59da8c:	8b 41 14             	mov    eax,DWORD PTR [ecx+0x14]
  59da8f:	83 c1 10             	add    ecx,0x10
  59da92:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  59da95:	8d 56 28             	lea    edx,[esi+0x28]
  59da98:	73 66                	jae    0x59db00
  59da9a:	3b c3                	cmp    eax,ebx
  59da9c:	8d 68 20             	lea    ebp,[eax+0x20]
  59da9f:	89 69 04             	mov    DWORD PTR [ecx+0x4],ebp
  59daa2:	74 08                	je     0x59daac
  59daa4:	52                   	push   edx
  59daa5:	8b c8                	mov    ecx,eax
  59daa7:	e8 04 d3 39 00       	call   0x93adb0
  59daac:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  59dab0:	3b f3                	cmp    esi,ebx
  59dab2:	74 09                	je     0x59dabd
  59dab4:	8b 06                	mov    eax,DWORD PTR [esi]
  59dab6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  59dab9:	8b ce                	mov    ecx,esi
  59dabb:	ff d2                	call   edx
  59dabd:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  59dac1:	3b cb                	cmp    ecx,ebx
  59dac3:	74 07                	je     0x59dacc
  59dac5:	8b 01                	mov    eax,DWORD PTR [ecx]
  59dac7:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  59daca:	ff d2                	call   edx
  59dacc:	83 c7 10             	add    edi,0x10
  59dacf:	3b 7c 24 1c          	cmp    edi,DWORD PTR [esp+0x1c]
  59dad3:	0f 85 4a ff ff ff    	jne    0x59da23
  59dad9:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  59dadd:	3b c3                	cmp    eax,ebx
  59dadf:	5f                   	pop    edi
  59dae0:	c7 44 24 1c cc 3c fb 	mov    DWORD PTR [esp+0x1c],0xfb3ccc
  59dae7:	00 
  59dae8:	5e                   	pop    esi
  59dae9:	74 09                	je     0x59daf4
  59daeb:	50                   	push   eax
  59daec:	e8 ef 69 f4 ff       	call   0x4e44e0
  59daf1:	83 c4 04             	add    esp,0x4
  59daf4:	5d                   	pop    ebp
  59daf5:	5b                   	pop    ebx
  59daf6:	83 c4 38             	add    esp,0x38
  59daf9:	c2 04 00             	ret    0x4
  59dafc:	33 f6                	xor    esi,esi
  59dafe:	eb 88                	jmp    0x59da88
  59db00:	52                   	push   edx
  59db01:	50                   	push   eax
  59db02:	e8 39 d7 39 00       	call   0x93b240
  59db07:	eb a7                	jmp    0x59dab0

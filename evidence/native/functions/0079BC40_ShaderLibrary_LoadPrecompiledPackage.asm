# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079bc40, 0x0079bf58); analyst name ShaderLibrary_LoadPrecompiledPackage.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079bc40 <.text+0x39ac40>:
  79bc40:	81 ec 9c 02 00 00    	sub    esp,0x29c
  79bc46:	55                   	push   ebp
  79bc47:	56                   	push   esi
  79bc48:	57                   	push   edi
  79bc49:	8b f9                	mov    edi,ecx
  79bc4b:	e8 40 f6 ff ff       	call   0x79b290
  79bc50:	8b f0                	mov    esi,eax
  79bc52:	83 fe 03             	cmp    esi,0x3
  79bc55:	77 0b                	ja     0x79bc62
  79bc57:	80 7f 48 00          	cmp    BYTE PTR [edi+0x48],0x0
  79bc5b:	74 05                	je     0x79bc62
  79bc5d:	be 02 00 00 00       	mov    esi,0x2
  79bc62:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  79bc65:	50                   	push   eax
  79bc66:	56                   	push   esi
  79bc67:	e8 64 3f 00 00       	call   0x79fbd0
  79bc6c:	83 c4 08             	add    esp,0x8
  79bc6f:	84 c0                	test   al,al
  79bc71:	74 05                	je     0x79bc78
  79bc73:	8b 77 40             	mov    esi,DWORD PTR [edi+0x40]
  79bc76:	eb 03                	jmp    0x79bc7b
  79bc78:	89 77 40             	mov    DWORD PTR [edi+0x40],esi
  79bc7b:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  79bc7e:	51                   	push   ecx
  79bc7f:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  79bc86:	e8 b5 fe d3 ff       	call   0x4dbb40
  79bc8b:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  79bc92:	e8 b9 f8 d3 ff       	call   0x4db550
  79bc97:	33 ed                	xor    ebp,ebp
  79bc99:	55                   	push   ebp
  79bc9a:	6a 01                	push   0x1
  79bc9c:	6a 06                	push   0x6
  79bc9e:	6a 01                	push   0x1
  79bca0:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  79bca7:	e8 e4 f9 d3 ff       	call   0x4db690
  79bcac:	84 c0                	test   al,al
  79bcae:	75 1a                	jne    0x79bcca
  79bcb0:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  79bcb7:	e8 e4 fe d3 ff       	call   0x4dbba0
  79bcbc:	5f                   	pop    edi
  79bcbd:	5e                   	pop    esi
  79bcbe:	32 c0                	xor    al,al
  79bcc0:	5d                   	pop    ebp
  79bcc1:	81 c4 9c 02 00 00    	add    esp,0x29c
  79bcc7:	c2 04 00             	ret    0x4
  79bcca:	55                   	push   ebp
  79bccb:	8d 94 24 84 00 00 00 	lea    edx,[esp+0x84]
  79bcd2:	52                   	push   edx
  79bcd3:	68 00 00 01 00       	push   0x10000
  79bcd8:	68 00 00 01 00       	push   0x10000
  79bcdd:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  79bce1:	e8 3a 2e d4 ff       	call   0x4deb20
  79bce6:	6a 01                	push   0x1
  79bce8:	8d 44 24 4c          	lea    eax,[esp+0x4c]
  79bcec:	50                   	push   eax
  79bced:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  79bcf1:	e8 ea d6 03 00       	call   0x7d93e0
  79bcf6:	55                   	push   ebp
  79bcf7:	55                   	push   ebp
  79bcf8:	55                   	push   ebp
  79bcf9:	55                   	push   ebp
  79bcfa:	68 5c 6b 01 01       	push   0x1016b5c
  79bcff:	6a 2c                	push   0x2c
  79bd01:	e8 fa 87 d4 ff       	call   0x4e4500
  79bd06:	83 c4 18             	add    esp,0x18
  79bd09:	3b c5                	cmp    eax,ebp
  79bd0b:	74 0d                	je     0x79bd1a
  79bd0d:	8b c8                	mov    ecx,eax
  79bd0f:	e8 3c 03 00 00       	call   0x79c050
  79bd14:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  79bd18:	eb 06                	jmp    0x79bd20
  79bd1a:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  79bd1e:	8b c5                	mov    eax,ebp
  79bd20:	80 bc 24 ac 02 00 00 00 	cmp    BYTE PTR [esp+0x2ac],0x0
  79bd28:	53                   	push   ebx
  79bd29:	8b d8                	mov    ebx,eax
  79bd2b:	75 07                	jne    0x79bd34
  79bd2d:	89 47 4c             	mov    DWORD PTR [edi+0x4c],eax
  79bd30:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  79bd34:	8b ce                	mov    ecx,esi
  79bd36:	bd 01 00 00 00       	mov    ebp,0x1
  79bd3b:	d3 e5                	shl    ebp,cl
  79bd3d:	8b cb                	mov    ecx,ebx
  79bd3f:	0b 6f 44             	or     ebp,DWORD PTR [edi+0x44]
  79bd42:	e8 69 03 00 00       	call   0x79c0b0
  79bd47:	84 c0                	test   al,al
  79bd49:	0f 84 c4 01 00 00    	je     0x79bf13
  79bd4f:	0f b6 4f 4a          	movzx  ecx,BYTE PTR [edi+0x4a]
  79bd53:	33 f6                	xor    esi,esi
  79bd55:	80 7f 49 00          	cmp    BYTE PTR [edi+0x49],0x0
  79bd59:	51                   	push   ecx
  79bd5a:	0f 94 c2             	sete   dl
  79bd5d:	56                   	push   esi
  79bd5e:	8d 44 24 30          	lea    eax,[esp+0x30]
  79bd62:	8b cb                	mov    ecx,ebx
  79bd64:	52                   	push   edx
  79bd65:	55                   	push   ebp
  79bd66:	50                   	push   eax
  79bd67:	e8 74 14 00 00       	call   0x79d1e0
  79bd6c:	84 c0                	test   al,al
  79bd6e:	0f 84 9f 01 00 00    	je     0x79bf13
  79bd74:	80 bc 24 b0 02 00 00 00 	cmp    BYTE PTR [esp+0x2b0],0x0
  79bd7c:	74 09                	je     0x79bd87
  79bd7e:	8b 4f 4c             	mov    ecx,DWORD PTR [edi+0x4c]
  79bd81:	53                   	push   ebx
  79bd82:	e8 99 09 00 00       	call   0x79c720
  79bd87:	8b 4f 4c             	mov    ecx,DWORD PTR [edi+0x4c]
  79bd8a:	e8 a1 02 00 00       	call   0x79c030
  79bd8f:	8b 4f 58             	mov    ecx,DWORD PTR [edi+0x58]
  79bd92:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
  79bd95:	8d 5f 50             	lea    ebx,[edi+0x50]
  79bd98:	51                   	push   ecx
  79bd99:	52                   	push   edx
  79bd9a:	8b cb                	mov    ecx,ebx
  79bd9c:	8b e8                	mov    ebp,eax
  79bd9e:	e8 0d d3 d3 ff       	call   0x4d90b0
  79bda3:	85 ed                	test   ebp,ebp
  79bda5:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
  79bda8:	76 42                	jbe    0x79bdec
  79bdaa:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  79bdb0:	8b 4f 4c             	mov    ecx,DWORD PTR [edi+0x4c]
  79bdb3:	56                   	push   esi
  79bdb4:	e8 87 02 00 00       	call   0x79c040
  79bdb9:	8b 08                	mov    ecx,DWORD PTR [eax]
  79bdbb:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  79bdbe:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  79bdc2:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  79bdc6:	c6 44 24 10 00       	mov    BYTE PTR [esp+0x10],0x0
  79bdcb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  79bdcf:	50                   	push   eax
  79bdd0:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  79bdd4:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  79bdd8:	51                   	push   ecx
  79bdd9:	8d 54 24 48          	lea    edx,[esp+0x48]
  79bddd:	52                   	push   edx
  79bdde:	8b cb                	mov    ecx,ebx
  79bde0:	e8 7b f8 ff ff       	call   0x79b660
  79bde5:	83 c6 01             	add    esi,0x1
  79bde8:	3b f5                	cmp    esi,ebp
  79bdea:	72 c4                	jb     0x79bdb0
  79bdec:	8b 4f 4c             	mov    ecx,DWORD PTR [edi+0x4c]
  79bdef:	e8 1c 02 00 00       	call   0x79c010
  79bdf4:	8b 4f 74             	mov    ecx,DWORD PTR [edi+0x74]
  79bdf7:	8d 6f 70             	lea    ebp,[edi+0x70]
  79bdfa:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  79bdfe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  79be01:	50                   	push   eax
  79be02:	51                   	push   ecx
  79be03:	8b cd                	mov    ecx,ebp
  79be05:	e8 d6 2d fa ff       	call   0x73ebe0
  79be0a:	33 f6                	xor    esi,esi
  79be0c:	39 74 24 10          	cmp    DWORD PTR [esp+0x10],esi
  79be10:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
  79be13:	76 38                	jbe    0x79be4d
  79be15:	8b 4f 4c             	mov    ecx,DWORD PTR [edi+0x4c]
  79be18:	56                   	push   esi
  79be19:	e8 02 02 00 00       	call   0x79c020
  79be1e:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  79be21:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  79be25:	c6 44 24 24 00       	mov    BYTE PTR [esp+0x24],0x0
  79be2a:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  79be2e:	50                   	push   eax
  79be2f:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  79be33:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  79be37:	51                   	push   ecx
  79be38:	8d 54 24 48          	lea    edx,[esp+0x48]
  79be3c:	52                   	push   edx
  79be3d:	8b cd                	mov    ecx,ebp
  79be3f:	e8 2c 84 05 00       	call   0x7f4270
  79be44:	83 c6 01             	add    esi,0x1
  79be47:	3b 74 24 10          	cmp    esi,DWORD PTR [esp+0x10]
  79be4b:	72 c8                	jb     0x79be15
  79be4d:	80 7f 4a 00          	cmp    BYTE PTR [edi+0x4a],0x0
  79be51:	75 7b                	jne    0x79bece
  79be53:	80 7f 49 00          	cmp    BYTE PTR [edi+0x49],0x0
  79be57:	74 0a                	je     0x79be63
  79be59:	c7 44 24 10 00 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  79be61:	eb 09                	jmp    0x79be6c
  79be63:	8b 47 4c             	mov    eax,DWORD PTR [edi+0x4c]
  79be66:	8b 08                	mov    ecx,DWORD PTR [eax]
  79be68:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  79be6c:	8b 6f 54             	mov    ebp,DWORD PTR [edi+0x54]
  79be6f:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
  79be72:	85 f6                	test   esi,esi
  79be74:	75 16                	jne    0x79be8c
  79be76:	83 c5 04             	add    ebp,0x4
  79be79:	39 75 00             	cmp    DWORD PTR [ebp+0x0],esi
  79be7c:	75 0b                	jne    0x79be89
  79be7e:	8b ff                	mov    edi,edi
  79be80:	83 c5 04             	add    ebp,0x4
  79be83:	83 7d 00 00          	cmp    DWORD PTR [ebp+0x0],0x0
  79be87:	74 f7                	je     0x79be80
  79be89:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
  79be8c:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  79be8f:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  79be92:	8b 1c 90             	mov    ebx,DWORD PTR [eax+edx*4]
  79be95:	3b f3                	cmp    esi,ebx
  79be97:	74 35                	je     0x79bece
  79be99:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  79bea0:	8b 4f 4c             	mov    ecx,DWORD PTR [edi+0x4c]
  79bea3:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  79bea6:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  79beaa:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  79bead:	52                   	push   edx
  79beae:	50                   	push   eax
  79beaf:	e8 8c ea ff ff       	call   0x79a940
  79beb4:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  79beb7:	85 f6                	test   esi,esi
  79beb9:	75 0f                	jne    0x79beca
  79bebb:	eb 03                	jmp    0x79bec0
  79bebd:	8d 49 00             	lea    ecx,[ecx+0x0]
  79bec0:	8b 75 04             	mov    esi,DWORD PTR [ebp+0x4]
  79bec3:	83 c5 04             	add    ebp,0x4
  79bec6:	85 f6                	test   esi,esi
  79bec8:	74 f6                	je     0x79bec0
  79beca:	3b f3                	cmp    esi,ebx
  79becc:	75 d2                	jne    0x79bea0
  79bece:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  79bed2:	85 f6                	test   esi,esi
  79bed4:	74 10                	je     0x79bee6
  79bed6:	8b ce                	mov    ecx,esi
  79bed8:	e8 a3 01 00 00       	call   0x79c080
  79bedd:	56                   	push   esi
  79bede:	e8 fd 85 d4 ff       	call   0x4e44e0
  79bee3:	83 c4 04             	add    esp,0x4
  79bee6:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  79beea:	e8 a1 ba 03 00       	call   0x7d7990
  79beef:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  79bef3:	e8 98 2c d4 ff       	call   0x4deb90
  79bef8:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  79beff:	e8 9c fc d3 ff       	call   0x4dbba0
  79bf04:	5b                   	pop    ebx
  79bf05:	5f                   	pop    edi
  79bf06:	5e                   	pop    esi
  79bf07:	b0 01                	mov    al,0x1
  79bf09:	5d                   	pop    ebp
  79bf0a:	81 c4 9c 02 00 00    	add    esp,0x29c
  79bf10:	c2 04 00             	ret    0x4
  79bf13:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  79bf17:	85 f6                	test   esi,esi
  79bf19:	74 10                	je     0x79bf2b
  79bf1b:	8b ce                	mov    ecx,esi
  79bf1d:	e8 5e 01 00 00       	call   0x79c080
  79bf22:	56                   	push   esi
  79bf23:	e8 b8 85 d4 ff       	call   0x4e44e0
  79bf28:	83 c4 04             	add    esp,0x4
  79bf2b:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  79bf2f:	e8 5c ba 03 00       	call   0x7d7990
  79bf34:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  79bf38:	e8 53 2c d4 ff       	call   0x4deb90
  79bf3d:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  79bf44:	e8 57 fc d3 ff       	call   0x4dbba0
  79bf49:	5b                   	pop    ebx
  79bf4a:	5f                   	pop    edi
  79bf4b:	5e                   	pop    esi
  79bf4c:	32 c0                	xor    al,al
  79bf4e:	5d                   	pop    ebp
  79bf4f:	81 c4 9c 02 00 00    	add    esp,0x29c
  79bf55:	c2 04 00             	ret    0x4

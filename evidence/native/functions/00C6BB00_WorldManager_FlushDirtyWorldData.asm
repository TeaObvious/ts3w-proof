# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c6bb00..00c6bef9; WorldManager_FlushDirtyWorldData
  c6bb00:	55                   	push   ebp
  c6bb01:	8b ec                	mov    ebp,esp
  c6bb03:	83 e4 f0             	and    esp,0xfffffff0
  c6bb06:	83 ec 74             	sub    esp,0x74
  c6bb09:	53                   	push   ebx
  c6bb0a:	8b d9                	mov    ebx,ecx
  c6bb0c:	80 7b 46 00          	cmp    BYTE PTR [ebx+0x46],0x0
  c6bb10:	56                   	push   esi
  c6bb11:	57                   	push   edi
  c6bb12:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  c6bb16:	75 0b                	jne    0xc6bb23
  c6bb18:	b0 01                	mov    al,0x1
  c6bb1a:	5f                   	pop    edi
  c6bb1b:	5e                   	pop    esi
  c6bb1c:	5b                   	pop    ebx
  c6bb1d:	8b e5                	mov    esp,ebp
  c6bb1f:	5d                   	pop    ebp
  c6bb20:	c2 08 00             	ret    0x8
  c6bb23:	8b 43 54             	mov    eax,DWORD PTR [ebx+0x54]
  c6bb26:	85 c0                	test   eax,eax
  c6bb28:	74 0b                	je     0xc6bb35
  c6bb2a:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
  c6bb2e:	0f 95 44 24 11       	setne  BYTE PTR [esp+0x11]
  c6bb33:	eb 05                	jmp    0xc6bb3a
  c6bb35:	c6 44 24 11 00       	mov    BYTE PTR [esp+0x11],0x0
  c6bb3a:	80 7c 24 11 00       	cmp    BYTE PTR [esp+0x11],0x0
  c6bb3f:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  c6bb44:	75 1e                	jne    0xc6bb64
  c6bb46:	6a 00                	push   0x0
  c6bb48:	e8 23 78 ff ff       	call   0xc63370
  c6bb4d:	8b 43 54             	mov    eax,DWORD PTR [ebx+0x54]
  c6bb50:	85 c0                	test   eax,eax
  c6bb52:	74 0b                	je     0xc6bb5f
  c6bb54:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
  c6bb58:	0f 95 44 24 12       	setne  BYTE PTR [esp+0x12]
  c6bb5d:	eb 05                	jmp    0xc6bb64
  c6bb5f:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  c6bb64:	80 bb cc 01 00 00 00 	cmp    BYTE PTR [ebx+0x1cc],0x0
  c6bb6b:	74 07                	je     0xc6bb74
  c6bb6d:	8b cb                	mov    ecx,ebx
  c6bb6f:	e8 4c c9 ff ff       	call   0xc684c0
  c6bb74:	8b 83 f4 01 00 00    	mov    eax,DWORD PTR [ebx+0x1f4]
  c6bb7a:	8b 93 f8 01 00 00    	mov    edx,DWORD PTR [ebx+0x1f8]
  c6bb80:	3b c2                	cmp    eax,edx
  c6bb82:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c6bb86:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  c6bb8a:	74 51                	je     0xc6bbdd
  c6bb8c:	8b 08                	mov    ecx,DWORD PTR [eax]
  c6bb8e:	85 c9                	test   ecx,ecx
  c6bb90:	74 40                	je     0xc6bbd2
  c6bb92:	80 b9 bc 04 00 00 00 	cmp    BYTE PTR [ecx+0x4bc],0x0
  c6bb99:	75 37                	jne    0xc6bbd2
  c6bb9b:	8b 81 78 01 00 00    	mov    eax,DWORD PTR [ecx+0x178]
  c6bba1:	8b 91 74 01 00 00    	mov    edx,DWORD PTR [ecx+0x174]
  c6bba7:	8b 71 48             	mov    esi,DWORD PTR [ecx+0x48]
  c6bbaa:	8b 79 4c             	mov    edi,DWORD PTR [ecx+0x4c]
  c6bbad:	8b 5b 54             	mov    ebx,DWORD PTR [ebx+0x54]
  c6bbb0:	50                   	push   eax
  c6bbb1:	52                   	push   edx
  c6bbb2:	8d 44 24 68          	lea    eax,[esp+0x68]
  c6bbb6:	50                   	push   eax
  c6bbb7:	e8 a4 57 e4 ff       	call   0xab1360
  c6bbbc:	50                   	push   eax
  c6bbbd:	57                   	push   edi
  c6bbbe:	56                   	push   esi
  c6bbbf:	8b cb                	mov    ecx,ebx
  c6bbc1:	e8 ca fd fb ff       	call   0xc2b990
  c6bbc6:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  c6bbca:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c6bbce:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  c6bbd2:	83 c0 04             	add    eax,0x4
  c6bbd5:	3b c2                	cmp    eax,edx
  c6bbd7:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c6bbdb:	75 af                	jne    0xc6bb8c
  c6bbdd:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  c6bbe0:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  c6bbe3:	8b 4b 54             	mov    ecx,DWORD PTR [ebx+0x54]
  c6bbe6:	52                   	push   edx
  c6bbe7:	57                   	push   edi
  c6bbe8:	e8 a3 dd fb ff       	call   0xc29990
  c6bbed:	24 01                	and    al,0x1
  c6bbef:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
  c6bbf3:	0f 84 e7 01 00 00    	je     0xc6bde0
  c6bbf9:	e8 f2 d0 bb ff       	call   0x828cf0
  c6bbfe:	8b f0                	mov    esi,eax
  c6bc00:	33 c0                	xor    eax,eax
  c6bc02:	3b f0                	cmp    esi,eax
  c6bc04:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  c6bc08:	8b d1                	mov    edx,ecx
  c6bc0a:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  c6bc0e:	89 4c 24 64          	mov    DWORD PTR [esp+0x64],ecx
  c6bc12:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c6bc16:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  c6bc1a:	89 54 24 68          	mov    DWORD PTR [esp+0x68],edx
  c6bc1e:	8b d1                	mov    edx,ecx
  c6bc20:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  c6bc24:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  c6bc28:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  c6bc2c:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  c6bc30:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  c6bc34:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  c6bc38:	c7 44 24 78 f4 a9 07 01 	mov    DWORD PTR [esp+0x78],0x107a9f4
  c6bc40:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  c6bc44:	88 44 24 70          	mov    BYTE PTR [esp+0x70],al
  c6bc48:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  c6bc4c:	c7 44 24 54 d4 a9 07 01 	mov    DWORD PTR [esp+0x54],0x107a9d4
  c6bc54:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  c6bc58:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
  c6bc5c:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  c6bc60:	88 44 24 4c          	mov    BYTE PTR [esp+0x4c],al
  c6bc64:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  c6bc68:	74 60                	je     0xc6bcca
  c6bc6a:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  c6bc6e:	50                   	push   eax
  c6bc6f:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  c6bc73:	51                   	push   ecx
  c6bc74:	8d 53 48             	lea    edx,[ebx+0x48]
  c6bc77:	52                   	push   edx
  c6bc78:	8b ce                	mov    ecx,esi
  c6bc7a:	e8 c1 fe bb ff       	call   0x82bb40
  c6bc7f:	84 c0                	test   al,al
  c6bc81:	74 47                	je     0xc6bcca
  c6bc83:	80 be 7c 09 00 00 00 	cmp    BYTE PTR [esi+0x97c],0x0
  c6bc8a:	74 3e                	je     0xc6bcca
  c6bc8c:	8d 44 24 60          	lea    eax,[esp+0x60]
  c6bc90:	50                   	push   eax
  c6bc91:	8b ce                	mov    ecx,esi
  c6bc93:	e8 68 88 bc ff       	call   0x834500
  c6bc98:	53                   	push   ebx
  c6bc99:	8b ce                	mov    ecx,esi
  c6bc9b:	e8 60 8e bc ff       	call   0x834b00
  c6bca0:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  c6bca3:	51                   	push   ecx
  c6bca4:	57                   	push   edi
  c6bca5:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  c6bca9:	e8 72 bc b6 ff       	call   0x7d7920
  c6bcae:	8d 54 24 20          	lea    edx,[esp+0x20]
  c6bcb2:	52                   	push   edx
  c6bcb3:	8b ce                	mov    ecx,esi
  c6bcb5:	e8 36 d1 bb ff       	call   0x828df0
  c6bcba:	8b ce                	mov    ecx,esi
  c6bcbc:	e8 7f d9 bb ff       	call   0x829640
  c6bcc1:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  c6bcc5:	e8 c6 bc b6 ff       	call   0x7d7990
  c6bcca:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  c6bcce:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c6bcd2:	3b c1                	cmp    eax,ecx
  c6bcd4:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c6bcd8:	74 62                	je     0xc6bd3c
  c6bcda:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  c6bcde:	8b 7a 10             	mov    edi,DWORD PTR [edx+0x10]
  c6bce1:	85 ff                	test   edi,edi
  c6bce3:	74 3b                	je     0xc6bd20
  c6bce5:	8b 4f 4c             	mov    ecx,DWORD PTR [edi+0x4c]
  c6bce8:	8b 47 48             	mov    eax,DWORD PTR [edi+0x48]
  c6bceb:	51                   	push   ecx
  c6bcec:	50                   	push   eax
  c6bced:	8b ce                	mov    ecx,esi
  c6bcef:	e8 cc d8 bb ff       	call   0x8295c0
  c6bcf4:	8b c8                	mov    ecx,eax
  c6bcf6:	e8 65 d6 9b ff       	call   0x629360
  c6bcfb:	84 c0                	test   al,al
  c6bcfd:	75 0a                	jne    0xc6bd09
  c6bcff:	6a 01                	push   0x1
  c6bd01:	57                   	push   edi
  c6bd02:	8b ce                	mov    ecx,esi
  c6bd04:	e8 47 8f bc ff       	call   0x834c50
  c6bd09:	57                   	push   edi
  c6bd0a:	8b ce                	mov    ecx,esi
  c6bd0c:	e8 af 09 bc ff       	call   0x82c6c0
  c6bd11:	8b 47 4c             	mov    eax,DWORD PTR [edi+0x4c]
  c6bd14:	8b 4f 48             	mov    ecx,DWORD PTR [edi+0x48]
  c6bd17:	50                   	push   eax
  c6bd18:	51                   	push   ecx
  c6bd19:	8b ce                	mov    ecx,esi
  c6bd1b:	e8 f0 f4 bb ff       	call   0x82b210
  c6bd20:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  c6bd24:	52                   	push   edx
  c6bd25:	e8 06 53 87 ff       	call   0x4e1030
  c6bd2a:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c6bd2e:	83 c4 04             	add    esp,0x4
  c6bd31:	3b c1                	cmp    eax,ecx
  c6bd33:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c6bd37:	75 a1                	jne    0xc6bcda
  c6bd39:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  c6bd3c:	8b 74 24 48          	mov    esi,DWORD PTR [esp+0x48]
  c6bd40:	85 f6                	test   esi,esi
  c6bd42:	74 21                	je     0xc6bd65
  c6bd44:	8b 16                	mov    edx,DWORD PTR [esi]
  c6bd46:	52                   	push   edx
  c6bd47:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c6bd4b:	e8 60 5c c4 ff       	call   0x8b19b0
  c6bd50:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  c6bd53:	56                   	push   esi
  c6bd54:	e8 87 87 87 ff       	call   0x4e44e0
  c6bd59:	83 c4 04             	add    esp,0x4
  c6bd5c:	85 ff                	test   edi,edi
  c6bd5e:	8b f7                	mov    esi,edi
  c6bd60:	75 e2                	jne    0xc6bd44
  c6bd62:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  c6bd65:	8b 74 24 6c          	mov    esi,DWORD PTR [esp+0x6c]
  c6bd69:	85 f6                	test   esi,esi
  c6bd6b:	74 24                	je     0xc6bd91
  c6bd6d:	8d 49 00             	lea    ecx,[ecx+0x0]
  c6bd70:	8b 06                	mov    eax,DWORD PTR [esi]
  c6bd72:	50                   	push   eax
  c6bd73:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  c6bd77:	e8 34 5c c4 ff       	call   0x8b19b0
  c6bd7c:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  c6bd7f:	56                   	push   esi
  c6bd80:	e8 5b 87 87 ff       	call   0x4e44e0
  c6bd85:	83 c4 04             	add    esp,0x4
  c6bd88:	85 ff                	test   edi,edi
  c6bd8a:	8b f7                	mov    esi,edi
  c6bd8c:	75 e2                	jne    0xc6bd70
  c6bd8e:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  c6bd91:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  c6bd94:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  c6bd98:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  c6bd9c:	c7 44 24 60 00 58 fe 00 	mov    DWORD PTR [esp+0x60],0xfe5800
  c6bda4:	33 d2                	xor    edx,edx
  c6bda6:	8d 44 24 64          	lea    eax,[esp+0x64]
  c6bdaa:	87 10                	xchg   DWORD PTR [eax],edx
  c6bdac:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  c6bdb0:	6a 00                	push   0x0
  c6bdb2:	89 4c 24 78          	mov    DWORD PTR [esp+0x78],ecx
  c6bdb6:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  c6bdba:	6a 00                	push   0x0
  c6bdbc:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  c6bdc0:	c7 44 24 68 44 a1 07 01 	mov    DWORD PTR [esp+0x68],0x107a144
  c6bdc8:	89 5c 24 74          	mov    DWORD PTR [esp+0x74],ebx
  c6bdcc:	c7 44 24 78 10 00 c6 00 	mov    DWORD PTR [esp+0x78],0xc60010
  c6bdd4:	89 94 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edx
  c6bddb:	e8 30 dd b6 ff       	call   0x7d9b10
  c6bde0:	e8 9b 40 84 ff       	call   0x4afe80
  c6bde5:	8b f0                	mov    esi,eax
  c6bde7:	85 f6                	test   esi,esi
  c6bde9:	0f 84 8a 00 00 00    	je     0xc6be79
  c6bdef:	57                   	push   edi
  c6bdf0:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c6bdf4:	e8 b7 8e ff ff       	call   0xc64cb0
  c6bdf9:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  c6bdfd:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  c6be01:	c7 44 24 1c 00 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  c6be09:	c7 44 24 60 00 58 fe 00 	mov    DWORD PTR [esp+0x60],0xfe5800
  c6be11:	33 c9                	xor    ecx,ecx
  c6be13:	8d 54 24 64          	lea    edx,[esp+0x64]
  c6be17:	87 0a                	xchg   DWORD PTR [edx],ecx
  c6be19:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  c6be1d:	6a 00                	push   0x0
  c6be1f:	8d 44 24 20          	lea    eax,[esp+0x20]
  c6be23:	89 4c 24 7c          	mov    DWORD PTR [esp+0x7c],ecx
  c6be27:	6a 00                	push   0x0
  c6be29:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  c6be2d:	c7 44 24 68 44 a1 07 01 	mov    DWORD PTR [esp+0x68],0x107a144
  c6be35:	89 74 24 74          	mov    DWORD PTR [esp+0x74],esi
  c6be39:	c7 44 24 78 40 fc c5 00 	mov    DWORD PTR [esp+0x78],0xc5fc40
  c6be41:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
  c6be45:	e8 c6 dc b6 ff       	call   0x7d9b10
  c6be4a:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  c6be4e:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  c6be52:	52                   	push   edx
  c6be53:	50                   	push   eax
  c6be54:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  c6be58:	e8 43 47 ec ff       	call   0xb305a0
  c6be5d:	83 7c 24 48 01       	cmp    DWORD PTR [esp+0x48],0x1
  c6be62:	c7 44 24 4c 00 00 00 00 	mov    DWORD PTR [esp+0x4c],0x0
  c6be6a:	76 0d                	jbe    0xc6be79
  c6be6c:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  c6be70:	51                   	push   ecx
  c6be71:	e8 6a 86 87 ff       	call   0x4e44e0
  c6be76:	83 c4 04             	add    esp,0x4
  c6be79:	39 bb 84 00 00 00    	cmp    DWORD PTR [ebx+0x84],edi
  c6be7f:	74 2e                	je     0xc6beaf
  c6be81:	6a 05                	push   0x5
  c6be83:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c6be87:	c7 44 24 24 cc 98 07 01 	mov    DWORD PTR [esp+0x24],0x10798cc
  c6be8f:	e8 3c 6c fb ff       	call   0xc22ad0
  c6be94:	8b 83 84 00 00 00    	mov    eax,DWORD PTR [ebx+0x84]
  c6be9a:	6a 00                	push   0x0
  c6be9c:	6a 00                	push   0x0
  c6be9e:	6a 00                	push   0x0
  c6bea0:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  c6bea4:	52                   	push   edx
  c6bea5:	57                   	push   edi
  c6bea6:	50                   	push   eax
  c6bea7:	e8 84 d2 b6 ff       	call   0x7d9130
  c6beac:	83 c4 18             	add    esp,0x18
  c6beaf:	8d 7b 48             	lea    edi,[ebx+0x48]
  c6beb2:	c6 43 46 00          	mov    BYTE PTR [ebx+0x46],0x0
  c6beb6:	8b 37                	mov    esi,DWORD PTR [edi]
  c6beb8:	3b f7                	cmp    esi,edi
  c6beba:	74 15                	je     0xc6bed1
  c6bebc:	8d 64 24 00          	lea    esp,[esp+0x0]
  c6bec0:	8b c6                	mov    eax,esi
  c6bec2:	8b 36                	mov    esi,DWORD PTR [esi]
  c6bec4:	50                   	push   eax
  c6bec5:	e8 16 86 87 ff       	call   0x4e44e0
  c6beca:	83 c4 04             	add    esp,0x4
  c6becd:	3b f7                	cmp    esi,edi
  c6becf:	75 ef                	jne    0xc6bec0
  c6bed1:	80 7c 24 11 00       	cmp    BYTE PTR [esp+0x11],0x0
  c6bed6:	89 3f                	mov    DWORD PTR [edi],edi
  c6bed8:	89 7f 04             	mov    DWORD PTR [edi+0x4],edi
  c6bedb:	75 10                	jne    0xc6beed
  c6bedd:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  c6bee2:	74 09                	je     0xc6beed
  c6bee4:	6a 00                	push   0x0
  c6bee6:	8b cb                	mov    ecx,ebx
  c6bee8:	e8 23 75 ff ff       	call   0xc63410
  c6beed:	8a 44 24 13          	mov    al,BYTE PTR [esp+0x13]
  c6bef1:	5f                   	pop    edi
  c6bef2:	5e                   	pop    esi
  c6bef3:	5b                   	pop    ebx
  c6bef4:	8b e5                	mov    esp,ebp
  c6bef6:	5d                   	pop    ebp
  c6bef7:	c2 08 00             	ret    0x8

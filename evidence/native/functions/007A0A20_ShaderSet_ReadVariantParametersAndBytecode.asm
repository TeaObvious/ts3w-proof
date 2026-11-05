# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007a0a20, 0x007a0cd3); analyst name ShaderSet_ReadVariantParametersAndBytecode.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a0a20 <.text+0x39fa20>:
  7a0a20:	81 ec 58 08 00 00    	sub    esp,0x858
  7a0a26:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  7a0a2e:	53                   	push   ebx
  7a0a2f:	55                   	push   ebp
  7a0a30:	8b ac 24 68 08 00 00 	mov    ebp,DWORD PTR [esp+0x868]
  7a0a37:	57                   	push   edi
  7a0a38:	8b bc 24 68 08 00 00 	mov    edi,DWORD PTR [esp+0x868]
  7a0a3f:	55                   	push   ebp
  7a0a40:	8d 44 24 10          	lea    eax,[esp+0x10]
  7a0a44:	50                   	push   eax
  7a0a45:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  7a0a4b:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  7a0a53:	57                   	push   edi
  7a0a54:	8b d9                	mov    ebx,ecx
  7a0a56:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  7a0a5c:	e8 1f cf d3 ff       	call   0x4dd980
  7a0a61:	83 c4 0c             	add    esp,0xc
  7a0a64:	84 c0                	test   al,al
  7a0a66:	75 0c                	jne    0x7a0a74
  7a0a68:	5f                   	pop    edi
  7a0a69:	5d                   	pop    ebp
  7a0a6a:	5b                   	pop    ebx
  7a0a6b:	81 c4 58 08 00 00    	add    esp,0x858
  7a0a71:	c2 0c 00             	ret    0xc
  7a0a74:	83 7c 24 0c ff       	cmp    DWORD PTR [esp+0xc],0xffffffff
  7a0a79:	56                   	push   esi
  7a0a7a:	0f 84 44 02 00 00    	je     0x7a0cc4
  7a0a80:	8b 73 4c             	mov    esi,DWORD PTR [ebx+0x4c]
  7a0a83:	85 f6                	test   esi,esi
  7a0a85:	74 21                	je     0x7a0aa8
  7a0a87:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7a0a8a:	8b 16                	mov    edx,DWORD PTR [esi]
  7a0a8c:	51                   	push   ecx
  7a0a8d:	52                   	push   edx
  7a0a8e:	8b ce                	mov    ecx,esi
  7a0a90:	e8 2b f9 ff ff       	call   0x7a03c0
  7a0a95:	8b 06                	mov    eax,DWORD PTR [esi]
  7a0a97:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  7a0a9a:	8b 43 4c             	mov    eax,DWORD PTR [ebx+0x4c]
  7a0a9d:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  7a0aa0:	83 c0 10             	add    eax,0x10
  7a0aa3:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  7a0aa6:	eb 31                	jmp    0x7a0ad9
  7a0aa8:	6a 00                	push   0x0
  7a0aaa:	6a 00                	push   0x0
  7a0aac:	6a 00                	push   0x0
  7a0aae:	6a 00                	push   0x0
  7a0ab0:	68 24 6e 01 01       	push   0x1016e24
  7a0ab5:	6a 50                	push   0x50
  7a0ab7:	e8 44 3a d4 ff       	call   0x4e4500
  7a0abc:	83 c4 18             	add    esp,0x18
  7a0abf:	85 c0                	test   eax,eax
  7a0ac1:	74 09                	je     0x7a0acc
  7a0ac3:	8b c8                	mov    ecx,eax
  7a0ac5:	e8 c6 fb ff ff       	call   0x7a0690
  7a0aca:	eb 02                	jmp    0x7a0ace
  7a0acc:	33 c0                	xor    eax,eax
  7a0ace:	85 c0                	test   eax,eax
  7a0ad0:	89 43 4c             	mov    DWORD PTR [ebx+0x4c],eax
  7a0ad3:	0f 84 dc 01 00 00    	je     0x7a0cb5
  7a0ad9:	6a 00                	push   0x0
  7a0adb:	68 ff 03 00 00       	push   0x3ff
  7a0ae0:	8d 54 24 70          	lea    edx,[esp+0x70]
  7a0ae4:	52                   	push   edx
  7a0ae5:	57                   	push   edi
  7a0ae6:	e8 05 d1 d3 ff       	call   0x4ddbf0
  7a0aeb:	83 c4 10             	add    esp,0x10
  7a0aee:	83 f8 ff             	cmp    eax,0xffffffff
  7a0af1:	0f 84 be 01 00 00    	je     0x7a0cb5
  7a0af7:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  7a0afa:	8d 44 24 68          	lea    eax,[esp+0x68]
  7a0afe:	50                   	push   eax
  7a0aff:	83 c1 20             	add    ecx,0x20
  7a0b02:	e8 49 84 c6 ff       	call   0x408f50
  7a0b07:	6a 00                	push   0x0
  7a0b09:	68 ff 03 00 00       	push   0x3ff
  7a0b0e:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  7a0b12:	51                   	push   ecx
  7a0b13:	57                   	push   edi
  7a0b14:	e8 d7 d0 d3 ff       	call   0x4ddbf0
  7a0b19:	83 c4 10             	add    esp,0x10
  7a0b1c:	83 f8 ff             	cmp    eax,0xffffffff
  7a0b1f:	0f 84 90 01 00 00    	je     0x7a0cb5
  7a0b25:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  7a0b28:	8d 54 24 68          	lea    edx,[esp+0x68]
  7a0b2c:	52                   	push   edx
  7a0b2d:	83 c1 30             	add    ecx,0x30
  7a0b30:	e8 1b 84 c6 ff       	call   0x408f50
  7a0b35:	6a 00                	push   0x0
  7a0b37:	68 ff 03 00 00       	push   0x3ff
  7a0b3c:	8d 44 24 70          	lea    eax,[esp+0x70]
  7a0b40:	50                   	push   eax
  7a0b41:	57                   	push   edi
  7a0b42:	e8 a9 d0 d3 ff       	call   0x4ddbf0
  7a0b47:	83 c4 10             	add    esp,0x10
  7a0b4a:	83 f8 ff             	cmp    eax,0xffffffff
  7a0b4d:	0f 84 62 01 00 00    	je     0x7a0cb5
  7a0b53:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  7a0b57:	51                   	push   ecx
  7a0b58:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  7a0b5b:	83 c1 40             	add    ecx,0x40
  7a0b5e:	e8 ed 83 c6 ff       	call   0x408f50
  7a0b63:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  7a0b67:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  7a0b6a:	52                   	push   edx
  7a0b6b:	e8 70 fc ff ff       	call   0x7a07e0
  7a0b70:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  7a0b73:	e8 08 f7 ff ff       	call   0x7a0280
  7a0b78:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7a0b7c:	3b c1                	cmp    eax,ecx
  7a0b7e:	0f 82 31 01 00 00    	jb     0x7a0cb5
  7a0b84:	33 f6                	xor    esi,esi
  7a0b86:	85 c9                	test   ecx,ecx
  7a0b88:	0f 86 db 00 00 00    	jbe    0x7a0c69
  7a0b8e:	8b ff                	mov    edi,edi
  7a0b90:	55                   	push   ebp
  7a0b91:	8d 44 24 24          	lea    eax,[esp+0x24]
  7a0b95:	50                   	push   eax
  7a0b96:	57                   	push   edi
  7a0b97:	e8 e4 cd d3 ff       	call   0x4dd980
  7a0b9c:	83 c4 0c             	add    esp,0xc
  7a0b9f:	84 c0                	test   al,al
  7a0ba1:	0f 84 0e 01 00 00    	je     0x7a0cb5
  7a0ba7:	55                   	push   ebp
  7a0ba8:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  7a0bac:	51                   	push   ecx
  7a0bad:	57                   	push   edi
  7a0bae:	e8 cd cd d3 ff       	call   0x4dd980
  7a0bb3:	83 c4 0c             	add    esp,0xc
  7a0bb6:	84 c0                	test   al,al
  7a0bb8:	0f 84 f7 00 00 00    	je     0x7a0cb5
  7a0bbe:	55                   	push   ebp
  7a0bbf:	8d 54 24 28          	lea    edx,[esp+0x28]
  7a0bc3:	52                   	push   edx
  7a0bc4:	57                   	push   edi
  7a0bc5:	e8 b6 cd d3 ff       	call   0x4dd980
  7a0bca:	83 c4 0c             	add    esp,0xc
  7a0bcd:	84 c0                	test   al,al
  7a0bcf:	0f 84 e0 00 00 00    	je     0x7a0cb5
  7a0bd5:	83 bc 24 74 08 00 00 02 	cmp    DWORD PTR [esp+0x874],0x2
  7a0bdd:	72 2e                	jb     0x7a0c0d
  7a0bdf:	55                   	push   ebp
  7a0be0:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  7a0be4:	50                   	push   eax
  7a0be5:	57                   	push   edi
  7a0be6:	e8 95 cd d3 ff       	call   0x4dd980
  7a0beb:	83 c4 0c             	add    esp,0xc
  7a0bee:	84 c0                	test   al,al
  7a0bf0:	0f 84 bf 00 00 00    	je     0x7a0cb5
  7a0bf6:	55                   	push   ebp
  7a0bf7:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  7a0bfb:	51                   	push   ecx
  7a0bfc:	57                   	push   edi
  7a0bfd:	e8 7e cd d3 ff       	call   0x4dd980
  7a0c02:	83 c4 0c             	add    esp,0xc
  7a0c05:	84 c0                	test   al,al
  7a0c07:	0f 84 a8 00 00 00    	je     0x7a0cb5
  7a0c0d:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  7a0c11:	e8 aa f6 ff ff       	call   0x7a02c0
  7a0c16:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  7a0c1a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  7a0c1e:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  7a0c24:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  7a0c28:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  7a0c2c:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  7a0c30:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
  7a0c34:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  7a0c37:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  7a0c3d:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  7a0c43:	52                   	push   edx
  7a0c44:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  7a0c48:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  7a0c4e:	e8 9d fd ff ff       	call   0x7a09f0
  7a0c53:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  7a0c57:	e8 d4 f6 ff ff       	call   0x7a0330
  7a0c5c:	83 c6 01             	add    esi,0x1
  7a0c5f:	3b 74 24 10          	cmp    esi,DWORD PTR [esp+0x10]
  7a0c63:	0f 82 27 ff ff ff    	jb     0x7a0b90
  7a0c69:	55                   	push   ebp
  7a0c6a:	8d 44 24 18          	lea    eax,[esp+0x18]
  7a0c6e:	50                   	push   eax
  7a0c6f:	57                   	push   edi
  7a0c70:	e8 0b cd d3 ff       	call   0x4dd980
  7a0c75:	83 c4 0c             	add    esp,0xc
  7a0c78:	84 c0                	test   al,al
  7a0c7a:	74 39                	je     0x7a0cb5
  7a0c7c:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  7a0c80:	85 c0                	test   eax,eax
  7a0c82:	76 40                	jbe    0x7a0cc4
  7a0c84:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  7a0c87:	50                   	push   eax
  7a0c88:	83 c1 10             	add    ecx,0x10
  7a0c8b:	e8 90 21 c7 ff       	call   0x412e20
  7a0c90:	8b 5b 4c             	mov    ebx,DWORD PTR [ebx+0x4c]
  7a0c93:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
  7a0c96:	2b 4b 10             	sub    ecx,DWORD PTR [ebx+0x10]
  7a0c99:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  7a0c9d:	3b c8                	cmp    ecx,eax
  7a0c9f:	72 14                	jb     0x7a0cb5
  7a0ca1:	8b 5b 10             	mov    ebx,DWORD PTR [ebx+0x10]
  7a0ca4:	8b 17                	mov    edx,DWORD PTR [edi]
  7a0ca6:	50                   	push   eax
  7a0ca7:	8b 42 30             	mov    eax,DWORD PTR [edx+0x30]
  7a0caa:	53                   	push   ebx
  7a0cab:	8b cf                	mov    ecx,edi
  7a0cad:	ff d0                	call   eax
  7a0caf:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
  7a0cb3:	74 0f                	je     0x7a0cc4
  7a0cb5:	5e                   	pop    esi
  7a0cb6:	5f                   	pop    edi
  7a0cb7:	5d                   	pop    ebp
  7a0cb8:	32 c0                	xor    al,al
  7a0cba:	5b                   	pop    ebx
  7a0cbb:	81 c4 58 08 00 00    	add    esp,0x858
  7a0cc1:	c2 0c 00             	ret    0xc
  7a0cc4:	5e                   	pop    esi
  7a0cc5:	5f                   	pop    edi
  7a0cc6:	5d                   	pop    ebp
  7a0cc7:	b0 01                	mov    al,0x1
  7a0cc9:	5b                   	pop    ebx
  7a0cca:	81 c4 58 08 00 00    	add    esp,0x858
  7a0cd0:	c2 0c 00             	ret    0xc

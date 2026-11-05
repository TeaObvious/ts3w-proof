# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x006cada0, 0x006cae68); analyst name MaterialShaderBinding_Initialize.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

006cada0 <.text+0x2c9da0>:
  6cada0:	53                   	push   ebx
  6cada1:	56                   	push   esi
  6cada2:	57                   	push   edi
  6cada3:	8b f1                	mov    esi,ecx
  6cada5:	e8 f6 f4 ff ff       	call   0x6ca2a0
  6cadaa:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  6cadae:	8b cb                	mov    ecx,ebx
  6cadb0:	e8 4b 3f 56 00       	call   0xc2ed00
  6cadb5:	8b f8                	mov    edi,eax
  6cadb7:	85 ff                	test   edi,edi
  6cadb9:	74 68                	je     0x6cae23
  6cadbb:	55                   	push   ebp
  6cadbc:	8b 2d 3c 85 1d 01    	mov    ebp,DWORD PTR ds:0x11d853c
  6cadc2:	6a 00                	push   0x0
  6cadc4:	8d 44 24 18          	lea    eax,[esp+0x18]
  6cadc8:	50                   	push   eax
  6cadc9:	57                   	push   edi
  6cadca:	8b cd                	mov    ecx,ebp
  6cadcc:	e8 8f 07 0d 00       	call   0x79b560
  6cadd1:	84 c0                	test   al,al
  6cadd3:	74 3e                	je     0x6cae13
  6cadd5:	8b 4e 44             	mov    ecx,DWORD PTR [esi+0x44]
  6cadd8:	85 c9                	test   ecx,ecx
  6cadda:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  6cadde:	74 07                	je     0x6cade7
  6cade0:	8b 11                	mov    edx,DWORD PTR [ecx]
  6cade2:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6cade5:	ff d0                	call   eax
  6cade7:	85 ff                	test   edi,edi
  6cade9:	74 08                	je     0x6cadf3
  6cadeb:	8b 17                	mov    edx,DWORD PTR [edi]
  6caded:	8b 02                	mov    eax,DWORD PTR [edx]
  6cadef:	8b cf                	mov    ecx,edi
  6cadf1:	ff d0                	call   eax
  6cadf3:	6a 00                	push   0x0
  6cadf5:	6a 00                	push   0x0
  6cadf7:	6a 00                	push   0x0
  6cadf9:	8b ce                	mov    ecx,esi
  6cadfb:	89 7e 44             	mov    DWORD PTR [esi+0x44],edi
  6cadfe:	e8 dd fe ff ff       	call   0x6cace0
  6cae03:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6cae07:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  6cae0a:	8b 11                	mov    edx,DWORD PTR [ecx]
  6cae0c:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6cae0f:	ff d0                	call   eax
  6cae11:	eb 0f                	jmp    0x6cae22
  6cae13:	6a 01                	push   0x1
  6cae15:	6a 00                	push   0x0
  6cae17:	57                   	push   edi
  6cae18:	8b cd                	mov    ecx,ebp
  6cae1a:	e8 41 0d 0d 00       	call   0x79bb60
  6cae1f:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  6cae22:	5d                   	pop    ebp
  6cae23:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6cae27:	51                   	push   ecx
  6cae28:	6a 00                	push   0x0
  6cae2a:	8b cb                	mov    ecx,ebx
  6cae2c:	e8 5f 74 e7 ff       	call   0x542290
  6cae31:	50                   	push   eax
  6cae32:	8b cb                	mov    ecx,ebx
  6cae34:	e8 f7 42 fc ff       	call   0x68f130
  6cae39:	50                   	push   eax
  6cae3a:	8b ce                	mov    ecx,esi
  6cae3c:	e8 1f f7 ff ff       	call   0x6ca560
  6cae41:	84 c0                	test   al,al
  6cae43:	75 06                	jne    0x6cae4b
  6cae45:	5f                   	pop    edi
  6cae46:	5e                   	pop    esi
  6cae47:	5b                   	pop    ebx
  6cae48:	c2 08 00             	ret    0x8
  6cae4b:	8b cb                	mov    ecx,ebx
  6cae4d:	e8 1e 12 ea ff       	call   0x56c070
  6cae52:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  6cae55:	89 5e 54             	mov    DWORD PTR [esi+0x54],ebx
  6cae58:	8b 13                	mov    edx,DWORD PTR [ebx]
  6cae5a:	8b 02                	mov    eax,DWORD PTR [edx]
  6cae5c:	8b cb                	mov    ecx,ebx
  6cae5e:	ff d0                	call   eax
  6cae60:	5f                   	pop    edi
  6cae61:	5e                   	pop    esi
  6cae62:	b0 01                	mov    al,0x1
  6cae64:	5b                   	pop    ebx
  6cae65:	c2 08 00             	ret    0x8

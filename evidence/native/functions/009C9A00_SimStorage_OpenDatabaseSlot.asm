# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009c9a00,0x009c9b59); analyst name SimStorage_OpenDatabaseSlot.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c9a00 <.text+0x5c8a00>:
  9c9a00:	83 ec 14             	sub    esp,0x14
  9c9a03:	53                   	push   ebx
  9c9a04:	57                   	push   edi
  9c9a05:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
  9c9a09:	8b 1f                	mov    ebx,DWORD PTR [edi]
  9c9a0b:	53                   	push   ebx
  9c9a0c:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  9c9a10:	e8 2b 36 b1 ff       	call   0x4dd040
  9c9a15:	83 c4 04             	add    esp,0x4
  9c9a18:	84 c0                	test   al,al
  9c9a1a:	75 08                	jne    0x9c9a24
  9c9a1c:	5f                   	pop    edi
  9c9a1d:	5b                   	pop    ebx
  9c9a1e:	83 c4 14             	add    esp,0x14
  9c9a21:	c2 08 00             	ret    0x8
  9c9a24:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  9c9a28:	85 c0                	test   eax,eax
  9c9a2a:	55                   	push   ebp
  9c9a2b:	56                   	push   esi
  9c9a2c:	bd 54 8e 1c 01       	mov    ebp,0x11c8e54
  9c9a31:	be 56 8e 1c 01       	mov    esi,0x11c8e56
  9c9a36:	c7 44 24 20 98 17 05 01 	mov    DWORD PTR [esp+0x20],0x1051798
  9c9a3e:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  9c9a42:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  9c9a46:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  9c9a4a:	74 4b                	je     0x9c9a97
  9c9a4c:	50                   	push   eax
  9c9a4d:	53                   	push   ebx
  9c9a4e:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  9c9a52:	68 68 b7 01 01       	push   0x101b768
  9c9a57:	50                   	push   eax
  9c9a58:	e8 e3 4d a4 ff       	call   0x40e840
  9c9a5d:	6a 00                	push   0x0
  9c9a5f:	6a 00                	push   0x0
  9c9a61:	6a 00                	push   0x0
  9c9a63:	6a 00                	push   0x0
  9c9a65:	68 10 16 05 01       	push   0x1051610
  9c9a6a:	68 98 03 00 00       	push   0x398
  9c9a6f:	e8 ec ac b1 ff       	call   0x4e4760
  9c9a74:	8b 6c 24 3c          	mov    ebp,DWORD PTR [esp+0x3c]
  9c9a78:	83 c4 28             	add    esp,0x28
  9c9a7b:	85 c0                	test   eax,eax
  9c9a7d:	74 10                	je     0x9c9a8f
  9c9a7f:	6a 00                	push   0x0
  9c9a81:	55                   	push   ebp
  9c9a82:	8b c8                	mov    ecx,eax
  9c9a84:	e8 07 f8 ad ff       	call   0x4a9290
  9c9a89:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  9c9a8d:	eb 3f                	jmp    0x9c9ace
  9c9a8f:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  9c9a93:	33 c0                	xor    eax,eax
  9c9a95:	eb 37                	jmp    0x9c9ace
  9c9a97:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  9c9a9a:	3b 4f 14             	cmp    ecx,DWORD PTR [edi+0x14]
  9c9a9d:	74 32                	je     0x9c9ad1
  9c9a9f:	6a 00                	push   0x0
  9c9aa1:	6a 00                	push   0x0
  9c9aa3:	6a 00                	push   0x0
  9c9aa5:	6a 00                	push   0x0
  9c9aa7:	68 10 16 05 01       	push   0x1051610
  9c9aac:	68 98 03 00 00       	push   0x398
  9c9ab1:	e8 aa ac b1 ff       	call   0x4e4760
  9c9ab6:	83 c4 18             	add    esp,0x18
  9c9ab9:	85 c0                	test   eax,eax
  9c9abb:	74 0f                	je     0x9c9acc
  9c9abd:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
  9c9ac0:	6a 00                	push   0x0
  9c9ac2:	52                   	push   edx
  9c9ac3:	8b c8                	mov    ecx,eax
  9c9ac5:	e8 c6 f7 ad ff       	call   0x4a9290
  9c9aca:	eb 02                	jmp    0x9c9ace
  9c9acc:	33 c0                	xor    eax,eax
  9c9ace:	89 47 30             	mov    DWORD PTR [edi+0x30],eax
  9c9ad1:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  9c9ad4:	85 c0                	test   eax,eax
  9c9ad6:	74 2c                	je     0x9c9b04
  9c9ad8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9c9adb:	8d 48 04             	lea    ecx,[eax+0x4]
  9c9ade:	8b 02                	mov    eax,DWORD PTR [edx]
  9c9ae0:	ff d0                	call   eax
  9c9ae2:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
  9c9ae5:	8b 11                	mov    edx,DWORD PTR [ecx]
  9c9ae7:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9c9aea:	ff d0                	call   eax
  9c9aec:	84 c0                	test   al,al
  9c9aee:	74 14                	je     0x9c9b04
  9c9af0:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
  9c9af3:	8b 11                	mov    edx,DWORD PTR [ecx]
  9c9af5:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  9c9af8:	6a 00                	push   0x0
  9c9afa:	6a 02                	push   0x2
  9c9afc:	6a 03                	push   0x3
  9c9afe:	ff d0                	call   eax
  9c9b00:	84 c0                	test   al,al
  9c9b02:	75 23                	jne    0x9c9b27
  9c9b04:	2b f5                	sub    esi,ebp
  9c9b06:	83 e6 fe             	and    esi,0xfffffffe
  9c9b09:	83 fe 02             	cmp    esi,0x2
  9c9b0c:	7e 0d                	jle    0x9c9b1b
  9c9b0e:	85 ed                	test   ebp,ebp
  9c9b10:	74 09                	je     0x9c9b1b
  9c9b12:	55                   	push   ebp
  9c9b13:	e8 c8 a9 b1 ff       	call   0x4e44e0
  9c9b18:	83 c4 04             	add    esp,0x4
  9c9b1b:	5e                   	pop    esi
  9c9b1c:	5d                   	pop    ebp
  9c9b1d:	5f                   	pop    edi
  9c9b1e:	32 c0                	xor    al,al
  9c9b20:	5b                   	pop    ebx
  9c9b21:	83 c4 14             	add    esp,0x14
  9c9b24:	c2 08 00             	ret    0x8
  9c9b27:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
  9c9b2a:	51                   	push   ecx
  9c9b2b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9c9b2f:	e8 ac ef ff ff       	call   0x9c8ae0
  9c9b34:	2b f5                	sub    esi,ebp
  9c9b36:	83 e6 fe             	and    esi,0xfffffffe
  9c9b39:	83 fe 02             	cmp    esi,0x2
  9c9b3c:	8a d8                	mov    bl,al
  9c9b3e:	7e 0d                	jle    0x9c9b4d
  9c9b40:	85 ed                	test   ebp,ebp
  9c9b42:	74 09                	je     0x9c9b4d
  9c9b44:	55                   	push   ebp
  9c9b45:	e8 96 a9 b1 ff       	call   0x4e44e0
  9c9b4a:	83 c4 04             	add    esp,0x4
  9c9b4d:	5e                   	pop    esi
  9c9b4e:	5d                   	pop    ebp
  9c9b4f:	5f                   	pop    edi
  9c9b50:	8a c3                	mov    al,bl
  9c9b52:	5b                   	pop    ebx
  9c9b53:	83 c4 14             	add    esp,0x14
  9c9b56:	c2 08 00             	ret    0x8

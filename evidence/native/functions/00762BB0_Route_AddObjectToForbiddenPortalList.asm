# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00762bb0,0x00762c41); analyst name Route_AddObjectToForbiddenPortalList.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00762bb0 <.text+0x361bb0>:
  762bb0:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  762bb6:	85 c9                	test   ecx,ecx
  762bb8:	0f 84 82 00 00 00    	je     0x762c40
  762bbe:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  762bc2:	57                   	push   edi
  762bc3:	50                   	push   eax
  762bc4:	e8 e7 88 fe ff       	call   0x74b4b0
  762bc9:	8b f8                	mov    edi,eax
  762bcb:	85 ff                	test   edi,edi
  762bcd:	74 70                	je     0x762c3f
  762bcf:	8b 17                	mov    edx,DWORD PTR [edi]
  762bd1:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  762bd4:	53                   	push   ebx
  762bd5:	56                   	push   esi
  762bd6:	8b cf                	mov    ecx,edi
  762bd8:	ff d0                	call   eax
  762bda:	8d 8f 58 01 00 00    	lea    ecx,[edi+0x158]
  762be0:	e8 5b 99 0b 00       	call   0x81c540
  762be5:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  762be8:	8b 10                	mov    edx,DWORD PTR [eax]
  762bea:	3b d6                	cmp    edx,esi
  762bec:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  762bf0:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  762bf4:	74 1a                	je     0x762c10
  762bf6:	55                   	push   ebp
  762bf7:	8b 2a                	mov    ebp,DWORD PTR [edx]
  762bf9:	3b eb                	cmp    ebp,ebx
  762bfb:	75 07                	jne    0x762c04
  762bfd:	8b 6a 04             	mov    ebp,DWORD PTR [edx+0x4]
  762c00:	3b e9                	cmp    ebp,ecx
  762c02:	74 07                	je     0x762c0b
  762c04:	83 c2 08             	add    edx,0x8
  762c07:	3b d6                	cmp    edx,esi
  762c09:	75 ec                	jne    0x762bf7
  762c0b:	3b d6                	cmp    edx,esi
  762c0d:	5d                   	pop    ebp
  762c0e:	75 23                	jne    0x762c33
  762c10:	3b 70 08             	cmp    esi,DWORD PTR [eax+0x8]
  762c13:	73 11                	jae    0x762c26
  762c15:	85 f6                	test   esi,esi
  762c17:	8d 56 08             	lea    edx,[esi+0x8]
  762c1a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  762c1d:	74 14                	je     0x762c33
  762c1f:	89 1e                	mov    DWORD PTR [esi],ebx
  762c21:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  762c24:	eb 0d                	jmp    0x762c33
  762c26:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  762c2a:	51                   	push   ecx
  762c2b:	56                   	push   esi
  762c2c:	8b c8                	mov    ecx,eax
  762c2e:	e8 2d f7 e0 ff       	call   0x572360
  762c33:	8b 17                	mov    edx,DWORD PTR [edi]
  762c35:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  762c38:	5e                   	pop    esi
  762c39:	5b                   	pop    ebx
  762c3a:	8b cf                	mov    ecx,edi
  762c3c:	5f                   	pop    edi
  762c3d:	ff e0                	jmp    eax
  762c3f:	5f                   	pop    edi
  762c40:	c3                   	ret

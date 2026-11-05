# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00955a30,0x00955c18); analyst name SteeringComponent_Construct.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00955a30 <.text+0x554a30>:
  955a30:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  955a34:	53                   	push   ebx
  955a35:	56                   	push   esi
  955a36:	8b f1                	mov    esi,ecx
  955a38:	57                   	push   edi
  955a39:	8d 7e 08             	lea    edi,[esi+0x8]
  955a3c:	8b cf                	mov    ecx,edi
  955a3e:	c7 06 78 42 04 01    	mov    DWORD PTR [esi],0x1044278
  955a44:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  955a47:	e8 24 3e ee ff       	call   0x839870
  955a4c:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  955a54:	c7 46 3c 0c 2c fc 00 	mov    DWORD PTR [esi+0x3c],0xfc2c0c
  955a5b:	c7 07 a8 55 04 01    	mov    DWORD PTR [edi],0x10455a8
  955a61:	c7 06 30 56 04 01    	mov    DWORD PTR [esi],0x1045630
  955a67:	c7 46 3c 90 55 04 01 	mov    DWORD PTR [esi+0x3c],0x1045590
  955a6e:	8d 46 68             	lea    eax,[esi+0x68]
  955a71:	33 db                	xor    ebx,ebx
  955a73:	89 5e 58             	mov    DWORD PTR [esi+0x58],ebx
  955a76:	89 5e 5c             	mov    DWORD PTR [esi+0x5c],ebx
  955a79:	89 5e 60             	mov    DWORD PTR [esi+0x60],ebx
  955a7c:	88 5e 64             	mov    BYTE PTR [esi+0x64],bl
  955a7f:	c7 40 08 84 57 04 01 	mov    DWORD PTR [eax+0x8],0x1045784
  955a86:	83 cf ff             	or     edi,0xffffffff
  955a89:	89 00                	mov    DWORD PTR [eax],eax
  955a8b:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  955a8e:	f3 0f 11 40 0c       	movss  DWORD PTR [eax+0xc],xmm0
  955a93:	89 78 10             	mov    DWORD PTR [eax+0x10],edi
  955a96:	89 78 14             	mov    DWORD PTR [eax+0x14],edi
  955a99:	89 78 18             	mov    DWORD PTR [eax+0x18],edi
  955a9c:	89 58 1c             	mov    DWORD PTR [eax+0x1c],ebx
  955a9f:	89 58 20             	mov    DWORD PTR [eax+0x20],ebx
  955aa2:	88 58 25             	mov    BYTE PTR [eax+0x25],bl
  955aa5:	88 58 26             	mov    BYTE PTR [eax+0x26],bl
  955aa8:	88 58 27             	mov    BYTE PTR [eax+0x27],bl
  955aab:	88 58 28             	mov    BYTE PTR [eax+0x28],bl
  955aae:	c6 40 29 01          	mov    BYTE PTR [eax+0x29],0x1
  955ab2:	c6 40 2a 01          	mov    BYTE PTR [eax+0x2a],0x1
  955ab6:	88 58 2b             	mov    BYTE PTR [eax+0x2b],bl
  955ab9:	89 9e 94 00 00 00    	mov    DWORD PTR [esi+0x94],ebx
  955abf:	8d 8e 9c 00 00 00    	lea    ecx,[esi+0x9c]
  955ac5:	89 9e 98 00 00 00    	mov    DWORD PTR [esi+0x98],ebx
  955acb:	e8 60 34 f0 ff       	call   0x858f30
  955ad0:	f3 0f 10 05 c8 2b 06 01 	movss  xmm0,DWORD PTR ds:0x1062bc8
  955ad8:	f3 0f 11 86 c0 00 00 00 	movss  DWORD PTR [esi+0xc0],xmm0
  955ae0:	f3 0f 11 86 c4 00 00 00 	movss  DWORD PTR [esi+0xc4],xmm0
  955ae8:	0f 57 c0             	xorps  xmm0,xmm0
  955aeb:	89 9e bc 00 00 00    	mov    DWORD PTR [esi+0xbc],ebx
  955af1:	88 9e c8 00 00 00    	mov    BYTE PTR [esi+0xc8],bl
  955af7:	88 9e c9 00 00 00    	mov    BYTE PTR [esi+0xc9],bl
  955afd:	88 9e ca 00 00 00    	mov    BYTE PTR [esi+0xca],bl
  955b03:	88 9e cb 00 00 00    	mov    BYTE PTR [esi+0xcb],bl
  955b09:	c7 86 d8 00 00 00 d0 57 04 01 	mov    DWORD PTR [esi+0xd8],0x10457d0
  955b13:	c7 86 d4 00 00 00 55 8e 1c 01 	mov    DWORD PTR [esi+0xd4],0x11c8e55
  955b1d:	b8 54 8e 1c 01       	mov    eax,0x11c8e54
  955b22:	89 86 cc 00 00 00    	mov    DWORD PTR [esi+0xcc],eax
  955b28:	89 86 d0 00 00 00    	mov    DWORD PTR [esi+0xd0],eax
  955b2e:	88 9e dc 00 00 00    	mov    BYTE PTR [esi+0xdc],bl
  955b34:	f3 0f 11 86 e0 00 00 00 	movss  DWORD PTR [esi+0xe0],xmm0
  955b3c:	f3 0f 11 86 e4 00 00 00 	movss  DWORD PTR [esi+0xe4],xmm0
  955b44:	89 9e e8 00 00 00    	mov    DWORD PTR [esi+0xe8],ebx
  955b4a:	88 9e ec 00 00 00    	mov    BYTE PTR [esi+0xec],bl
  955b50:	88 9e ed 00 00 00    	mov    BYTE PTR [esi+0xed],bl
  955b56:	89 9e f0 00 00 00    	mov    DWORD PTR [esi+0xf0],ebx
  955b5c:	89 9e f4 00 00 00    	mov    DWORD PTR [esi+0xf4],ebx
  955b62:	89 9e f8 00 00 00    	mov    DWORD PTR [esi+0xf8],ebx
  955b68:	66 89 9e fc 00 00 00 	mov    WORD PTR [esi+0xfc],bx
  955b6f:	89 9e 00 01 00 00    	mov    DWORD PTR [esi+0x100],ebx
  955b75:	c6 86 04 01 00 00 ff 	mov    BYTE PTR [esi+0x104],0xff
  955b7c:	c6 86 05 01 00 00 ff 	mov    BYTE PTR [esi+0x105],0xff
  955b83:	66 89 be 06 01 00 00 	mov    WORD PTR [esi+0x106],di
  955b8a:	f3 0f 11 86 08 01 00 00 	movss  DWORD PTR [esi+0x108],xmm0
  955b92:	89 9e 0c 01 00 00    	mov    DWORD PTR [esi+0x10c],ebx
  955b98:	89 5e 44             	mov    DWORD PTR [esi+0x44],ebx
  955b9b:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  955b9e:	8b 0d 40 a1 1d 01    	mov    ecx,DWORD PTR ds:0x11da140
  955ba4:	56                   	push   esi
  955ba5:	e8 26 4a ee ff       	call   0x83a5d0
  955baa:	53                   	push   ebx
  955bab:	53                   	push   ebx
  955bac:	53                   	push   ebx
  955bad:	53                   	push   ebx
  955bae:	68 a4 57 04 01       	push   0x10457a4
  955bb3:	68 c0 00 00 00       	push   0xc0
  955bb8:	e8 43 e9 b8 ff       	call   0x4e4500
  955bbd:	83 c4 18             	add    esp,0x18
  955bc0:	3b c3                	cmp    eax,ebx
  955bc2:	74 09                	je     0x955bcd
  955bc4:	8b c8                	mov    ecx,eax
  955bc6:	e8 75 70 f0 ff       	call   0x85cc40
  955bcb:	eb 02                	jmp    0x955bcf
  955bcd:	33 c0                	xor    eax,eax
  955bcf:	8b 8e 0c 01 00 00    	mov    ecx,DWORD PTR [esi+0x10c]
  955bd5:	3b c1                	cmp    eax,ecx
  955bd7:	74 37                	je     0x955c10
  955bd9:	3b c3                	cmp    eax,ebx
  955bdb:	74 0e                	je     0x955beb
  955bdd:	55                   	push   ebp
  955bde:	8d 50 04             	lea    edx,[eax+0x4]
  955be1:	bd 01 00 00 00       	mov    ebp,0x1
  955be6:	f0 0f c1 2a          	lock xadd DWORD PTR [edx],ebp
  955bea:	5d                   	pop    ebp
  955beb:	3b cb                	cmp    ecx,ebx
  955bed:	89 86 0c 01 00 00    	mov    DWORD PTR [esi+0x10c],eax
  955bf3:	74 1b                	je     0x955c10
  955bf5:	8d 41 04             	lea    eax,[ecx+0x4]
  955bf8:	8b d0                	mov    edx,eax
  955bfa:	f0 0f c1 3a          	lock xadd DWORD PTR [edx],edi
  955bfe:	4f                   	dec    edi
  955bff:	75 0f                	jne    0x955c10
  955c01:	ba 01 00 00 00       	mov    edx,0x1
  955c06:	87 10                	xchg   DWORD PTR [eax],edx
  955c08:	8b 01                	mov    eax,DWORD PTR [ecx]
  955c0a:	8b 10                	mov    edx,DWORD PTR [eax]
  955c0c:	6a 01                	push   0x1
  955c0e:	ff d2                	call   edx
  955c10:	5f                   	pop    edi
  955c11:	8b c6                	mov    eax,esi
  955c13:	5e                   	pop    esi
  955c14:	5b                   	pop    ebx
  955c15:	c2 04 00             	ret    0x4

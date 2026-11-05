# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00863ae0 <.text+0x462ae0>:
  863ae0:	51                                              	push   ecx
  863ae1:	56                                              	push   esi
  863ae2:	57                                              	push   edi
  863ae3:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  863aeb:	e8 80 3a 0d 00                                  	call   0x937570
  863af0:	85 c0                                           	test   eax,eax
  863af2:	0f 84 a0 00 00 00                               	je     0x863b98
  863af8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  863afc:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  863b00:	51                                              	push   ecx
  863b01:	52                                              	push   edx
  863b02:	8b c8                                           	mov    ecx,eax
  863b04:	e8 77 44 0d 00                                  	call   0x937f80
  863b09:	50                                              	push   eax
  863b0a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  863b0e:	e8 9d 14 01 00                                  	call   0x874fb0
  863b13:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  863b17:	85 f6                                           	test   esi,esi
  863b19:	74 7d                                           	je     0x863b98
  863b1b:	a1 70 9e 1e 01                                  	mov    eax,ds:0x11e9e70
  863b20:	50                                              	push   eax
  863b21:	8b ce                                           	mov    ecx,esi
  863b23:	e8 38 07 0d 00                                  	call   0x934260
  863b28:	8b f8                                           	mov    edi,eax
  863b2a:	85 ff                                           	test   edi,edi
  863b2c:	74 4a                                           	je     0x863b78
  863b2e:	e8 5d 58 f0 ff                                  	call   0x769390
  863b33:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  863b37:	8b 10                                           	mov    edx,DWORD PTR [eax]
  863b39:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  863b3c:	51                                              	push   ecx
  863b3d:	8b c8                                           	mov    ecx,eax
  863b3f:	ff d2                                           	call   edx
  863b41:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  863b45:	6a 00                                           	push   0x0
  863b47:	51                                              	push   ecx
  863b48:	50                                              	push   eax
  863b49:	8b cf                                           	mov    ecx,edi
  863b4b:	e8 50 f8 0d 00                                  	call   0x9433a0
  863b50:	8b f8                                           	mov    edi,eax
  863b52:	8d 46 04                                        	lea    eax,[esi+0x4]
  863b55:	8b d0                                           	mov    edx,eax
  863b57:	83 c9 ff                                        	or     ecx,0xffffffff
  863b5a:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  863b5e:	49                                              	dec    ecx
  863b5f:	75 11                                           	jne    0x863b72
  863b61:	ba 01 00 00 00                                  	mov    edx,0x1
  863b66:	87 10                                           	xchg   DWORD PTR [eax],edx
  863b68:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863b6a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  863b6c:	6a 01                                           	push   0x1
  863b6e:	8b ce                                           	mov    ecx,esi
  863b70:	ff d2                                           	call   edx
  863b72:	8b c7                                           	mov    eax,edi
  863b74:	5f                                              	pop    edi
  863b75:	5e                                              	pop    esi
  863b76:	59                                              	pop    ecx
  863b77:	c3                                              	ret
  863b78:	8d 46 04                                        	lea    eax,[esi+0x4]
  863b7b:	8b c8                                           	mov    ecx,eax
  863b7d:	83 ca ff                                        	or     edx,0xffffffff
  863b80:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  863b84:	4a                                              	dec    edx
  863b85:	75 11                                           	jne    0x863b98
  863b87:	b9 01 00 00 00                                  	mov    ecx,0x1
  863b8c:	87 08                                           	xchg   DWORD PTR [eax],ecx
  863b8e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  863b90:	8b 02                                           	mov    eax,DWORD PTR [edx]
  863b92:	6a 01                                           	push   0x1
  863b94:	8b ce                                           	mov    ecx,esi
  863b96:	ff d0                                           	call   eax
  863b98:	5f                                              	pop    edi
  863b99:	33 c0                                           	xor    eax,eax
  863b9b:	5e                                              	pop    esi
  863b9c:	59                                              	pop    ecx
  863b9d:	c3                                              	ret

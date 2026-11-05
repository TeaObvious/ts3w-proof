# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004f3b50 (EaString_FromUtf8Bytes)
Full Ghidra function-body envelope: 0x004f3b50..0x004f3c8a (exclusive end)
Ghidra body ranges: [[004f3b50, 004f3c89]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004f3b50 <.text+0xf2b50>:
  4f3b50:	81 ec 08 04 00 00                               	sub    esp,0x408
  4f3b56:	53                                              	push   ebx
  4f3b57:	8b 9c 24 14 04 00 00                            	mov    ebx,DWORD PTR [esp+0x414]
  4f3b5e:	56                                              	push   esi
  4f3b5f:	57                                              	push   edi
  4f3b60:	8b bc 24 20 04 00 00                            	mov    edi,DWORD PTR [esp+0x420]
  4f3b67:	83 ff ff                                        	cmp    edi,0xffffffff
  4f3b6a:	75 0b                                           	jne    0x4f3b77
  4f3b6c:	53                                              	push   ebx
  4f3b6d:	e8 2e a7 00 00                                  	call   0x4fe2a0
  4f3b72:	83 c4 04                                        	add    esp,0x4
  4f3b75:	8b f8                                           	mov    edi,eax
  4f3b77:	6a 10                                           	push   0x10
  4f3b79:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  4f3b7d:	50                                              	push   eax
  4f3b7e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  4f3b82:	51                                              	push   ecx
  4f3b83:	6a 08                                           	push   0x8
  4f3b85:	57                                              	push   edi
  4f3b86:	53                                              	push   ebx
  4f3b87:	c7 44 24 28 00 02 00 00                         	mov    DWORD PTR [esp+0x28],0x200
  4f3b8f:	e8 5c 05 00 00                                  	call   0x4f40f0
  4f3b94:	83 c4 18                                        	add    esp,0x18
  4f3b97:	3b c7                                           	cmp    eax,edi
  4f3b99:	72 6a                                           	jb     0x4f3c05
  4f3b9b:	8b 84 24 24 04 00 00                            	mov    eax,DWORD PTR [esp+0x424]
  4f3ba2:	85 c0                                           	test   eax,eax
  4f3ba4:	8b b4 24 18 04 00 00                            	mov    esi,DWORD PTR [esp+0x418]
  4f3bab:	74 2a                                           	je     0x4f3bd7
  4f3bad:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  4f3bb1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  4f3bb5:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  4f3bb9:	52                                              	push   edx
  4f3bba:	8d 4c 44 18                                     	lea    ecx,[esp+eax*2+0x18]
  4f3bbe:	51                                              	push   ecx
  4f3bbf:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  4f3bc3:	52                                              	push   edx
  4f3bc4:	8b ce                                           	mov    ecx,esi
  4f3bc6:	e8 25 ff ff ff                                  	call   0x4f3af0
  4f3bcb:	5f                                              	pop    edi
  4f3bcc:	8b c6                                           	mov    eax,esi
  4f3bce:	5e                                              	pop    esi
  4f3bcf:	5b                                              	pop    ebx
  4f3bd0:	81 c4 08 04 00 00                               	add    esp,0x408
  4f3bd6:	c3                                              	ret
  4f3bd7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  4f3bdb:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  4f3bdf:	50                                              	push   eax
  4f3be0:	8d 54 4c 18                                     	lea    edx,[esp+ecx*2+0x18]
  4f3be4:	52                                              	push   edx
  4f3be5:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  4f3be9:	50                                              	push   eax
  4f3bea:	8b ce                                           	mov    ecx,esi
  4f3bec:	c7 44 24 18 58 a5 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba558
  4f3bf4:	e8 f7 fe ff ff                                  	call   0x4f3af0
  4f3bf9:	5f                                              	pop    edi
  4f3bfa:	8b c6                                           	mov    eax,esi
  4f3bfc:	5e                                              	pop    esi
  4f3bfd:	5b                                              	pop    ebx
  4f3bfe:	81 c4 08 04 00 00                               	add    esp,0x408
  4f3c04:	c3                                              	ret
  4f3c05:	33 c9                                           	xor    ecx,ecx
  4f3c07:	8b c7                                           	mov    eax,edi
  4f3c09:	ba 02 00 00 00                                  	mov    edx,0x2
  4f3c0e:	f7 e2                                           	mul    edx
  4f3c10:	55                                              	push   ebp
  4f3c11:	8b ac 24 28 04 00 00                            	mov    ebp,DWORD PTR [esp+0x428]
  4f3c18:	6a 00                                           	push   0x0
  4f3c1a:	0f 90 c1                                        	seto   cl
  4f3c1d:	6a 00                                           	push   0x0
  4f3c1f:	6a 00                                           	push   0x0
  4f3c21:	6a 00                                           	push   0x0
  4f3c23:	55                                              	push   ebp
  4f3c24:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  4f3c28:	f7 d9                                           	neg    ecx
  4f3c2a:	0b c8                                           	or     ecx,eax
  4f3c2c:	51                                              	push   ecx
  4f3c2d:	e8 ce 08 ff ff                                  	call   0x4e4500
  4f3c32:	6a 10                                           	push   0x10
  4f3c34:	8b f0                                           	mov    esi,eax
  4f3c36:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  4f3c3a:	50                                              	push   eax
  4f3c3b:	56                                              	push   esi
  4f3c3c:	6a 08                                           	push   0x8
  4f3c3e:	57                                              	push   edi
  4f3c3f:	53                                              	push   ebx
  4f3c40:	e8 ab 04 00 00                                  	call   0x4f40f0
  4f3c45:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  4f3c49:	8b bc 24 4c 04 00 00                            	mov    edi,DWORD PTR [esp+0x44c]
  4f3c50:	83 c4 30                                        	add    esp,0x30
  4f3c53:	85 ed                                           	test   ebp,ebp
  4f3c55:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  4f3c59:	51                                              	push   ecx
  4f3c5a:	8d 04 56                                        	lea    eax,[esi+edx*2]
  4f3c5d:	50                                              	push   eax
  4f3c5e:	8b cf                                           	mov    ecx,edi
  4f3c60:	56                                              	push   esi
  4f3c61:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
  4f3c65:	75 08                                           	jne    0x4f3c6f
  4f3c67:	c7 44 24 1c 58 a5 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba558
  4f3c6f:	e8 7c fe ff ff                                  	call   0x4f3af0
  4f3c74:	56                                              	push   esi
  4f3c75:	e8 66 08 ff ff                                  	call   0x4e44e0
  4f3c7a:	83 c4 04                                        	add    esp,0x4
  4f3c7d:	5d                                              	pop    ebp
  4f3c7e:	8b c7                                           	mov    eax,edi
  4f3c80:	5f                                              	pop    edi
  4f3c81:	5e                                              	pop    esi
  4f3c82:	5b                                              	pop    ebx
  4f3c83:	81 c4 08 04 00 00                               	add    esp,0x408
  4f3c89:	c3                                              	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00536bc0 WinScrollbar_OnMouseMove
# Complete Ghidra body [00536bc0, 00536d9f] inclusive; 130 instructions, 480 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00536BC0_WinScrollbar_OnMouseMove.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00536bc0 <.text+0x135bc0>:
  536bc0:	51                                              	push   ecx
  536bc1:	56                                              	push   esi
  536bc2:	8b f1                                           	mov    esi,ecx
  536bc4:	85 f6                                           	test   esi,esi
  536bc6:	57                                              	push   edi
  536bc7:	74 05                                           	je     0x536bce
  536bc9:	8d 7e 04                                        	lea    edi,[esi+0x4]
  536bcc:	eb 02                                           	jmp    0x536bd0
  536bce:	33 ff                                           	xor    edi,edi
  536bd0:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  536bd3:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  536bd5:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  536bd8:	6a 01                                           	push   0x1
  536bda:	ff d2                                           	call   edx
  536bdc:	3b c7                                           	cmp    eax,edi
  536bde:	0f 85 7a 01 00 00                               	jne    0x536d5e
  536be4:	0f b6 86 85 02 00 00                            	movzx  eax,BYTE PTR [esi+0x285]
  536beb:	83 c0 ff                                        	add    eax,0xffffffff
  536bee:	83 f8 05                                        	cmp    eax,0x5
  536bf1:	0f 87 a1 01 00 00                               	ja     0x536d98
  536bf7:	ff 24 85 a0 6d 53 00                            	jmp    DWORD PTR [eax*4+0x536da0]
  536bfe:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  536c02:	8b 06                                           	mov    eax,DWORD PTR [esi]
  536c04:	8b 90 a8 00 00 00                               	mov    edx,DWORD PTR [eax+0xa8]
  536c0a:	83 ec 08                                        	sub    esp,0x8
  536c0d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  536c11:	8b ce                                           	mov    ecx,esi
  536c13:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  536c17:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  536c1a:	ff d2                                           	call   edx
  536c1c:	38 86 84 02 00 00                               	cmp    BYTE PTR [esi+0x284],al
  536c22:	0f 84 70 01 00 00                               	je     0x536d98
  536c28:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  536c2b:	88 86 84 02 00 00                               	mov    BYTE PTR [esi+0x284],al
  536c31:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  536c33:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  536c39:	ff d2                                           	call   edx
  536c3b:	5f                                              	pop    edi
  536c3c:	b0 01                                           	mov    al,0x1
  536c3e:	5e                                              	pop    esi
  536c3f:	59                                              	pop    ecx
  536c40:	c2 0c 00                                        	ret    0xc
  536c43:	8b 86 68 02 00 00                               	mov    eax,DWORD PTR [esi+0x268]
  536c49:	2b 86 6c 02 00 00                               	sub    eax,DWORD PTR [esi+0x26c]
  536c4f:	8b be 64 02 00 00                               	mov    edi,DWORD PTR [esi+0x264]
  536c55:	2b c7                                           	sub    eax,edi
  536c57:	83 be 80 02 00 00 01                            	cmp    DWORD PTR [esi+0x280],0x1
  536c5e:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  536c62:	75 36                                           	jne    0x536c9a
  536c64:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  536c6a:	f3 0f 5c 86 88 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x288]
  536c72:	f3 0f 10 8e e8 02 00 00                         	movss  xmm1,DWORD PTR [esi+0x2e8]
  536c7a:	f3 0f 5c 8e e0 02 00 00                         	subss  xmm1,DWORD PTR [esi+0x2e0]
  536c82:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  536c88:	f3 0f 10 86 f8 02 00 00                         	movss  xmm0,DWORD PTR [esi+0x2f8]
  536c90:	f3 0f 5c 86 f0 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x2f0]
  536c98:	eb 34                                           	jmp    0x536cce
  536c9a:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  536ca0:	f3 0f 5c 86 88 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x288]
  536ca8:	f3 0f 10 8e ec 02 00 00                         	movss  xmm1,DWORD PTR [esi+0x2ec]
  536cb0:	f3 0f 5c 8e e4 02 00 00                         	subss  xmm1,DWORD PTR [esi+0x2e4]
  536cb8:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  536cbe:	f3 0f 10 86 fc 02 00 00                         	movss  xmm0,DWORD PTR [esi+0x2fc]
  536cc6:	f3 0f 5c 86 f4 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x2f4]
  536cce:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  536cd2:	0f 2f 05 cc 4c 0f 01                            	comiss xmm0,DWORD PTR ds:0x10f4ccc
  536cd9:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  536cdf:	76 55                                           	jbe    0x536d36
  536ce1:	db 44 24 08                                     	fild   DWORD PTR [esp+0x8]
  536ce5:	53                                              	push   ebx
  536ce6:	55                                              	push   ebp
  536ce7:	8b ae 50 02 00 00                               	mov    ebp,DWORD PTR [esi+0x250]
  536ced:	d8 4c 24 1c                                     	fmul   DWORD PTR [esp+0x1c]
  536cf1:	6a 01                                           	push   0x1
  536cf3:	83 ec 08                                        	sub    esp,0x8
  536cf6:	8d 9e 50 02 00 00                               	lea    ebx,[esi+0x250]
  536cfc:	d8 74 24 24                                     	fdiv   DWORD PTR [esp+0x24]
  536d00:	d8 05 b4 b5 f9 00                               	fadd   DWORD PTR ds:0xf9b5b4
  536d06:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  536d09:	e8 c2 8a a4 00                                  	call   0xf7f7d0
  536d0e:	83 c4 08                                        	add    esp,0x8
  536d11:	e8 0a 89 a4 00                                  	call   0xf7f620
  536d16:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
  536d19:	03 c7                                           	add    eax,edi
  536d1b:	50                                              	push   eax
  536d1c:	8b cb                                           	mov    ecx,ebx
  536d1e:	ff d2                                           	call   edx
  536d20:	8b 86 54 02 00 00                               	mov    eax,DWORD PTR [esi+0x254]
  536d26:	5d                                              	pop    ebp
  536d27:	5b                                              	pop    ebx
  536d28:	89 86 5c 02 00 00                               	mov    DWORD PTR [esi+0x25c],eax
  536d2e:	5f                                              	pop    edi
  536d2f:	b0 01                                           	mov    al,0x1
  536d31:	5e                                              	pop    esi
  536d32:	59                                              	pop    ecx
  536d33:	c2 0c 00                                        	ret    0xc
  536d36:	8b 86 50 02 00 00                               	mov    eax,DWORD PTR [esi+0x250]
  536d3c:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  536d3f:	8d 8e 50 02 00 00                               	lea    ecx,[esi+0x250]
  536d45:	6a 01                                           	push   0x1
  536d47:	57                                              	push   edi
  536d48:	ff d2                                           	call   edx
  536d4a:	8b 86 54 02 00 00                               	mov    eax,DWORD PTR [esi+0x254]
  536d50:	89 86 5c 02 00 00                               	mov    DWORD PTR [esi+0x25c],eax
  536d56:	5f                                              	pop    edi
  536d57:	b0 01                                           	mov    al,0x1
  536d59:	5e                                              	pop    esi
  536d5a:	59                                              	pop    ecx
  536d5b:	c2 0c 00                                        	ret    0xc
  536d5e:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  536d62:	8b 16                                           	mov    edx,DWORD PTR [esi]
  536d64:	8b 82 a8 00 00 00                               	mov    eax,DWORD PTR [edx+0xa8]
  536d6a:	83 ec 08                                        	sub    esp,0x8
  536d6d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  536d71:	8b ce                                           	mov    ecx,esi
  536d73:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  536d77:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  536d7a:	ff d0                                           	call   eax
  536d7c:	38 86 84 02 00 00                               	cmp    BYTE PTR [esi+0x284],al
  536d82:	74 14                                           	je     0x536d98
  536d84:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  536d87:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  536d8a:	88 86 84 02 00 00                               	mov    BYTE PTR [esi+0x284],al
  536d90:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  536d96:	ff d0                                           	call   eax
  536d98:	5f                                              	pop    edi
  536d99:	b0 01                                           	mov    al,0x1
  536d9b:	5e                                              	pop    esi
  536d9c:	59                                              	pop    ecx
  536d9d:	c2 0c 00                                        	ret    0xc

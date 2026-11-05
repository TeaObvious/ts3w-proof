# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c02d70 (RoofHalfHipDiagonalMask_u32)
Complete Ghidra function body: 0x00c02d70..0x00c02ddf (exclusive end)
Ghidra body ranges: [[00c02d70, 00c02dde]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c02d70 <.text+0x801d70>:
  c02d70:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  c02d74:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  c02d78:	53                                              	push   ebx
  c02d79:	3b c1                                           	cmp    eax,ecx
  c02d7b:	55                                              	push   ebp
  c02d7c:	0f 92 c2                                        	setb   dl
  c02d7f:	84 d2                                           	test   dl,dl
  c02d81:	56                                              	push   esi
  c02d82:	57                                              	push   edi
  c02d83:	74 34                                           	je     0xc02db9
  c02d85:	8d 6c 00 ff                                     	lea    ebp,[eax+eax*1-0x1]
  c02d89:	8b d9                                           	mov    ebx,ecx
  c02d8b:	84 d2                                           	test   dl,dl
  c02d8d:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  c02d91:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  c02d95:	8b ce                                           	mov    ecx,esi
  c02d97:	8b c7                                           	mov    eax,edi
  c02d99:	74 26                                           	je     0xc02dc1
  c02d9b:	80 7c 24 24 00                                  	cmp    BYTE PTR [esp+0x24],0x0
  c02da0:	75 2c                                           	jne    0xc02dce
  c02da2:	53                                              	push   ebx
  c02da3:	8b cd                                           	mov    ecx,ebp
  c02da5:	d1 e9                                           	shr    ecx,1
  c02da7:	55                                              	push   ebp
  c02da8:	03 ce                                           	add    ecx,esi
  c02daa:	50                                              	push   eax
  c02dab:	51                                              	push   ecx
  c02dac:	e8 2f ff ff ff                                  	call   0xc02ce0
  c02db1:	83 c4 10                                        	add    esp,0x10
  c02db4:	5f                                              	pop    edi
  c02db5:	5e                                              	pop    esi
  c02db6:	5d                                              	pop    ebp
  c02db7:	5b                                              	pop    ebx
  c02db8:	c3                                              	ret
  c02db9:	8b e8                                           	mov    ebp,eax
  c02dbb:	8d 5c 09 ff                                     	lea    ebx,[ecx+ecx*1-0x1]
  c02dbf:	eb ca                                           	jmp    0xc02d8b
  c02dc1:	80 7c 24 28 00                                  	cmp    BYTE PTR [esp+0x28],0x0
  c02dc6:	75 06                                           	jne    0xc02dce
  c02dc8:	8b c3                                           	mov    eax,ebx
  c02dca:	d1 e8                                           	shr    eax,1
  c02dcc:	03 c7                                           	add    eax,edi
  c02dce:	53                                              	push   ebx
  c02dcf:	55                                              	push   ebp
  c02dd0:	50                                              	push   eax
  c02dd1:	51                                              	push   ecx
  c02dd2:	e8 09 ff ff ff                                  	call   0xc02ce0
  c02dd7:	83 c4 10                                        	add    esp,0x10
  c02dda:	5f                                              	pop    edi
  c02ddb:	5e                                              	pop    esi
  c02ddc:	5d                                              	pop    ebp
  c02ddd:	5b                                              	pop    ebx
  c02dde:	c3                                              	ret

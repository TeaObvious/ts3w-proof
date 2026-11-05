# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00933f20 <.text+0x532f20>:
  933f20:	57                   	push   edi
  933f21:	e8 5a bf b7 ff       	call   0x4afe80
  933f26:	8b f8                	mov    edi,eax
  933f28:	85 ff                	test   edi,edi
  933f2a:	74 58                	je     0x933f84
  933f2c:	56                   	push   esi
  933f2d:	6a 00                	push   0x0
  933f2f:	6a 00                	push   0x0
  933f31:	6a 00                	push   0x0
  933f33:	6a 00                	push   0x0
  933f35:	68 4c 3c 04 01       	push   0x1043c4c
  933f3a:	6a 10                	push   0x10
  933f3c:	e8 1f 08 bb ff       	call   0x4e4760
  933f41:	8b f0                	mov    esi,eax
  933f43:	83 c4 18             	add    esp,0x18
  933f46:	85 f6                	test   esi,esi
  933f48:	74 28                	je     0x933f72
  933f4a:	68 e7 f5 73 bd       	push   0xbd73f5e7
  933f4f:	68 70 83 a3 f3       	push   0xf3a38370
  933f54:	8b ce                	mov    ecx,esi
  933f56:	e8 b5 b1 df ff       	call   0x72f110
  933f5b:	6a 00                	push   0x0
  933f5d:	c7 06 08 3c 04 01    	mov    DWORD PTR [esi],0x1043c08
  933f63:	8b 07                	mov    eax,DWORD PTR [edi]
  933f65:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  933f68:	56                   	push   esi
  933f69:	6a 01                	push   0x1
  933f6b:	8b cf                	mov    ecx,edi
  933f6d:	ff d2                	call   edx
  933f6f:	5e                   	pop    esi
  933f70:	5f                   	pop    edi
  933f71:	c3                   	ret
  933f72:	8b 07                	mov    eax,DWORD PTR [edi]
  933f74:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  933f77:	33 f6                	xor    esi,esi
  933f79:	56                   	push   esi
  933f7a:	56                   	push   esi
  933f7b:	6a 01                	push   0x1
  933f7d:	8b cf                	mov    ecx,edi
  933f7f:	ff d2                	call   edx
  933f81:	5e                   	pop    esi
  933f82:	5f                   	pop    edi
  933f83:	c3                   	ret
  933f84:	32 c0                	xor    al,al
  933f86:	5f                   	pop    edi
  933f87:	c3                   	ret

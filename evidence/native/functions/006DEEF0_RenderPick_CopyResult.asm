# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006deef0 <.text+0x2ddef0>:
  6deef0:	55                   	push   ebp
  6deef1:	8b ec                	mov    ebp,esp
  6deef3:	83 e4 f0             	and    esp,0xfffffff0
  6deef6:	51                   	push   ecx
  6deef7:	53                   	push   ebx
  6deef8:	56                   	push   esi
  6deef9:	57                   	push   edi
  6deefa:	8b f9                	mov    edi,ecx
  6deefc:	8b 47 48             	mov    eax,DWORD PTR [edi+0x48]
  6deeff:	85 c0                	test   eax,eax
  6def01:	7d 0b                	jge    0x6def0e
  6def03:	32 c0                	xor    al,al
  6def05:	5f                   	pop    edi
  6def06:	5e                   	pop    esi
  6def07:	5b                   	pop    ebx
  6def08:	8b e5                	mov    esp,ebp
  6def0a:	5d                   	pop    ebp
  6def0b:	c2 04 00             	ret    0x4
  6def0e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  6def11:	89 06                	mov    DWORD PTR [esi],eax
  6def13:	8b 47 4c             	mov    eax,DWORD PTR [edi+0x4c]
  6def16:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  6def19:	8b 4f 60             	mov    ecx,DWORD PTR [edi+0x60]
  6def1c:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  6def1f:	c7 46 08 ff ff ff ff 	mov    DWORD PTR [esi+0x8],0xffffffff
  6def26:	c7 46 14 00 00 00 00 	mov    DWORD PTR [esi+0x14],0x0
  6def2d:	0f 28 47 70          	movaps xmm0,XMMWORD PTR [edi+0x70]
  6def31:	8d 5e 20             	lea    ebx,[esi+0x20]
  6def34:	0f 29 03             	movaps XMMWORD PTR [ebx],xmm0
  6def37:	8b 57 5c             	mov    edx,DWORD PTR [edi+0x5c]
  6def3a:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  6def3d:	8b 47 58             	mov    eax,DWORD PTR [edi+0x58]
  6def40:	85 c0                	test   eax,eax
  6def42:	0f 8c 80 00 00 00    	jl     0x6defc8
  6def48:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  6def4b:	50                   	push   eax
  6def4c:	e8 ef 4c 00 00       	call   0x6e3c40
  6def51:	85 c0                	test   eax,eax
  6def53:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  6def56:	74 70                	je     0x6defc8
  6def58:	8b 4f 58             	mov    ecx,DWORD PTR [edi+0x58]
  6def5b:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  6def5e:	8b 10                	mov    edx,DWORD PTR [eax]
  6def60:	8b c8                	mov    ecx,eax
  6def62:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  6def65:	68 66 dc 99 04       	push   0x499dc66
  6def6a:	ff d0                	call   eax
  6def6c:	85 c0                	test   eax,eax
  6def6e:	74 16                	je     0x6def86
  6def70:	53                   	push   ebx
  6def71:	8b c8                	mov    ecx,eax
  6def73:	e8 98 91 01 00       	call   0x6f8110
  6def78:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  6def7b:	b0 01                	mov    al,0x1
  6def7d:	5f                   	pop    edi
  6def7e:	5e                   	pop    esi
  6def7f:	5b                   	pop    ebx
  6def80:	8b e5                	mov    esp,ebp
  6def82:	5d                   	pop    ebp
  6def83:	c2 04 00             	ret    0x4
  6def86:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  6def89:	85 c9                	test   ecx,ecx
  6def8b:	74 3b                	je     0x6defc8
  6def8d:	8b 11                	mov    edx,DWORD PTR [ecx]
  6def8f:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  6def92:	68 30 72 8d 93       	push   0x938d7230
  6def97:	ff d0                	call   eax
  6def99:	85 c0                	test   eax,eax
  6def9b:	74 2b                	je     0x6defc8
  6def9d:	8b b8 28 02 00 00    	mov    edi,DWORD PTR [eax+0x228]
  6defa3:	8b 98 2c 02 00 00    	mov    ebx,DWORD PTR [eax+0x22c]
  6defa9:	8b cf                	mov    ecx,edi
  6defab:	0b cb                	or     ecx,ebx
  6defad:	74 19                	je     0x6defc8
  6defaf:	e8 2c ec 01 00       	call   0x6fdbe0
  6defb4:	85 c0                	test   eax,eax
  6defb6:	74 10                	je     0x6defc8
  6defb8:	53                   	push   ebx
  6defb9:	57                   	push   edi
  6defba:	8b c8                	mov    ecx,eax
  6defbc:	e8 5f f1 01 00       	call   0x6fe120
  6defc1:	85 c0                	test   eax,eax
  6defc3:	74 03                	je     0x6defc8
  6defc5:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  6defc8:	5f                   	pop    edi
  6defc9:	5e                   	pop    esi
  6defca:	b0 01                	mov    al,0x1
  6defcc:	5b                   	pop    ebx
  6defcd:	8b e5                	mov    esp,ebp
  6defcf:	5d                   	pop    ebp
  6defd0:	c2 04 00             	ret    0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00922f60 <.text+0x521f60>:
  922f60:	56                   	push   esi
  922f61:	57                   	push   edi
  922f62:	8b f9                	mov    edi,ecx
  922f64:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  922f67:	8b 17                	mov    edx,DWORD PTR [edi]
  922f69:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  922f6d:	8b c6                	mov    eax,esi
  922f6f:	2b c2                	sub    eax,edx
  922f71:	c1 f8 02             	sar    eax,0x2
  922f74:	3b c8                	cmp    ecx,eax
  922f76:	76 1d                	jbe    0x922f95
  922f78:	8d 54 24 0c          	lea    edx,[esp+0xc]
  922f7c:	52                   	push   edx
  922f7d:	2b c8                	sub    ecx,eax
  922f7f:	51                   	push   ecx
  922f80:	56                   	push   esi
  922f81:	8b cf                	mov    ecx,edi
  922f83:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  922f8a:	00 
  922f8b:	e8 f0 fd ff ff       	call   0x922d80
  922f90:	5f                   	pop    edi
  922f91:	5e                   	pop    esi
  922f92:	c2 04 00             	ret    0x4
  922f95:	53                   	push   ebx
  922f96:	8d 1c 8a             	lea    ebx,[edx+ecx*4]
  922f99:	53                   	push   ebx
  922f9a:	56                   	push   esi
  922f9b:	56                   	push   esi
  922f9c:	e8 1f 0d d4 ff       	call   0x663cc0
  922fa1:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  922fa4:	83 c4 0c             	add    esp,0xc
  922fa7:	51                   	push   ecx
  922fa8:	50                   	push   eax
  922fa9:	8b cf                	mov    ecx,edi
  922fab:	e8 c0 d5 37 00       	call   0xca0570
  922fb0:	2b f3                	sub    esi,ebx
  922fb2:	c1 fe 02             	sar    esi,0x2
  922fb5:	f7 de                	neg    esi
  922fb7:	03 f6                	add    esi,esi
  922fb9:	03 f6                	add    esi,esi
  922fbb:	01 77 04             	add    DWORD PTR [edi+0x4],esi
  922fbe:	5b                   	pop    ebx
  922fbf:	5f                   	pop    edi
  922fc0:	5e                   	pop    esi
  922fc1:	c2 04 00             	ret    0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00722af0 <.text+0x321af0>:
  722af0:	53                   	push   ebx
  722af1:	56                   	push   esi
  722af2:	68 8e d1 b2 00       	push   0xb2d18e
  722af7:	68 82 d8 b2 00       	push   0xb2d882
  722afc:	8b f1                	mov    esi,ecx
  722afe:	e8 0d c6 00 00       	call   0x72f110
  722b03:	6a 00                	push   0x0
  722b05:	68 bc 5f fe 00       	push   0xfe5fbc
  722b0a:	c7 06 48 dc ff 00    	mov    DWORD PTR [esi],0xffdc48
  722b10:	e8 4b 89 e6 ff       	call   0x58b460
  722b15:	8a d8                	mov    bl,al
  722b17:	83 c4 08             	add    esp,0x8
  722b1a:	84 db                	test   bl,bl
  722b1c:	74 0c                	je     0x722b2a
  722b1e:	c7 05 b0 3f 1d 01 00 	mov    DWORD PTR ds:0x11d3fb0,0x0
  722b25:	00 00 00 
  722b28:	eb 1a                	jmp    0x722b44
  722b2a:	a1 b0 0a 15 01       	mov    eax,ds:0x1150ab0
  722b2f:	6a 00                	push   0x0
  722b31:	68 34 d2 fc 00       	push   0xfcd234
  722b36:	50                   	push   eax
  722b37:	e8 c4 83 e6 ff       	call   0x58af00
  722b3c:	83 c4 0c             	add    esp,0xc
  722b3f:	a3 b0 3f 1d 01       	mov    ds:0x11d3fb0,eax
  722b44:	8b 0d b0 0a 15 01    	mov    ecx,DWORD PTR ds:0x1150ab0
  722b4a:	6a 00                	push   0x0
  722b4c:	68 08 d2 fc 00       	push   0xfcd208
  722b51:	51                   	push   ecx
  722b52:	e8 a9 83 e6 ff       	call   0x58af00
  722b57:	83 c4 0c             	add    esp,0xc
  722b5a:	84 db                	test   bl,bl
  722b5c:	a3 b4 3f 1d 01       	mov    ds:0x11d3fb4,eax
  722b61:	74 23                	je     0x722b86
  722b63:	b9 c8 8d 15 01       	mov    ecx,0x1158dc8
  722b68:	c7 05 bc 3f 1d 01 00 	mov    DWORD PTR ds:0x11d3fbc,0x0
  722b6f:	00 00 00 
  722b72:	c7 05 c0 3f 1d 01 00 	mov    DWORD PTR ds:0x11d3fc0,0x800
  722b79:	08 00 00 
  722b7c:	e8 cf 95 ed ff       	call   0x5fc150
  722b81:	8b c6                	mov    eax,esi
  722b83:	5e                   	pop    esi
  722b84:	5b                   	pop    ebx
  722b85:	c3                   	ret
  722b86:	8b 15 b0 3f 1d 01    	mov    edx,DWORD PTR ds:0x11d3fb0
  722b8c:	83 c2 01             	add    edx,0x1
  722b8f:	b9 c8 8d 15 01       	mov    ecx,0x1158dc8
  722b94:	89 15 bc 3f 1d 01    	mov    DWORD PTR ds:0x11d3fbc,edx
  722b9a:	c7 05 c0 3f 1d 01 00 	mov    DWORD PTR ds:0x11d3fc0,0x100
  722ba1:	01 00 00 
  722ba4:	e8 a7 95 ed ff       	call   0x5fc150
  722ba9:	8b c6                	mov    eax,esi
  722bab:	5e                   	pop    esi
  722bac:	5b                   	pop    ebx
  722bad:	c3                   	ret

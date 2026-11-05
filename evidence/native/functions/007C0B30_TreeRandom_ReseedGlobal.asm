# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c0b30 <.text+0x3bfb30>:
  7c0b30:	51                   	push   ecx
  7c0b31:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  7c0b35:	83 f8 ff             	cmp    eax,0xffffffff
  7c0b38:	0f 85 83 00 00 00    	jne    0x7c0bc1
  7c0b3e:	80 3d 50 96 1d 01 00 	cmp    BYTE PTR ds:0x11d9650,0x0
  7c0b45:	56                   	push   esi
  7c0b46:	be 39 30 00 00       	mov    esi,0x3039
  7c0b4b:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
  7c0b4f:	74 1b                	je     0x7c0b6c
  7c0b51:	b9 98 42 16 01       	mov    ecx,0x1164298
  7c0b56:	e8 f5 00 00 00       	call   0x7c0c50
  7c0b5b:	d8 0d f0 7b 01 01    	fmul   DWORD PTR ds:0x1017bf0
  7c0b61:	e8 ba ea 7b 00       	call   0xf7f620
  7c0b66:	8b f0                	mov    esi,eax
  7c0b68:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  7c0b6c:	6a 00                	push   0x0
  7c0b6e:	ff 15 f0 65 f9 00    	call   DWORD PTR ds:0xf965f0
  7c0b74:	83 c4 04             	add    esp,0x4
  7c0b77:	3b f0                	cmp    esi,eax
  7c0b79:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  7c0b7d:	5e                   	pop    esi
  7c0b7e:	7e 20                	jle    0x7c0ba0
  7c0b80:	db 04 24             	fild   DWORD PTR [esp]
  7c0b83:	83 ec 08             	sub    esp,0x8
  7c0b86:	da 74 24 10          	fidiv  DWORD PTR [esp+0x10]
  7c0b8a:	dd 1c 24             	fstp   QWORD PTR [esp]
  7c0b8d:	e8 fe 00 00 00       	call   0x7c0c90
  7c0b92:	83 c4 08             	add    esp,0x8
  7c0b95:	c6 05 50 96 1d 01 01 	mov    BYTE PTR ds:0x11d9650,0x1
  7c0b9c:	59                   	pop    ecx
  7c0b9d:	c2 04 00             	ret    0x4
  7c0ba0:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
  7c0ba4:	83 ec 08             	sub    esp,0x8
  7c0ba7:	da 74 24 08          	fidiv  DWORD PTR [esp+0x8]
  7c0bab:	dd 1c 24             	fstp   QWORD PTR [esp]
  7c0bae:	e8 dd 00 00 00       	call   0x7c0c90
  7c0bb3:	83 c4 08             	add    esp,0x8
  7c0bb6:	c6 05 50 96 1d 01 01 	mov    BYTE PTR ds:0x11d9650,0x1
  7c0bbd:	59                   	pop    ecx
  7c0bbe:	c2 04 00             	ret    0x4
  7c0bc1:	83 f8 01             	cmp    eax,0x1
  7c0bc4:	7f 05                	jg     0x7c0bcb
  7c0bc6:	b8 01 00 00 00       	mov    eax,0x1
  7c0bcb:	50                   	push   eax
  7c0bcc:	e8 4f 01 00 00       	call   0x7c0d20
  7c0bd1:	83 c4 04             	add    esp,0x4
  7c0bd4:	c6 05 50 96 1d 01 01 	mov    BYTE PTR ds:0x11d9650,0x1
  7c0bdb:	59                   	pop    ecx
  7c0bdc:	c2 04 00             	ret    0x4

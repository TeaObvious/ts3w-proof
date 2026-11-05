# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c0c50 <.text+0x3bfc50>:
  7c0c50:	51                   	push   ecx
  7c0c51:	56                   	push   esi
  7c0c52:	e8 a9 ff ff ff       	call   0x7c0c00
  7c0c57:	d8 0d c0 d2 fc 00    	fmul   DWORD PTR ds:0xfcd2c0
  7c0c5d:	e8 be e9 7b 00       	call   0xf7f620
  7c0c62:	8b f0                	mov    esi,eax
  7c0c64:	d9 04 b5 68 96 1d 01 	fld    DWORD PTR [esi*4+0x11d9668]
  7c0c6b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7c0c6f:	e8 8c ff ff ff       	call   0x7c0c00
  7c0c74:	d9 1c b5 68 96 1d 01 	fstp   DWORD PTR [esi*4+0x11d9668]
  7c0c7b:	5e                   	pop    esi
  7c0c7c:	d9 04 24             	fld    DWORD PTR [esp]
  7c0c7f:	59                   	pop    ecx
  7c0c80:	c3                   	ret

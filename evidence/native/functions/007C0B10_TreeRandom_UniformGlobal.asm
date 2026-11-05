# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c0b10 <.text+0x3bfb10>:
  7c0b10:	b9 98 42 16 01       	mov    ecx,0x1164298
  7c0b15:	e8 36 01 00 00       	call   0x7c0c50
  7c0b1a:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  7c0b1e:	d9 44 24 04          	fld    DWORD PTR [esp+0x4]
  7c0b22:	dc e9                	fsub   st(1),st
  7c0b24:	d9 ca                	fxch   st(2)
  7c0b26:	de c9                	fmulp  st(1),st
  7c0b28:	de c1                	faddp  st(1),st
  7c0b2a:	c2 08 00             	ret    0x8

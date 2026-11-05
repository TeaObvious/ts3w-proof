# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00ec5b70 (IntroMovie_OpenMaxisLogo)
Complete function body: 0x00ec5b70..0x00ec5bbd (exclusive end)
Ghidra body ranges: [[00ec5b70, 00ec5bbc]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ec5b70 <.text+0xac4b70>:
  ec5b70:	56                                              	push   esi
  ec5b71:	8b f1                                           	mov    esi,ecx
  ec5b73:	e8 78 69 58 ff                                  	call   0x44c4f0
  ec5b78:	85 c0                                           	test   eax,eax
  ec5b7a:	74 16                                           	je     0xec5b92
  ec5b7c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec5b7e:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  ec5b81:	6a 00                                           	push   0x0
  ec5b83:	6a 00                                           	push   0x0
  ec5b85:	68 e5 8b 16 06                                  	push   0x6168be5
  ec5b8a:	8d 4e 10                                        	lea    ecx,[esi+0x10]
  ec5b8d:	51                                              	push   ecx
  ec5b8e:	8b c8                                           	mov    ecx,eax
  ec5b90:	ff d2                                           	call   edx
  ec5b92:	68 08 4f 0f 01                                  	push   0x10f4f08
  ec5b97:	e8 14 fa ff ff                                  	call   0xec55b0
  ec5b9c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ec5b9f:	68 80 02 00 00                                  	push   0x280
  ec5ba4:	68 00 04 00 00                                  	push   0x400
  ec5ba9:	68 f4 4e 0f 01                                  	push   0x10f4ef4
  ec5bae:	8d 4e 10                                        	lea    ecx,[esi+0x10]
  ec5bb1:	e8 ca fb ff ff                                  	call   0xec5780
  ec5bb6:	84 c0                                           	test   al,al
  ec5bb8:	0f 95 c0                                        	setne  al
  ec5bbb:	5e                                              	pop    esi
  ec5bbc:	c3                                              	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d69a00 <.text+0x968a00>:
  d69a00:	53                   	push   ebx
  d69a01:	55                   	push   ebp
  d69a02:	56                   	push   esi
  d69a03:	8b d9                	mov    ebx,ecx
  d69a05:	57                   	push   edi
  d69a06:	8d ab 80 09 00 00    	lea    ebp,[ebx+0x980]
  d69a0c:	55                   	push   ebp
  d69a0d:	ff 15 2c 61 f9 00    	call   DWORD PTR ds:0xf9612c
  d69a13:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  d69a17:	8d bb 24 09 00 00    	lea    edi,[ebx+0x924]
  d69a1d:	b9 17 00 00 00       	mov    ecx,0x17
  d69a22:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d69a24:	b8 01 00 00 00       	mov    eax,0x1
  d69a29:	81 c3 a0 09 00 00    	add    ebx,0x9a0
  d69a2f:	87 03                	xchg   DWORD PTR [ebx],eax
  d69a31:	55                   	push   ebp
  d69a32:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  d69a38:	5f                   	pop    edi
  d69a39:	5e                   	pop    esi
  d69a3a:	5d                   	pop    ebp
  d69a3b:	5b                   	pop    ebx
  d69a3c:	c2 04 00             	ret    0x4

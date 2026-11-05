# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d699d0 <.text+0x9689d0>:
  d699d0:	53                   	push   ebx
  d699d1:	56                   	push   esi
  d699d2:	8b f1                	mov    esi,ecx
  d699d4:	57                   	push   edi
  d699d5:	8d 9e 80 09 00 00    	lea    ebx,[esi+0x980]
  d699db:	53                   	push   ebx
  d699dc:	ff 15 2c 61 f9 00    	call   DWORD PTR ds:0xf9612c
  d699e2:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  d699e6:	81 c6 24 09 00 00    	add    esi,0x924
  d699ec:	b9 17 00 00 00       	mov    ecx,0x17
  d699f1:	53                   	push   ebx
  d699f2:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d699f4:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  d699fa:	5f                   	pop    edi
  d699fb:	5e                   	pop    esi
  d699fc:	5b                   	pop    ebx
  d699fd:	c2 04 00             	ret    0x4

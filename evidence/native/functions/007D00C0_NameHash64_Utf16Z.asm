# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d00c0 <.text+0x3cf0c0>:
  7d00c0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  7d00c4:	8b c2                	mov    eax,edx
  7d00c6:	56                   	push   esi
  7d00c7:	8d 70 02             	lea    esi,[eax+0x2]
  7d00ca:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  7d00d0:	66 8b 08             	mov    cx,WORD PTR [eax]
  7d00d3:	83 c0 02             	add    eax,0x2
  7d00d6:	66 85 c9             	test   cx,cx
  7d00d9:	75 f5                	jne    0x7d00d0
  7d00db:	2b c6                	sub    eax,esi
  7d00dd:	d1 f8                	sar    eax,1
  7d00df:	50                   	push   eax
  7d00e0:	52                   	push   edx
  7d00e1:	e8 9a fe ff ff       	call   0x7cff80
  7d00e6:	83 c4 08             	add    esp,0x8
  7d00e9:	5e                   	pop    esi
  7d00ea:	c3                   	ret

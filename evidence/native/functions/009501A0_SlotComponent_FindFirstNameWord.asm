# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009501a0 <.text+0x54f1a0>:
  9501a0:	55                   	push   ebp
  9501a1:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
  9501a5:	85 ed                	test   ebp,ebp
  9501a7:	57                   	push   edi
  9501a8:	8b f9                	mov    edi,ecx
  9501aa:	75 07                	jne    0x9501b3
  9501ac:	5f                   	pop    edi
  9501ad:	33 c0                	xor    eax,eax
  9501af:	5d                   	pop    ebp
  9501b0:	c2 04 00             	ret    0x4
  9501b3:	53                   	push   ebx
  9501b4:	56                   	push   esi
  9501b5:	8b 77 58             	mov    esi,DWORD PTR [edi+0x58]
  9501b8:	2b 77 54             	sub    esi,DWORD PTR [edi+0x54]
  9501bb:	bb 00 00 00 00       	mov    ebx,0x0
  9501c0:	c1 fe 02             	sar    esi,0x2
  9501c3:	03 77 28             	add    esi,DWORD PTR [edi+0x28]
  9501c6:	03 77 20             	add    esi,DWORD PTR [edi+0x20]
  9501c9:	03 77 18             	add    esi,DWORD PTR [edi+0x18]
  9501cc:	03 77 10             	add    esi,DWORD PTR [edi+0x10]
  9501cf:	03 77 08             	add    esi,DWORD PTR [edi+0x8]
  9501d2:	74 14                	je     0x9501e8
  9501d4:	53                   	push   ebx
  9501d5:	8b cf                	mov    ecx,edi
  9501d7:	e8 34 ff ff ff       	call   0x950110
  9501dc:	39 68 04             	cmp    DWORD PTR [eax+0x4],ebp
  9501df:	74 09                	je     0x9501ea
  9501e1:	83 c3 01             	add    ebx,0x1
  9501e4:	3b de                	cmp    ebx,esi
  9501e6:	72 ec                	jb     0x9501d4
  9501e8:	33 c0                	xor    eax,eax
  9501ea:	5e                   	pop    esi
  9501eb:	5b                   	pop    ebx
  9501ec:	5f                   	pop    edi
  9501ed:	5d                   	pop    ebp
  9501ee:	c2 04 00             	ret    0x4

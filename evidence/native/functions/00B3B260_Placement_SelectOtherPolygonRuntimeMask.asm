# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b3b260 <.text+0x73a260>:
  b3b260:	56                   	push   esi
  b3b261:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  b3b265:	57                   	push   edi
  b3b266:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  b3b26a:	80 7f 2d 00          	cmp    BYTE PTR [edi+0x2d],0x0
  b3b26e:	74 15                	je     0xb3b285
  b3b270:	85 f6                	test   esi,esi
  b3b272:	74 11                	je     0xb3b285
  b3b274:	8b ce                	mov    ecx,esi
  b3b276:	e8 45 c5 15 00       	call   0xc977c0
  b3b27b:	84 c0                	test   al,al
  b3b27d:	74 06                	je     0xb3b285
  b3b27f:	5f                   	pop    edi
  b3b280:	83 c8 ff             	or     eax,0xffffffff
  b3b283:	5e                   	pop    esi
  b3b284:	c3                   	ret
  b3b285:	80 7f 2c 00          	cmp    BYTE PTR [edi+0x2c],0x0
  b3b289:	74 17                	je     0xb3b2a2
  b3b28b:	85 f6                	test   esi,esi
  b3b28d:	74 0b                	je     0xb3b29a
  b3b28f:	8b ce                	mov    ecx,esi
  b3b291:	e8 2a c5 15 00       	call   0xc977c0
  b3b296:	84 c0                	test   al,al
  b3b298:	75 08                	jne    0xb3b2a2
  b3b29a:	5f                   	pop    edi
  b3b29b:	b8 06 00 00 00       	mov    eax,0x6
  b3b2a0:	5e                   	pop    esi
  b3b2a1:	c3                   	ret
  b3b2a2:	5f                   	pop    edi
  b3b2a3:	b8 05 00 00 00       	mov    eax,0x5
  b3b2a8:	5e                   	pop    esi
  b3b2a9:	c3                   	ret

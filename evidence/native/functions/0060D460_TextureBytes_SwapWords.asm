# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060d460 <.text+0x20c460>:
  60d460:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  60d464:	d1 e8                	shr    eax,1
  60d466:	56                   	push   esi
  60d467:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  60d46b:	57                   	push   edi
  60d46c:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  60d470:	74 18                	je     0x60d48a
  60d472:	0f b7 0e             	movzx  ecx,WORD PTR [esi]
  60d475:	8a f1                	mov    dh,cl
  60d477:	83 e8 01             	sub    eax,0x1
  60d47a:	83 c6 02             	add    esi,0x2
  60d47d:	83 c7 02             	add    edi,0x2
  60d480:	85 c0                	test   eax,eax
  60d482:	8a d5                	mov    dl,ch
  60d484:	66 89 57 fe          	mov    WORD PTR [edi-0x2],dx
  60d488:	75 e8                	jne    0x60d472
  60d48a:	5f                   	pop    edi
  60d48b:	5e                   	pop    esi
  60d48c:	c3                   	ret

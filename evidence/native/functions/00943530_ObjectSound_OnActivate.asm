# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00943530 <.text+0x542530>:
  943530:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  943534:	85 c9                	test   ecx,ecx
  943536:	74 1c                	je     0x943554
  943538:	a1 70 9e 1e 01       	mov    eax,ds:0x11e9e70
  94353d:	50                   	push   eax
  94353e:	e8 1d 0d ff ff       	call   0x934260
  943543:	85 c0                	test   eax,eax
  943545:	74 0d                	je     0x943554
  943547:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  94354b:	51                   	push   ecx
  94354c:	8b c8                	mov    ecx,eax
  94354e:	e8 dd fe ff ff       	call   0x943430
  943553:	c3                   	ret
  943554:	b0 01                	mov    al,0x1
  943556:	c3                   	ret

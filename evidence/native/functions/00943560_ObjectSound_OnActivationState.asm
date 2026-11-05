# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00943560 <.text+0x542560>:
  943560:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  943564:	85 c9                	test   ecx,ecx
  943566:	74 2a                	je     0x943592
  943568:	a1 70 9e 1e 01       	mov    eax,ds:0x11e9e70
  94356d:	50                   	push   eax
  94356e:	e8 ed 0c ff ff       	call   0x934260
  943573:	8b c8                	mov    ecx,eax
  943575:	85 c9                	test   ecx,ecx
  943577:	74 19                	je     0x943592
  943579:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  94357d:	83 7a 08 00          	cmp    DWORD PTR [edx+0x8],0x0
  943581:	6a 00                	push   0x0
  943583:	74 08                	je     0x94358d
  943585:	e8 a6 fe ff ff       	call   0x943430
  94358a:	b0 01                	mov    al,0x1
  94358c:	c3                   	ret
  94358d:	e8 5e ed ff ff       	call   0x9422f0
  943592:	b0 01                	mov    al,0x1
  943594:	c3                   	ret

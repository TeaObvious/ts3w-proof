# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942420 <.text+0x541420>:
  942420:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  942424:	85 c9                	test   ecx,ecx
  942426:	74 1c                	je     0x942444
  942428:	a1 70 9e 1e 01       	mov    eax,ds:0x11e9e70
  94242d:	50                   	push   eax
  94242e:	e8 2d 1e ff ff       	call   0x934260
  942433:	85 c0                	test   eax,eax
  942435:	74 0d                	je     0x942444
  942437:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  94243b:	51                   	push   ecx
  94243c:	8b c8                	mov    ecx,eax
  94243e:	e8 ad fe ff ff       	call   0x9422f0
  942443:	c3                   	ret
  942444:	b0 01                	mov    al,0x1
  942446:	c3                   	ret

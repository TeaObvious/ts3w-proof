# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00950350 <.text+0x54f350>:
  950350:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  950354:	50                   	push   eax
  950355:	e8 46 fe ff ff       	call   0x9501a0
  95035a:	85 c0                	test   eax,eax
  95035c:	74 23                	je     0x950381
  95035e:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  950363:	74 13                	je     0x950378
  950365:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  950369:	09 48 08             	or     DWORD PTR [eax+0x8],ecx
  95036c:	33 c9                	xor    ecx,ecx
  95036e:	85 c0                	test   eax,eax
  950370:	0f 95 c1             	setne  cl
  950373:	8a c1                	mov    al,cl
  950375:	c2 0c 00             	ret    0xc
  950378:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  95037c:	f7 d2                	not    edx
  95037e:	21 50 08             	and    DWORD PTR [eax+0x8],edx
  950381:	33 c9                	xor    ecx,ecx
  950383:	85 c0                	test   eax,eax
  950385:	0f 95 c1             	setne  cl
  950388:	8a c1                	mov    al,cl
  95038a:	c2 0c 00             	ret    0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942470 <.text+0x541470>:
  942470:	56                   	push   esi
  942471:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  942475:	57                   	push   edi
  942476:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  94247a:	3b f7                	cmp    esi,edi
  94247c:	73 23                	jae    0x9424a1
  94247e:	8b ff                	mov    edi,edi
  942480:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  942483:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  942486:	2b c8                	sub    ecx,eax
  942488:	83 f9 01             	cmp    ecx,0x1
  94248b:	7e 0d                	jle    0x94249a
  94248d:	85 c0                	test   eax,eax
  94248f:	74 09                	je     0x94249a
  942491:	50                   	push   eax
  942492:	e8 49 20 ba ff       	call   0x4e44e0
  942497:	83 c4 04             	add    esp,0x4
  94249a:	83 c6 14             	add    esi,0x14
  94249d:	3b f7                	cmp    esi,edi
  94249f:	72 df                	jb     0x942480
  9424a1:	5f                   	pop    edi
  9424a2:	5e                   	pop    esi
  9424a3:	c2 08 00             	ret    0x8

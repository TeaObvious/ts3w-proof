# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006194f0 <.text+0x2184f0>:
  6194f0:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  6194f4:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  6194f8:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  6194fc:	d3 e8                	shr    eax,cl
  6194fe:	d3 ea                	shr    edx,cl
  619500:	85 c0                	test   eax,eax
  619502:	75 05                	jne    0x619509
  619504:	b8 01 00 00 00       	mov    eax,0x1
  619509:	85 d2                	test   edx,edx
  61950b:	75 05                	jne    0x619512
  61950d:	ba 01 00 00 00       	mov    edx,0x1
  619512:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  619516:	85 c9                	test   ecx,ecx
  619518:	74 02                	je     0x61951c
  61951a:	89 01                	mov    DWORD PTR [ecx],eax
  61951c:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  619520:	85 c0                	test   eax,eax
  619522:	74 02                	je     0x619526
  619524:	89 10                	mov    DWORD PTR [eax],edx
  619526:	c3                   	ret

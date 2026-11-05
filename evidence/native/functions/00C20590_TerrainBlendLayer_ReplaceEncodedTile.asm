# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c20590 <.text+0x81f590>:
  c20590:	56                   	push   esi
  c20591:	8b f1                	mov    esi,ecx
  c20593:	8b 06                	mov    eax,DWORD PTR [esi]
  c20595:	57                   	push   edi
  c20596:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  c2059a:	8b 04 b8             	mov    eax,DWORD PTR [eax+edi*4]
  c2059d:	85 c0                	test   eax,eax
  c2059f:	74 2a                	je     0xc205cb
  c205a1:	3d ff 00 00 00       	cmp    eax,0xff
  c205a6:	76 0c                	jbe    0xc205b4
  c205a8:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  c205ae:	50                   	push   eax
  c205af:	e8 bc 58 8c ff       	call   0x4e5e70
  c205b4:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c205b6:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  c205ba:	c7 04 b9 00 00 00 00 	mov    DWORD PTR [ecx+edi*4],0x0
  c205c1:	8b 16                	mov    edx,DWORD PTR [esi]
  c205c3:	89 04 ba             	mov    DWORD PTR [edx+edi*4],eax
  c205c6:	5f                   	pop    edi
  c205c7:	5e                   	pop    esi
  c205c8:	c2 08 00             	ret    0x8
  c205cb:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c205cd:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  c205d1:	89 14 b9             	mov    DWORD PTR [ecx+edi*4],edx
  c205d4:	5f                   	pop    edi
  c205d5:	5e                   	pop    esi
  c205d6:	c2 08 00             	ret    0x8

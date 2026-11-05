# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c20390 <.text+0x81f390>:
  c20390:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  c20394:	56                   	push   esi
  c20395:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  c20399:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  c2039f:	8b 01                	mov    eax,DWORD PTR [ecx]
  c203a1:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  c203a4:	6a 04                	push   0x4
  c203a6:	56                   	push   esi
  c203a7:	ff d2                	call   edx
  c203a9:	83 f8 04             	cmp    eax,0x4
  c203ac:	74 06                	je     0xc203b4
  c203ae:	32 c0                	xor    al,al
  c203b0:	5e                   	pop    esi
  c203b1:	c2 0c 00             	ret    0xc
  c203b4:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c203b8:	c7 01 01 00 00 00    	mov    DWORD PTR [ecx],0x1
  c203be:	8b 06                	mov    eax,DWORD PTR [esi]
  c203c0:	0f b7 d0             	movzx  edx,ax
  c203c3:	81 fa a5 ff 00 00    	cmp    edx,0xffa5
  c203c9:	75 0e                	jne    0xc203d9
  c203cb:	c7 01 00 00 00 00    	mov    DWORD PTR [ecx],0x0
  c203d1:	8b 06                	mov    eax,DWORD PTR [esi]
  c203d3:	0f c8                	bswap  eax
  c203d5:	89 06                	mov    DWORD PTR [esi],eax
  c203d7:	eb 0c                	jmp    0xc203e5
  c203d9:	25 00 00 ff ff       	and    eax,0xffff0000
  c203de:	3d 00 00 ff a5       	cmp    eax,0xa5ff0000
  c203e3:	75 c9                	jne    0xc203ae
  c203e5:	8b 36                	mov    esi,DWORD PTR [esi]
  c203e7:	81 fe 00 01 ff a5    	cmp    esi,0xa5ff0100
  c203ed:	72 bf                	jb     0xc203ae
  c203ef:	81 e6 00 ff ff ff    	and    esi,0xffffff00
  c203f5:	81 fe 00 03 ff a5    	cmp    esi,0xa5ff0300
  c203fb:	0f 96 c0             	setbe  al
  c203fe:	5e                   	pop    esi
  c203ff:	c2 0c 00             	ret    0xc

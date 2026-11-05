# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942670 <.text+0x541670>:
  942670:	55                   	push   ebp
  942671:	8b ec                	mov    ebp,esp
  942673:	83 e4 f0             	and    esp,0xfffffff0
  942676:	8b c1                	mov    eax,ecx
  942678:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  94267b:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  94267e:	c7 00 28 46 04 01    	mov    DWORD PTR [eax],0x1044628
  942684:	c7 40 2c 7c 99 f9 00 	mov    DWORD PTR [eax+0x2c],0xf9997c
  94268b:	8d 48 34             	lea    ecx,[eax+0x34]
  94268e:	89 48 30             	mov    DWORD PTR [eax+0x30],ecx
  942691:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  942694:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  942697:	83 c1 14             	add    ecx,0x14
  94269a:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  94269d:	c7 40 2c c8 aa f9 00 	mov    DWORD PTR [eax+0x2c],0xf9aac8
  9426a4:	33 c9                	xor    ecx,ecx
  9426a6:	0f 57 c0             	xorps  xmm0,xmm0
  9426a9:	89 48 48             	mov    DWORD PTR [eax+0x48],ecx
  9426ac:	88 48 4c             	mov    BYTE PTR [eax+0x4c],cl
  9426af:	88 48 4d             	mov    BYTE PTR [eax+0x4d],cl
  9426b2:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  9426b6:	c7 40 2c 08 46 04 01 	mov    DWORD PTR [eax+0x2c],0x1044608
  9426bd:	8b e5                	mov    esp,ebp
  9426bf:	5d                   	pop    ebp
  9426c0:	c2 04 00             	ret    0x4

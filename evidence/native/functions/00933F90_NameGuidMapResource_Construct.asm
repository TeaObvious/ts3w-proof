# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00933f90 <.text+0x532f90>:
  933f90:	8b c1                	mov    eax,ecx
  933f92:	c7 00 14 3c fb 00    	mov    DWORD PTR [eax],0xfb3c14
  933f98:	33 c9                	xor    ecx,ecx
  933f9a:	8d 50 04             	lea    edx,[eax+0x4]
  933f9d:	87 0a                	xchg   DWORD PTR [edx],ecx
  933f9f:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  933fa6:	00 
  933fa7:	33 c9                	xor    ecx,ecx
  933fa9:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  933fac:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  933faf:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  933fb2:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  933fb5:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  933fb8:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  933fbb:	89 48 1c             	mov    DWORD PTR [eax+0x1c],ecx
  933fbe:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
  933fc1:	c7 00 8c 3c 04 01    	mov    DWORD PTR [eax],0x1043c8c
  933fc7:	f3 0f 11 40 38       	movss  DWORD PTR [eax+0x38],xmm0
  933fcc:	f3 0f 10 05 88 fd 03 	movss  xmm0,DWORD PTR ds:0x103fd88
  933fd3:	01 
  933fd4:	f3 0f 11 40 3c       	movss  DWORD PTR [eax+0x3c],xmm0
  933fd9:	c7 40 44 70 3c 04 01 	mov    DWORD PTR [eax+0x44],0x1043c70
  933fe0:	c7 40 30 01 00 00 00 	mov    DWORD PTR [eax+0x30],0x1
  933fe7:	c7 40 2c 00 d9 14 01 	mov    DWORD PTR [eax+0x2c],0x114d900
  933fee:	89 48 34             	mov    DWORD PTR [eax+0x34],ecx
  933ff1:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  933ff4:	c3                   	ret

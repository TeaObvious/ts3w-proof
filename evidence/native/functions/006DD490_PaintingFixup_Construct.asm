# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006dd490 <.text+0x2dc490>:
  6dd490:	8b c1                	mov    eax,ecx
  6dd492:	c7 00 dc 0f ff 00    	mov    DWORD PTR [eax],0xff0fdc
  6dd498:	33 c9                	xor    ecx,ecx
  6dd49a:	8d 50 04             	lea    edx,[eax+0x4]
  6dd49d:	87 0a                	xchg   DWORD PTR [edx],ecx
  6dd49f:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  6dd4a3:	c7 00 dc 7f ff 00    	mov    DWORD PTR [eax],0xff7fdc
  6dd4a9:	8b 11                	mov    edx,DWORD PTR [ecx]
  6dd4ab:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  6dd4ae:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  6dd4b1:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  6dd4b4:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  6dd4b7:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
  6dd4ba:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  6dd4bd:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  6dd4c1:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  6dd4c4:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
  6dd4c7:	c2 08 00             	ret    0x8

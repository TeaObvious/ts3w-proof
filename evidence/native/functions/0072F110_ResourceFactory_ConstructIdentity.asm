# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0072f110 <.text+0x32e110>:
  72f110:	8b c1                	mov    eax,ecx
  72f112:	c7 00 f4 31 fb 00    	mov    DWORD PTR [eax],0xfb31f4
  72f118:	33 c9                	xor    ecx,ecx
  72f11a:	8d 50 04             	lea    edx,[eax+0x4]
  72f11d:	87 0a                	xchg   DWORD PTR [edx],ecx
  72f11f:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  72f123:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  72f127:	c7 00 88 eb ff 00    	mov    DWORD PTR [eax],0xffeb88
  72f12d:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  72f130:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  72f133:	c2 08 00             	ret    0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068f0f0 <.text+0x28e0f0>:
  68f0f0:	8b 51 50             	mov    edx,DWORD PTR [ecx+0x50]
  68f0f3:	85 d2                	test   edx,edx
  68f0f5:	74 2f                	je     0x68f126
  68f0f7:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  68f0fb:	3b 41 54             	cmp    eax,DWORD PTR [ecx+0x54]
  68f0fe:	7d 26                	jge    0x68f126
  68f100:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  68f104:	8d 04 80             	lea    eax,[eax+eax*4]
  68f107:	8d 04 82             	lea    eax,[edx+eax*4]
  68f10a:	8b 11                	mov    edx,DWORD PTR [ecx]
  68f10c:	89 10                	mov    DWORD PTR [eax],edx
  68f10e:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  68f111:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  68f114:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  68f117:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  68f11a:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  68f11d:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  68f120:	8b 49 10             	mov    ecx,DWORD PTR [ecx+0x10]
  68f123:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  68f126:	c2 08 00             	ret    0x8

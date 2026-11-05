# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095f680 <.text+0x55e680>:
  95f680:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  95f684:	85 c0                	test   eax,eax
  95f686:	74 26                	je     0x95f6ae
  95f688:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  95f68c:	8b 11                	mov    edx,DWORD PTR [ecx]
  95f68e:	89 10                	mov    DWORD PTR [eax],edx
  95f690:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  95f693:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  95f696:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  95f699:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  95f69c:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  95f69f:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  95f6a2:	8b 51 10             	mov    edx,DWORD PTR [ecx+0x10]
  95f6a5:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
  95f6a8:	8b 49 14             	mov    ecx,DWORD PTR [ecx+0x14]
  95f6ab:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  95f6ae:	c2 08 00             	ret    0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093ad70 <.text+0x539d70>:
  93ad70:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  93ad73:	8b 11                	mov    edx,DWORD PTR [ecx]
  93ad75:	85 d2                	test   edx,edx
  93ad77:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  93ad7b:	89 10                	mov    DWORD PTR [eax],edx
  93ad7d:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  93ad80:	75 21                	jne    0x93ada3
  93ad82:	83 c1 04             	add    ecx,0x4
  93ad85:	39 11                	cmp    DWORD PTR [ecx],edx
  93ad87:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  93ad8a:	75 10                	jne    0x93ad9c
  93ad8c:	b9 04 00 00 00       	mov    ecx,0x4
  93ad91:	01 48 04             	add    DWORD PTR [eax+0x4],ecx
  93ad94:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  93ad97:	83 3a 00             	cmp    DWORD PTR [edx],0x0
  93ad9a:	74 f5                	je     0x93ad91
  93ad9c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  93ad9f:	8b 11                	mov    edx,DWORD PTR [ecx]
  93ada1:	89 10                	mov    DWORD PTR [eax],edx
  93ada3:	c2 04 00             	ret    0x4

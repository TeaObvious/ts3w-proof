# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0095f210 (VisualState_PostOpacityTransition)
Full Ghidra function-body envelope: 0x0095f210..0x0095f27b (exclusive end)
Ghidra body ranges: [[0095f210, 0095f27a]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095f210 <.text+0x55e210>:
  95f210:	55                   	push   ebp
  95f211:	8b ec                	mov    ebp,esp
  95f213:	83 e4 f0             	and    esp,0xfffffff0
  95f216:	83 ec 50             	sub    esp,0x50
  95f219:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  95f21c:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  95f21f:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  95f222:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  95f225:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  95f229:	8b 08                	mov    ecx,DWORD PTR [eax]
  95f22b:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  95f22f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  95f232:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  95f236:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  95f239:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  95f23d:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  95f240:	8d 04 24             	lea    eax,[esp]
  95f243:	50                   	push   eax
  95f244:	c7 44 24 04 25 23 8a 04 	mov    DWORD PTR [esp+0x4],0x48a2325
  95f24c:	c7 44 24 08 3c 6b 15 01 	mov    DWORD PTR [esp+0x8],0x1156b3c
  95f254:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  95f258:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  95f25c:	e8 1f 41 d3 ff       	call   0x693380
  95f261:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  95f265:	83 c4 04             	add    esp,0x4
  95f268:	85 c9                	test   ecx,ecx
  95f26a:	74 0b                	je     0x95f277
  95f26c:	8b 11                	mov    edx,DWORD PTR [ecx]
  95f26e:	8b 12                	mov    edx,DWORD PTR [edx]
  95f270:	8d 44 24 10          	lea    eax,[esp+0x10]
  95f274:	50                   	push   eax
  95f275:	ff d2                	call   edx
  95f277:	8b e5                	mov    esp,ebp
  95f279:	5d                   	pop    ebp
  95f27a:	c3                   	ret

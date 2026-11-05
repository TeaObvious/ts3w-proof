# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x00947ce0,0x00947d4d); analyst name LightingComponent_QueueResourceKey.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00947ce0 <.text+0x546ce0>:
  947ce0:	55                   	push   ebp
  947ce1:	8b ec                	mov    ebp,esp
  947ce3:	83 e4 f0             	and    esp,0xfffffff0
  947ce6:	83 ec 50             	sub    esp,0x50
  947ce9:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  947cec:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  947cef:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  947cf2:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  947cf6:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  947cf9:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  947cfd:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  947d00:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  947d04:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
  947d07:	8b 49 14             	mov    ecx,DWORD PTR [ecx+0x14]
  947d0a:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  947d0e:	8d 14 24             	lea    edx,[esp]
  947d11:	52                   	push   edx
  947d12:	c7 44 24 04 33 a1 61 	mov    DWORD PTR [esp+0x4],0x1361a133
  947d19:	13 
  947d1a:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  947d21:	00 
  947d22:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  947d26:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  947d2a:	e8 51 b6 d4 ff       	call   0x693380
  947d2f:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  947d33:	83 c4 04             	add    esp,0x4
  947d36:	85 c9                	test   ecx,ecx
  947d38:	74 0b                	je     0x947d45
  947d3a:	8b 01                	mov    eax,DWORD PTR [ecx]
  947d3c:	8b 00                	mov    eax,DWORD PTR [eax]
  947d3e:	8d 54 24 10          	lea    edx,[esp+0x10]
  947d42:	52                   	push   edx
  947d43:	ff d0                	call   eax
  947d45:	b0 01                	mov    al,0x1
  947d47:	8b e5                	mov    esp,ebp
  947d49:	5d                   	pop    ebp
  947d4a:	c2 04 00             	ret    0x4

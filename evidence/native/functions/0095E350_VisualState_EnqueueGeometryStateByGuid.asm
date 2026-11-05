# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095e350 <.text+0x55d350>:
  95e350:	55                   	push   ebp
  95e351:	8b ec                	mov    ebp,esp
  95e353:	83 e4 f0             	and    esp,0xfffffff0
  95e356:	83 ec 50             	sub    esp,0x50
  95e359:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  95e35c:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  95e35f:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  95e362:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  95e366:	8b 41 14             	mov    eax,DWORD PTR [ecx+0x14]
  95e369:	8d 0c 24             	lea    ecx,[esp]
  95e36c:	51                   	push   ecx
  95e36d:	c7 44 24 04 70 81 d1 	mov    DWORD PTR [esp+0x4],0x4d18170
  95e374:	04 
  95e375:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  95e37c:	00 
  95e37d:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  95e381:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  95e385:	e8 f6 4f d3 ff       	call   0x693380
  95e38a:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  95e38e:	83 c4 04             	add    esp,0x4
  95e391:	85 c9                	test   ecx,ecx
  95e393:	74 0b                	je     0x95e3a0
  95e395:	8b 11                	mov    edx,DWORD PTR [ecx]
  95e397:	8b 12                	mov    edx,DWORD PTR [edx]
  95e399:	8d 44 24 10          	lea    eax,[esp+0x10]
  95e39d:	50                   	push   eax
  95e39e:	ff d2                	call   edx
  95e3a0:	8b e5                	mov    esp,ebp
  95e3a2:	5d                   	pop    ebp
  95e3a3:	c3                   	ret

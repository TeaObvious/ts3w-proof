# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c22250 <.text+0x821250>:
  c22250:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  c22254:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  c22258:	56                   	push   esi
  c22259:	8b f1                	mov    esi,ecx
  c2225b:	8d 48 ff             	lea    ecx,[eax-0x1]
  c2225e:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  c22261:	8d 42 ff             	lea    eax,[edx-0x1]
  c22264:	c1 e8 04             	shr    eax,0x4
  c22267:	c1 e9 04             	shr    ecx,0x4
  c2226a:	83 c1 01             	add    ecx,0x1
  c2226d:	83 c0 01             	add    eax,0x1
  c22270:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  c22273:	0f af c1             	imul   eax,ecx
  c22276:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  c22279:	6a 02                	push   0x2
  c2227b:	8d 4e 2c             	lea    ecx,[esi+0x2c]
  c2227e:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  c22281:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  c22284:	e8 67 ff ff ff       	call   0xc221f0
  c22289:	6a 02                	push   0x2
  c2228b:	8d 4e 3c             	lea    ecx,[esi+0x3c]
  c2228e:	e8 5d ff ff ff       	call   0xc221f0
  c22293:	b8 ff ff ff 7f       	mov    eax,0x7fffffff
  c22298:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  c2229b:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  c2229e:	b8 00 00 00 80       	mov    eax,0x80000000
  c222a3:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  c222a6:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  c222a9:	b0 01                	mov    al,0x1
  c222ab:	5e                   	pop    esi
  c222ac:	c2 08 00             	ret    0x8

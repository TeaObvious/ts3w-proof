# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0f230 <.text+0x70e230>:
  b0f230:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  b0f234:	d9 ee                	fldz
  b0f236:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  b0f23a:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  b0f23e:	50                   	push   eax
  b0f23f:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  b0f243:	51                   	push   ecx
  b0f244:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  b0f248:	52                   	push   edx
  b0f249:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  b0f24d:	50                   	push   eax
  b0f24e:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  b0f252:	51                   	push   ecx
  b0f253:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  b0f257:	52                   	push   edx
  b0f258:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  b0f25c:	83 ec 08             	sub    esp,0x8
  b0f25f:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  b0f263:	d9 1c 24             	fstp   DWORD PTR [esp]
  b0f266:	50                   	push   eax
  b0f267:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  b0f26b:	51                   	push   ecx
  b0f26c:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  b0f270:	52                   	push   edx
  b0f271:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  b0f275:	50                   	push   eax
  b0f276:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  b0f27a:	51                   	push   ecx
  b0f27b:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  b0f27f:	52                   	push   edx
  b0f280:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  b0f284:	50                   	push   eax
  b0f285:	83 ec 0c             	sub    esp,0xc
  b0f288:	8b c4                	mov    eax,esp
  b0f28a:	89 08                	mov    DWORD PTR [eax],ecx
  b0f28c:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  b0f290:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  b0f293:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
  b0f297:	52                   	push   edx
  b0f298:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  b0f29b:	e8 90 d6 ff ff       	call   0xb0c930
  b0f2a0:	83 c4 4c             	add    esp,0x4c
  b0f2a3:	c3                   	ret

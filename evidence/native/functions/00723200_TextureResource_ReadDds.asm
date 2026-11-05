# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00723200 <.text+0x322200>:
  723200:	83 ec 0c             	sub    esp,0xc
  723203:	53                   	push   ebx
  723204:	56                   	push   esi
  723205:	8b f1                	mov    esi,ecx
  723207:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  72320b:	8b 01                	mov    eax,DWORD PTR [ecx]
  72320d:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  723210:	57                   	push   edi
  723211:	ff d2                	call   edx
  723213:	8d 7e 28             	lea    edi,[esi+0x28]
  723216:	8b cf                	mov    ecx,edi
  723218:	8b d8                	mov    ebx,eax
  72321a:	e8 b1 6f ef ff       	call   0x61a1d0
  72321f:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  723223:	8b 08                	mov    ecx,DWORD PTR [eax]
  723225:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  723228:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  72322b:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  72322f:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  723233:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  723237:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  72323b:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  72323f:	52                   	push   edx
  723240:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  723244:	8b c6                	mov    eax,esi
  723246:	f7 d8                	neg    eax
  723248:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  72324c:	51                   	push   ecx
  72324d:	1b c0                	sbb    eax,eax
  72324f:	23 c7                	and    eax,edi
  723251:	53                   	push   ebx
  723252:	50                   	push   eax
  723253:	e8 a8 ad ee ff       	call   0x60e000
  723258:	8a d8                	mov    bl,al
  72325a:	83 c4 10             	add    esp,0x10
  72325d:	84 db                	test   bl,bl
  72325f:	74 0a                	je     0x72326b
  723261:	ba 01 00 00 00       	mov    edx,0x1
  723266:	8d 46 60             	lea    eax,[esi+0x60]
  723269:	87 10                	xchg   DWORD PTR [eax],edx
  72326b:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  72326e:	85 c9                	test   ecx,ecx
  723270:	74 0d                	je     0x72327f
  723272:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  723275:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  723278:	8d 4e 30             	lea    ecx,[esi+0x30]
  72327b:	ff d0                	call   eax
  72327d:	eb 02                	jmp    0x723281
  72327f:	33 c0                	xor    eax,eax
  723281:	83 c0 68             	add    eax,0x68
  723284:	50                   	push   eax
  723285:	8b ce                	mov    ecx,esi
  723287:	e8 54 e9 00 00       	call   0x731be0
  72328c:	5f                   	pop    edi
  72328d:	5e                   	pop    esi
  72328e:	8a c3                	mov    al,bl
  723290:	5b                   	pop    ebx
  723291:	83 c4 0c             	add    esp,0xc
  723294:	c2 10 00             	ret    0x10

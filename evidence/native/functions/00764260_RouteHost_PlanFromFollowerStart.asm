# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00764260, 0x00764349); analyst name RouteHost_PlanFromFollowerStart.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00764260 <.text+0x363260>:
  764260:	83 ec 58             	sub    esp,0x58
  764263:	0f 57 c0             	xorps  xmm0,xmm0
  764266:	53                   	push   ebx
  764267:	56                   	push   esi
  764268:	33 db                	xor    ebx,ebx
  76426a:	57                   	push   edi
  76426b:	8b f1                	mov    esi,ecx
  76426d:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  764271:	50                   	push   eax
  764272:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  764276:	51                   	push   ecx
  764277:	8b ce                	mov    ecx,esi
  764279:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  76427d:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  764281:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  764285:	c7 44 24 20 ec 59 00 01 	mov    DWORD PTR [esp+0x20],0x10059ec
  76428d:	c7 44 24 24 02 00 00 00 	mov    DWORD PTR [esp+0x24],0x2
  764295:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  764299:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  76429d:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  7642a3:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  7642a9:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  7642af:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  7642b5:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  7642b9:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  7642bd:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  7642c1:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  7642c7:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  7642cd:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  7642d3:	89 5c 24 5c          	mov    DWORD PTR [esp+0x5c],ebx
  7642d7:	89 5c 24 60          	mov    DWORD PTR [esp+0x60],ebx
  7642db:	89 5c 24 64          	mov    DWORD PTR [esp+0x64],ebx
  7642df:	e8 cc 96 ff ff       	call   0x75d9b0
  7642e4:	83 f8 01             	cmp    eax,0x1
  7642e7:	74 33                	je     0x76431c
  7642e9:	55                   	push   ebp
  7642ea:	8b 6c 24 6c          	mov    ebp,DWORD PTR [esp+0x6c]
  7642ee:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  7642f2:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7642f6:	3b c3                	cmp    eax,ebx
  7642f8:	b9 12 00 00 00       	mov    ecx,0x12
  7642fd:	8d 74 24 20          	lea    esi,[esp+0x20]
  764301:	8b fd                	mov    edi,ebp
  764303:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  764305:	74 09                	je     0x764310
  764307:	50                   	push   eax
  764308:	e8 d3 01 d8 ff       	call   0x4e44e0
  76430d:	83 c4 04             	add    esp,0x4
  764310:	8b c5                	mov    eax,ebp
  764312:	5d                   	pop    ebp
  764313:	5f                   	pop    edi
  764314:	5e                   	pop    esi
  764315:	5b                   	pop    ebx
  764316:	83 c4 58             	add    esp,0x58
  764319:	c2 04 00             	ret    0x4
  76431c:	8b 7c 24 68          	mov    edi,DWORD PTR [esp+0x68]
  764320:	8d 54 24 0c          	lea    edx,[esp+0xc]
  764324:	52                   	push   edx
  764325:	57                   	push   edi
  764326:	8b ce                	mov    ecx,esi
  764328:	e8 43 c4 ff ff       	call   0x760770
  76432d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  764331:	3b c3                	cmp    eax,ebx
  764333:	74 09                	je     0x76433e
  764335:	50                   	push   eax
  764336:	e8 a5 01 d8 ff       	call   0x4e44e0
  76433b:	83 c4 04             	add    esp,0x4
  76433e:	8b c7                	mov    eax,edi
  764340:	5f                   	pop    edi
  764341:	5e                   	pop    esi
  764342:	5b                   	pop    ebx
  764343:	83 c4 58             	add    esp,0x58
  764346:	c2 04 00             	ret    0x4

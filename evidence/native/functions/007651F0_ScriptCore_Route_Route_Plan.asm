# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007651f0, 0x007652c2); analyst name ScriptCore.Route::Route_Plan.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007651f0 <.text+0x3641f0>:
  7651f0:	0f 57 c0             	xorps  xmm0,xmm0
  7651f3:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  7651f9:	83 ec 48             	sub    esp,0x48
  7651fc:	53                   	push   ebx
  7651fd:	8b 5c 24 50          	mov    ebx,DWORD PTR [esp+0x50]
  765201:	56                   	push   esi
  765202:	33 f6                	xor    esi,esi
  765204:	3b ce                	cmp    ecx,esi
  765206:	c7 03 02 00 00 00    	mov    DWORD PTR [ebx],0x2
  76520c:	89 73 04             	mov    DWORD PTR [ebx+0x4],esi
  76520f:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
  765212:	f3 0f 11 43 10       	movss  DWORD PTR [ebx+0x10],xmm0
  765217:	f3 0f 11 43 14       	movss  DWORD PTR [ebx+0x14],xmm0
  76521c:	f3 0f 11 43 18       	movss  DWORD PTR [ebx+0x18],xmm0
  765221:	f3 0f 11 43 1c       	movss  DWORD PTR [ebx+0x1c],xmm0
  765226:	89 73 20             	mov    DWORD PTR [ebx+0x20],esi
  765229:	89 73 24             	mov    DWORD PTR [ebx+0x24],esi
  76522c:	89 73 28             	mov    DWORD PTR [ebx+0x28],esi
  76522f:	f3 0f 11 43 2c       	movss  DWORD PTR [ebx+0x2c],xmm0
  765234:	f3 0f 11 43 30       	movss  DWORD PTR [ebx+0x30],xmm0
  765239:	f3 0f 11 43 34       	movss  DWORD PTR [ebx+0x34],xmm0
  76523e:	89 73 38             	mov    DWORD PTR [ebx+0x38],esi
  765241:	89 73 3c             	mov    DWORD PTR [ebx+0x3c],esi
  765244:	89 73 40             	mov    DWORD PTR [ebx+0x40],esi
  765247:	74 3f                	je     0x765288
  765249:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  76524d:	55                   	push   ebp
  76524e:	50                   	push   eax
  76524f:	e8 5c 62 fe ff       	call   0x74b4b0
  765254:	8b e8                	mov    ebp,eax
  765256:	3b ee                	cmp    ebp,esi
  765258:	74 36                	je     0x765290
  76525a:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  76525d:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  765260:	57                   	push   edi
  765261:	8b cd                	mov    ecx,ebp
  765263:	ff d0                	call   eax
  765265:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  765269:	51                   	push   ecx
  76526a:	8b cd                	mov    ecx,ebp
  76526c:	e8 ef ef ff ff       	call   0x764260
  765271:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  765274:	8b f0                	mov    esi,eax
  765276:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  765279:	b9 12 00 00 00       	mov    ecx,0x12
  76527e:	8b fb                	mov    edi,ebx
  765280:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  765282:	5f                   	pop    edi
  765283:	8b cd                	mov    ecx,ebp
  765285:	ff d0                	call   eax
  765287:	5d                   	pop    ebp
  765288:	5e                   	pop    esi
  765289:	8b c3                	mov    eax,ebx
  76528b:	5b                   	pop    ebx
  76528c:	83 c4 48             	add    esp,0x48
  76528f:	c3                   	ret
  765290:	0f 57 c0             	xorps  xmm0,xmm0
  765293:	5d                   	pop    ebp
  765294:	89 73 04             	mov    DWORD PTR [ebx+0x4],esi
  765297:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
  76529a:	89 73 20             	mov    DWORD PTR [ebx+0x20],esi
  76529d:	89 73 24             	mov    DWORD PTR [ebx+0x24],esi
  7652a0:	5e                   	pop    esi
  7652a1:	c7 03 02 00 00 00    	mov    DWORD PTR [ebx],0x2
  7652a7:	f3 0f 11 43 10       	movss  DWORD PTR [ebx+0x10],xmm0
  7652ac:	f3 0f 11 43 14       	movss  DWORD PTR [ebx+0x14],xmm0
  7652b1:	f3 0f 11 43 18       	movss  DWORD PTR [ebx+0x18],xmm0
  7652b6:	f3 0f 11 43 1c       	movss  DWORD PTR [ebx+0x1c],xmm0
  7652bb:	8b c3                	mov    eax,ebx
  7652bd:	5b                   	pop    ebx
  7652be:	83 c4 48             	add    esp,0x48
  7652c1:	c3                   	ret

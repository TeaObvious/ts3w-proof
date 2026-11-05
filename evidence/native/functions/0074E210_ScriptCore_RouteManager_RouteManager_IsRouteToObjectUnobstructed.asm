# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e210 (ScriptCore.RouteManager::RouteManager_IsRouteToObjectUnobstructed)
Paired Ghidra pseudocode: 0074E210_ScriptCore_RouteManager_RouteManager_IsRouteToObjectUnobstructed.c
Window: [0x0074e210, 0x0074e320) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e210: 55 8b ec 83 e4 f0 81 ec d4 00 00 00 0f 57 c0 53
0074e220: 56 57 f3 0f 11 44 24 1c f3 0f 11 44 24 18 f3 0f
0074e230: 11 44 24 14 f3 0f 11 44 24 10 0f 28 44 24 10 8d
0074e240: 44 24 20 33 db 50 8d 4d 10 0f 29 44 24 24 0f 29
0074e250: 44 24 34 f3 0f 10 05 f8 98 f9 00 51 f3 0f 11 44
0074e260: 24 48 89 5c 24 4c 89 5c 24 50 89 5c 24 54 89 5c
0074e270: 24 58 e8 e9 e0 01 00 8d 54 24 14 52 8d 44 24 2c
0074e280: 50 89 5c 24 1c e8 d6 dd ff ff 83 c4 10 89 44 24
0074e290: 44 e8 da 92 1e 00 8b f0 e8 53 aa 0d 00 8b f8 3b
0074e2a0: fb 74 68 3b f3 74 64 8b 4d 30 8b 55 2c 8b 45 34
0074e2b0: 51 8b 4d 28 52 8b 55 24 53 50 8b 45 20 51 8b 4d
0074e2c0: 1c 52 50 51 8d 8c 24 80 00 00 00 e8 e0 e4 0c 00
0074e2d0: 8b 4d 08 50 8b 45 0c 8d 54 24 34 52 50 51 8b ce
0074e2e0: e8 9b 9c 1e 00 8b 54 24 24 50 52 8d 44 24 30 50
0074e2f0: 8b cf e8 79 2d 0e 00 8d 4c 24 60 e8 30 e5 0c 00
0074e300: 8b 44 24 10 5f 5e 5b 8b e5 5d c3 5f 5e b8 08 00
0074e310: 00 00 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e210 <.text+0x34d210>:
  74e210:	55                                              	push   ebp
  74e211:	8b ec                                           	mov    ebp,esp
  74e213:	83 e4 f0                                        	and    esp,0xfffffff0
  74e216:	81 ec d4 00 00 00                               	sub    esp,0xd4
  74e21c:	0f 57 c0                                        	xorps  xmm0,xmm0
  74e21f:	53                                              	push   ebx
  74e220:	56                                              	push   esi
  74e221:	57                                              	push   edi
  74e222:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  74e228:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  74e22e:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  74e234:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  74e23a:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  74e23f:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  74e243:	33 db                                           	xor    ebx,ebx
  74e245:	50                                              	push   eax
  74e246:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  74e249:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
  74e24e:	0f 29 44 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm0
  74e253:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  74e25b:	51                                              	push   ecx
  74e25c:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  74e262:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
  74e266:	89 5c 24 50                                     	mov    DWORD PTR [esp+0x50],ebx
  74e26a:	89 5c 24 54                                     	mov    DWORD PTR [esp+0x54],ebx
  74e26e:	89 5c 24 58                                     	mov    DWORD PTR [esp+0x58],ebx
  74e272:	e8 e9 e0 01 00                                  	call   0x76c360
  74e277:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  74e27b:	52                                              	push   edx
  74e27c:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  74e280:	50                                              	push   eax
  74e281:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  74e285:	e8 d6 dd ff ff                                  	call   0x74c060
  74e28a:	83 c4 10                                        	add    esp,0x10
  74e28d:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  74e291:	e8 da 92 1e 00                                  	call   0x937570
  74e296:	8b f0                                           	mov    esi,eax
  74e298:	e8 53 aa 0d 00                                  	call   0x828cf0
  74e29d:	8b f8                                           	mov    edi,eax
  74e29f:	3b fb                                           	cmp    edi,ebx
  74e2a1:	74 68                                           	je     0x74e30b
  74e2a3:	3b f3                                           	cmp    esi,ebx
  74e2a5:	74 64                                           	je     0x74e30b
  74e2a7:	8b 4d 30                                        	mov    ecx,DWORD PTR [ebp+0x30]
  74e2aa:	8b 55 2c                                        	mov    edx,DWORD PTR [ebp+0x2c]
  74e2ad:	8b 45 34                                        	mov    eax,DWORD PTR [ebp+0x34]
  74e2b0:	51                                              	push   ecx
  74e2b1:	8b 4d 28                                        	mov    ecx,DWORD PTR [ebp+0x28]
  74e2b4:	52                                              	push   edx
  74e2b5:	8b 55 24                                        	mov    edx,DWORD PTR [ebp+0x24]
  74e2b8:	53                                              	push   ebx
  74e2b9:	50                                              	push   eax
  74e2ba:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
  74e2bd:	51                                              	push   ecx
  74e2be:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  74e2c1:	52                                              	push   edx
  74e2c2:	50                                              	push   eax
  74e2c3:	51                                              	push   ecx
  74e2c4:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  74e2cb:	e8 e0 e4 0c 00                                  	call   0x81c7b0
  74e2d0:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  74e2d3:	50                                              	push   eax
  74e2d4:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  74e2d7:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  74e2db:	52                                              	push   edx
  74e2dc:	50                                              	push   eax
  74e2dd:	51                                              	push   ecx
  74e2de:	8b ce                                           	mov    ecx,esi
  74e2e0:	e8 9b 9c 1e 00                                  	call   0x937f80
  74e2e5:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  74e2e9:	50                                              	push   eax
  74e2ea:	52                                              	push   edx
  74e2eb:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  74e2ef:	50                                              	push   eax
  74e2f0:	8b cf                                           	mov    ecx,edi
  74e2f2:	e8 79 2d 0e 00                                  	call   0x831070
  74e2f7:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  74e2fb:	e8 30 e5 0c 00                                  	call   0x81c830
  74e300:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  74e304:	5f                                              	pop    edi
  74e305:	5e                                              	pop    esi
  74e306:	5b                                              	pop    ebx
  74e307:	8b e5                                           	mov    esp,ebp
  74e309:	5d                                              	pop    ebp
  74e30a:	c3                                              	ret
  74e30b:	5f                                              	pop    edi
  74e30c:	5e                                              	pop    esi
  74e30d:	b8 08 00 00 00                                  	mov    eax,0x8
  74e312:	5b                                              	pop    ebx
  74e313:	8b e5                                           	mov    esp,ebp
  74e315:	5d                                              	pop    ebp
  74e316:	c3                                              	ret
  74e317:	cc                                              	int3
  74e318:	cc                                              	int3
  74e319:	cc                                              	int3
  74e31a:	cc                                              	int3
  74e31b:	cc                                              	int3
  74e31c:	cc                                              	int3
  74e31d:	cc                                              	int3
  74e31e:	cc                                              	int3
  74e31f:	cc                                              	int3

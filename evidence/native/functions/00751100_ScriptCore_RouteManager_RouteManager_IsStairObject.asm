# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751100 (ScriptCore.RouteManager::RouteManager_IsStairObject)
Paired Ghidra pseudocode: 00751100_ScriptCore_RouteManager_RouteManager_IsStairObject.c
Window: [0x00751100, 0x00751230) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751100: 55 8b ec 83 e4 f0 83 ec 34 53 8b 5d 0c 56 57 8b
00751110: 7d 08 8b c7 0b c3 0f 84 fc 00 00 00 e8 4f 64 1e
00751120: 00 8b f0 85 f6 0f 84 ed 00 00 00 53 57 e8 9e ae
00751130: ff ff 83 c4 08 85 c0 75 6b 53 57 8b ce e8 3e 6e
00751140: 1e 00 85 c0 0f 84 ce 00 00 00 8b 0d 58 a1 1e 01
00751150: 51 8b c8 e8 08 31 1e 00 85 c0 0f 84 b8 00 00 00
00751160: 8d 54 24 20 52 8b c8 e8 c4 68 20 00 8b 0d c4 db
00751170: 1e 01 85 c9 0f 84 9e 00 00 00 0f 28 44 24 20 0f
00751180: 29 44 24 10 d9 44 24 18 83 ec 08 d9 5c 24 04 0f
00751190: 29 44 24 38 d9 44 24 38 d9 1c 24 e8 30 76 51 00
007511a0: 85 c0 74 74 8b 80 b4 02 00 00 85 c0 74 6a 8d 4c
007511b0: 24 0c 51 8b c8 e8 56 3f 3c 00 8b 4c 24 0c 8b 51
007511c0: 08 8b 41 04 8b 34 90 8d 54 24 20 52 32 db e8 9d
007511d0: 9b 1e 00 8b 08 3b ce 8b 40 04 89 4c 24 10 89 44
007511e0: 24 14 74 2b 8b 51 78 3b d7 75 08 8b 41 7c 3b 45
007511f0: 0c 74 1a 8d 4c 24 10 e8 c4 dd ff ff 8b 4c 24 10
00751200: 3b ce 75 e0 8a c3 5f 5e 5b 8b e5 5d c3 b3 01 8a
00751210: c3 5f 5e 5b 8b e5 5d c3 5f 5e 32 c0 5b 8b e5 5d
00751220: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751100 <.text+0x350100>:
  751100:	55                                              	push   ebp
  751101:	8b ec                                           	mov    ebp,esp
  751103:	83 e4 f0                                        	and    esp,0xfffffff0
  751106:	83 ec 34                                        	sub    esp,0x34
  751109:	53                                              	push   ebx
  75110a:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
  75110d:	56                                              	push   esi
  75110e:	57                                              	push   edi
  75110f:	8b 7d 08                                        	mov    edi,DWORD PTR [ebp+0x8]
  751112:	8b c7                                           	mov    eax,edi
  751114:	0b c3                                           	or     eax,ebx
  751116:	0f 84 fc 00 00 00                               	je     0x751218
  75111c:	e8 4f 64 1e 00                                  	call   0x937570
  751121:	8b f0                                           	mov    esi,eax
  751123:	85 f6                                           	test   esi,esi
  751125:	0f 84 ed 00 00 00                               	je     0x751218
  75112b:	53                                              	push   ebx
  75112c:	57                                              	push   edi
  75112d:	e8 9e ae ff ff                                  	call   0x74bfd0
  751132:	83 c4 08                                        	add    esp,0x8
  751135:	85 c0                                           	test   eax,eax
  751137:	75 6b                                           	jne    0x7511a4
  751139:	53                                              	push   ebx
  75113a:	57                                              	push   edi
  75113b:	8b ce                                           	mov    ecx,esi
  75113d:	e8 3e 6e 1e 00                                  	call   0x937f80
  751142:	85 c0                                           	test   eax,eax
  751144:	0f 84 ce 00 00 00                               	je     0x751218
  75114a:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  751150:	51                                              	push   ecx
  751151:	8b c8                                           	mov    ecx,eax
  751153:	e8 08 31 1e 00                                  	call   0x934260
  751158:	85 c0                                           	test   eax,eax
  75115a:	0f 84 b8 00 00 00                               	je     0x751218
  751160:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  751164:	52                                              	push   edx
  751165:	8b c8                                           	mov    ecx,eax
  751167:	e8 c4 68 20 00                                  	call   0x957a30
  75116c:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  751172:	85 c9                                           	test   ecx,ecx
  751174:	0f 84 9e 00 00 00                               	je     0x751218
  75117a:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  75117f:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  751184:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  751188:	83 ec 08                                        	sub    esp,0x8
  75118b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  75118f:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
  751194:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  751198:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  75119b:	e8 30 76 51 00                                  	call   0xc687d0
  7511a0:	85 c0                                           	test   eax,eax
  7511a2:	74 74                                           	je     0x751218
  7511a4:	8b 80 b4 02 00 00                               	mov    eax,DWORD PTR [eax+0x2b4]
  7511aa:	85 c0                                           	test   eax,eax
  7511ac:	74 6a                                           	je     0x751218
  7511ae:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  7511b2:	51                                              	push   ecx
  7511b3:	8b c8                                           	mov    ecx,eax
  7511b5:	e8 56 3f 3c 00                                  	call   0xb15110
  7511ba:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7511be:	8b 51 08                                        	mov    edx,DWORD PTR [ecx+0x8]
  7511c1:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  7511c4:	8b 34 90                                        	mov    esi,DWORD PTR [eax+edx*4]
  7511c7:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7511cb:	52                                              	push   edx
  7511cc:	32 db                                           	xor    bl,bl
  7511ce:	e8 9d 9b 1e 00                                  	call   0x93ad70
  7511d3:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7511d5:	3b ce                                           	cmp    ecx,esi
  7511d7:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  7511da:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  7511de:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  7511e2:	74 2b                                           	je     0x75120f
  7511e4:	8b 51 78                                        	mov    edx,DWORD PTR [ecx+0x78]
  7511e7:	3b d7                                           	cmp    edx,edi
  7511e9:	75 08                                           	jne    0x7511f3
  7511eb:	8b 41 7c                                        	mov    eax,DWORD PTR [ecx+0x7c]
  7511ee:	3b 45 0c                                        	cmp    eax,DWORD PTR [ebp+0xc]
  7511f1:	74 1a                                           	je     0x75120d
  7511f3:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7511f7:	e8 c4 dd ff ff                                  	call   0x74efc0
  7511fc:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  751200:	3b ce                                           	cmp    ecx,esi
  751202:	75 e0                                           	jne    0x7511e4
  751204:	8a c3                                           	mov    al,bl
  751206:	5f                                              	pop    edi
  751207:	5e                                              	pop    esi
  751208:	5b                                              	pop    ebx
  751209:	8b e5                                           	mov    esp,ebp
  75120b:	5d                                              	pop    ebp
  75120c:	c3                                              	ret
  75120d:	b3 01                                           	mov    bl,0x1
  75120f:	8a c3                                           	mov    al,bl
  751211:	5f                                              	pop    edi
  751212:	5e                                              	pop    esi
  751213:	5b                                              	pop    ebx
  751214:	8b e5                                           	mov    esp,ebp
  751216:	5d                                              	pop    ebp
  751217:	c3                                              	ret
  751218:	5f                                              	pop    edi
  751219:	5e                                              	pop    esi
  75121a:	32 c0                                           	xor    al,al
  75121c:	5b                                              	pop    ebx
  75121d:	8b e5                                           	mov    esp,ebp
  75121f:	5d                                              	pop    ebp
  751220:	c3                                              	ret
  751221:	cc                                              	int3
  751222:	cc                                              	int3
  751223:	cc                                              	int3
  751224:	cc                                              	int3
  751225:	cc                                              	int3
  751226:	cc                                              	int3
  751227:	cc                                              	int3
  751228:	cc                                              	int3
  751229:	cc                                              	int3
  75122a:	cc                                              	int3
  75122b:	cc                                              	int3
  75122c:	cc                                              	int3
  75122d:	cc                                              	int3
  75122e:	cc                                              	int3
  75122f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec3210 (ScriptCore.GameUtils::GameUtils_WorldFileSearchGetCurrentImpl)
Paired Ghidra pseudocode: 00EC3210_ScriptCore_GameUtils_GameUtils_WorldFileSearchGetCurrentImpl.c
Window: [0x00ec3210, 0x00ec3310) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec3310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec3210: 83 ec 30 53 56 57 e8 75 61 8a ff 8b 5c 24 40 8b
00ec3220: f8 8b c3 25 00 00 00 ff 33 f6 3d 00 00 00 40 74
00ec3230: 04 33 c0 eb 12 e8 56 61 8a ff 8b 10 8b c8 8b 82
00ec3240: cc 00 00 00 53 ff d0 3b fe 0f 84 ab 00 00 00 3b
00ec3250: c6 0f 85 a3 00 00 00 68 c4 a6 fb 00 8d 4c 24 10
00ec3260: 89 74 24 10 89 74 24 14 89 74 24 18 c7 44 24 1c
00ec3270: f0 3b 00 01 e8 17 83 54 ff 6a 01 6a 10 8d 4c 24
00ec3280: 14 51 6a 09 bb f4 a6 fb 00 6a 13 8d 4c 24 30 89
00ec3290: 5c 24 30 66 89 74 24 38 66 89 74 24 3a e8 1e 27
00ec32a0: 63 ff 8b 17 8b 52 50 8d 44 24 40 50 8d 4c 24 20
00ec32b0: 51 8b cf 89 74 24 48 ff d2 f6 44 24 24 04 8b 7c
00ec32c0: 24 40 89 5c 24 1c 74 0a 56 8d 4c 24 20 e8 8e 24
00ec32d0: 63 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83
00ec32e0: f9 02 7e 0d 3b c6 74 09 50 e8 f2 11 62 ff 83 c4
00ec32f0: 04 8b c7 5f 5e 5b 83 c4 30 c3 5f 5e 8b c8 5b 83
00ec3300: c4 30 e9 d9 fd ff ff cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec3210 <.text+0xac2210>:
  ec3210:	83 ec 30                                        	sub    esp,0x30
  ec3213:	53                                              	push   ebx
  ec3214:	56                                              	push   esi
  ec3215:	57                                              	push   edi
  ec3216:	e8 75 61 8a ff                                  	call   0x769390
  ec321b:	8b 5c 24 40                                     	mov    ebx,DWORD PTR [esp+0x40]
  ec321f:	8b f8                                           	mov    edi,eax
  ec3221:	8b c3                                           	mov    eax,ebx
  ec3223:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec3228:	33 f6                                           	xor    esi,esi
  ec322a:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec322f:	74 04                                           	je     0xec3235
  ec3231:	33 c0                                           	xor    eax,eax
  ec3233:	eb 12                                           	jmp    0xec3247
  ec3235:	e8 56 61 8a ff                                  	call   0x769390
  ec323a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec323c:	8b c8                                           	mov    ecx,eax
  ec323e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec3244:	53                                              	push   ebx
  ec3245:	ff d0                                           	call   eax
  ec3247:	3b fe                                           	cmp    edi,esi
  ec3249:	0f 84 ab 00 00 00                               	je     0xec32fa
  ec324f:	3b c6                                           	cmp    eax,esi
  ec3251:	0f 85 a3 00 00 00                               	jne    0xec32fa
  ec3257:	68 c4 a6 fb 00                                  	push   0xfba6c4
  ec325c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ec3260:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  ec3264:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  ec3268:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  ec326c:	c7 44 24 1c f0 3b 00 01                         	mov    DWORD PTR [esp+0x1c],0x1003bf0
  ec3274:	e8 17 83 54 ff                                  	call   0x40b590
  ec3279:	6a 01                                           	push   0x1
  ec327b:	6a 10                                           	push   0x10
  ec327d:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec3281:	51                                              	push   ecx
  ec3282:	6a 09                                           	push   0x9
  ec3284:	bb f4 a6 fb 00                                  	mov    ebx,0xfba6f4
  ec3289:	6a 13                                           	push   0x13
  ec328b:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ec328f:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  ec3293:	66 89 74 24 38                                  	mov    WORD PTR [esp+0x38],si
  ec3298:	66 89 74 24 3a                                  	mov    WORD PTR [esp+0x3a],si
  ec329d:	e8 1e 27 63 ff                                  	call   0x4f59c0
  ec32a2:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec32a4:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec32a7:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  ec32ab:	50                                              	push   eax
  ec32ac:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec32b0:	51                                              	push   ecx
  ec32b1:	8b cf                                           	mov    ecx,edi
  ec32b3:	89 74 24 48                                     	mov    DWORD PTR [esp+0x48],esi
  ec32b7:	ff d2                                           	call   edx
  ec32b9:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  ec32be:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
  ec32c2:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  ec32c6:	74 0a                                           	je     0xec32d2
  ec32c8:	56                                              	push   esi
  ec32c9:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec32cd:	e8 8e 24 63 ff                                  	call   0x4f5760
  ec32d2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec32d6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ec32da:	2b c8                                           	sub    ecx,eax
  ec32dc:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec32df:	83 f9 02                                        	cmp    ecx,0x2
  ec32e2:	7e 0d                                           	jle    0xec32f1
  ec32e4:	3b c6                                           	cmp    eax,esi
  ec32e6:	74 09                                           	je     0xec32f1
  ec32e8:	50                                              	push   eax
  ec32e9:	e8 f2 11 62 ff                                  	call   0x4e44e0
  ec32ee:	83 c4 04                                        	add    esp,0x4
  ec32f1:	8b c7                                           	mov    eax,edi
  ec32f3:	5f                                              	pop    edi
  ec32f4:	5e                                              	pop    esi
  ec32f5:	5b                                              	pop    ebx
  ec32f6:	83 c4 30                                        	add    esp,0x30
  ec32f9:	c3                                              	ret
  ec32fa:	5f                                              	pop    edi
  ec32fb:	5e                                              	pop    esi
  ec32fc:	8b c8                                           	mov    ecx,eax
  ec32fe:	5b                                              	pop    ebx
  ec32ff:	83 c4 30                                        	add    esp,0x30
  ec3302:	e9 d9 fd ff ff                                  	jmp    0xec30e0
  ec3307:	cc                                              	int3
  ec3308:	cc                                              	int3
  ec3309:	cc                                              	int3
  ec330a:	cc                                              	int3
  ec330b:	cc                                              	int3
  ec330c:	cc                                              	int3
  ec330d:	cc                                              	int3
  ec330e:	cc                                              	int3
  ec330f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8370 (ScriptCore.CASUtils::CASUtils_PartDataIsUserPresetImpl)
Paired Ghidra pseudocode: 005A8370_ScriptCore_CASUtils_CASUtils_PartDataIsUserPresetImpl.c
Window: [0x005a8370, 0x005a8430) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8370: 83 ec 14 56 57 e8 06 7b f0 ff 8b f0 e8 1f 7f 58
005a8380: 00 8b 4c 24 2c 8b 54 24 20 6a 00 8b f8 8b 44 24
005a8390: 2c 6a 00 89 44 24 14 8b 44 24 2c 6a 00 89 44 24
005a83a0: 24 89 4c 24 1c 6a 00 8d 44 24 18 89 54 24 24 8b
005a83b0: 16 8b 52 0c 50 8d 4c 24 20 51 8b ce ff d2 84 c0
005a83c0: 74 25 8b 4c 24 08 85 c9 74 16 8b 01 8b 50 0c 68
005a83d0: 7b 77 4c 03 ff d2 8b f0 85 f6 75 13 8b 4c 24 08
005a83e0: 8b 01 8b 50 04 ff d2 5f 32 c0 5e 83 c4 14 c3 8b
005a83f0: 44 24 30 53 50 8b ce 32 db e8 d2 77 00 00 83 f8
005a8400: ff 74 0f 50 8d 4c 24 14 51 8b cf e8 60 a1 58 00
005a8410: 8a d8 8b 16 8b 42 04 8b ce ff d0 8a c3 5b 5f 5e
005a8420: 83 c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8370 <.text+0x1a7370>:
  5a8370:	83 ec 14                                        	sub    esp,0x14
  5a8373:	56                                              	push   esi
  5a8374:	57                                              	push   edi
  5a8375:	e8 06 7b f0 ff                                  	call   0x4afe80
  5a837a:	8b f0                                           	mov    esi,eax
  5a837c:	e8 1f 7f 58 00                                  	call   0xb302a0
  5a8381:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a8385:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  5a8389:	6a 00                                           	push   0x0
  5a838b:	8b f8                                           	mov    edi,eax
  5a838d:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5a8391:	6a 00                                           	push   0x0
  5a8393:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5a8397:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5a839b:	6a 00                                           	push   0x0
  5a839d:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  5a83a1:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  5a83a5:	6a 00                                           	push   0x0
  5a83a7:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  5a83ab:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a83af:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a83b1:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a83b4:	50                                              	push   eax
  5a83b5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5a83b9:	51                                              	push   ecx
  5a83ba:	8b ce                                           	mov    ecx,esi
  5a83bc:	ff d2                                           	call   edx
  5a83be:	84 c0                                           	test   al,al
  5a83c0:	74 25                                           	je     0x5a83e7
  5a83c2:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5a83c6:	85 c9                                           	test   ecx,ecx
  5a83c8:	74 16                                           	je     0x5a83e0
  5a83ca:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a83cc:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a83cf:	68 7b 77 4c 03                                  	push   0x34c777b
  5a83d4:	ff d2                                           	call   edx
  5a83d6:	8b f0                                           	mov    esi,eax
  5a83d8:	85 f6                                           	test   esi,esi
  5a83da:	75 13                                           	jne    0x5a83ef
  5a83dc:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5a83e0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a83e2:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a83e5:	ff d2                                           	call   edx
  5a83e7:	5f                                              	pop    edi
  5a83e8:	32 c0                                           	xor    al,al
  5a83ea:	5e                                              	pop    esi
  5a83eb:	83 c4 14                                        	add    esp,0x14
  5a83ee:	c3                                              	ret
  5a83ef:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  5a83f3:	53                                              	push   ebx
  5a83f4:	50                                              	push   eax
  5a83f5:	8b ce                                           	mov    ecx,esi
  5a83f7:	32 db                                           	xor    bl,bl
  5a83f9:	e8 d2 77 00 00                                  	call   0x5afbd0
  5a83fe:	83 f8 ff                                        	cmp    eax,0xffffffff
  5a8401:	74 0f                                           	je     0x5a8412
  5a8403:	50                                              	push   eax
  5a8404:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5a8408:	51                                              	push   ecx
  5a8409:	8b cf                                           	mov    ecx,edi
  5a840b:	e8 60 a1 58 00                                  	call   0xb32570
  5a8410:	8a d8                                           	mov    bl,al
  5a8412:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8414:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a8417:	8b ce                                           	mov    ecx,esi
  5a8419:	ff d0                                           	call   eax
  5a841b:	8a c3                                           	mov    al,bl
  5a841d:	5b                                              	pop    ebx
  5a841e:	5f                                              	pop    edi
  5a841f:	5e                                              	pop    esi
  5a8420:	83 c4 14                                        	add    esp,0x14
  5a8423:	c3                                              	ret
  5a8424:	cc                                              	int3
  5a8425:	cc                                              	int3
  5a8426:	cc                                              	int3
  5a8427:	cc                                              	int3
  5a8428:	cc                                              	int3
  5a8429:	cc                                              	int3
  5a842a:	cc                                              	int3
  5a842b:	cc                                              	int3
  5a842c:	cc                                              	int3
  5a842d:	cc                                              	int3
  5a842e:	cc                                              	int3
  5a842f:	cc                                              	int3

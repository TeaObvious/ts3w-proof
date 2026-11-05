# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007862e0 (ScriptCore.World::World_DesignModeSwap_SetNewPatternImpl)
Paired Ghidra pseudocode: 007862E0_ScriptCore_World_World_DesignModeSwap_SetNewPatternImpl.c
Window: [0x007862e0, 0x00786370) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786370
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007862e0: 51 53 8b 5c 24 14 85 db 75 05 32 c0 5b 59 c3 56
007862f0: 57 e8 9a 30 fe ff 8b 7c 24 14 8b f0 8b c7 25 00
00786300: 00 00 ff 3d 00 00 00 45 75 56 8d 44 24 0c 50 8d
00786310: 4c 24 20 c7 44 24 20 00 00 00 00 8b 16 8b 52 70
00786320: 51 53 8b ce ff d2 83 7c 24 1c 00 74 33 83 7c 24
00786330: 0c 00 74 2c 8b 06 8b 90 cc 00 00 00 57 8b ce ff
00786340: d2 85 c0 74 1b 8b 4c 24 0c 8b 54 24 1c 51 8b 4c
00786350: 24 1c 52 51 8b c8 e8 b5 92 2d 00 5f 5e 5b 59 c3
00786360: 5f 5e 32 c0 5b 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007862e0 <.text+0x3852e0>:
  7862e0:	51                                              	push   ecx
  7862e1:	53                                              	push   ebx
  7862e2:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  7862e6:	85 db                                           	test   ebx,ebx
  7862e8:	75 05                                           	jne    0x7862ef
  7862ea:	32 c0                                           	xor    al,al
  7862ec:	5b                                              	pop    ebx
  7862ed:	59                                              	pop    ecx
  7862ee:	c3                                              	ret
  7862ef:	56                                              	push   esi
  7862f0:	57                                              	push   edi
  7862f1:	e8 9a 30 fe ff                                  	call   0x769390
  7862f6:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  7862fa:	8b f0                                           	mov    esi,eax
  7862fc:	8b c7                                           	mov    eax,edi
  7862fe:	25 00 00 00 ff                                  	and    eax,0xff000000
  786303:	3d 00 00 00 45                                  	cmp    eax,0x45000000
  786308:	75 56                                           	jne    0x786360
  78630a:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  78630e:	50                                              	push   eax
  78630f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  786313:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  78631b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78631d:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  786320:	51                                              	push   ecx
  786321:	53                                              	push   ebx
  786322:	8b ce                                           	mov    ecx,esi
  786324:	ff d2                                           	call   edx
  786326:	83 7c 24 1c 00                                  	cmp    DWORD PTR [esp+0x1c],0x0
  78632b:	74 33                                           	je     0x786360
  78632d:	83 7c 24 0c 00                                  	cmp    DWORD PTR [esp+0xc],0x0
  786332:	74 2c                                           	je     0x786360
  786334:	8b 06                                           	mov    eax,DWORD PTR [esi]
  786336:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  78633c:	57                                              	push   edi
  78633d:	8b ce                                           	mov    ecx,esi
  78633f:	ff d2                                           	call   edx
  786341:	85 c0                                           	test   eax,eax
  786343:	74 1b                                           	je     0x786360
  786345:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  786349:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  78634d:	51                                              	push   ecx
  78634e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  786352:	52                                              	push   edx
  786353:	51                                              	push   ecx
  786354:	8b c8                                           	mov    ecx,eax
  786356:	e8 b5 92 2d 00                                  	call   0xa5f610
  78635b:	5f                                              	pop    edi
  78635c:	5e                                              	pop    esi
  78635d:	5b                                              	pop    ebx
  78635e:	59                                              	pop    ecx
  78635f:	c3                                              	ret
  786360:	5f                                              	pop    edi
  786361:	5e                                              	pop    esi
  786362:	32 c0                                           	xor    al,al
  786364:	5b                                              	pop    ebx
  786365:	59                                              	pop    ecx
  786366:	c3                                              	ret
  786367:	cc                                              	int3
  786368:	cc                                              	int3
  786369:	cc                                              	int3
  78636a:	cc                                              	int3
  78636b:	cc                                              	int3
  78636c:	cc                                              	int3
  78636d:	cc                                              	int3
  78636e:	cc                                              	int3
  78636f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786250 (ScriptCore.World::World_DesignModeSwap_SetNewCompositorImpl)
Paired Ghidra pseudocode: 00786250_ScriptCore_World_World_DesignModeSwap_SetNewCompositorImpl.c
Window: [0x00786250, 0x007862e0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x007862e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786250: 51 53 8b 5c 24 14 85 db 75 05 32 c0 5b 59 c3 56
00786260: 57 e8 2a 31 fe ff 8b 7c 24 14 8b f0 8b c7 25 00
00786270: 00 00 ff 3d 00 00 00 45 75 56 8d 44 24 0c 50 8d
00786280: 4c 24 20 c7 44 24 20 00 00 00 00 8b 16 8b 52 70
00786290: 51 53 8b ce ff d2 83 7c 24 1c 00 74 33 83 7c 24
007862a0: 0c 00 74 2c 8b 06 8b 90 cc 00 00 00 57 8b ce ff
007862b0: d2 85 c0 74 1b 8b 4c 24 0c 8b 54 24 1c 51 8b 4c
007862c0: 24 1c 52 51 8b c8 e8 25 95 2d 00 5f 5e 5b 59 c3
007862d0: 5f 5e 32 c0 5b 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786250 <.text+0x385250>:
  786250:	51                                              	push   ecx
  786251:	53                                              	push   ebx
  786252:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  786256:	85 db                                           	test   ebx,ebx
  786258:	75 05                                           	jne    0x78625f
  78625a:	32 c0                                           	xor    al,al
  78625c:	5b                                              	pop    ebx
  78625d:	59                                              	pop    ecx
  78625e:	c3                                              	ret
  78625f:	56                                              	push   esi
  786260:	57                                              	push   edi
  786261:	e8 2a 31 fe ff                                  	call   0x769390
  786266:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  78626a:	8b f0                                           	mov    esi,eax
  78626c:	8b c7                                           	mov    eax,edi
  78626e:	25 00 00 00 ff                                  	and    eax,0xff000000
  786273:	3d 00 00 00 45                                  	cmp    eax,0x45000000
  786278:	75 56                                           	jne    0x7862d0
  78627a:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  78627e:	50                                              	push   eax
  78627f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  786283:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  78628b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78628d:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  786290:	51                                              	push   ecx
  786291:	53                                              	push   ebx
  786292:	8b ce                                           	mov    ecx,esi
  786294:	ff d2                                           	call   edx
  786296:	83 7c 24 1c 00                                  	cmp    DWORD PTR [esp+0x1c],0x0
  78629b:	74 33                                           	je     0x7862d0
  78629d:	83 7c 24 0c 00                                  	cmp    DWORD PTR [esp+0xc],0x0
  7862a2:	74 2c                                           	je     0x7862d0
  7862a4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7862a6:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  7862ac:	57                                              	push   edi
  7862ad:	8b ce                                           	mov    ecx,esi
  7862af:	ff d2                                           	call   edx
  7862b1:	85 c0                                           	test   eax,eax
  7862b3:	74 1b                                           	je     0x7862d0
  7862b5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7862b9:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7862bd:	51                                              	push   ecx
  7862be:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7862c2:	52                                              	push   edx
  7862c3:	51                                              	push   ecx
  7862c4:	8b c8                                           	mov    ecx,eax
  7862c6:	e8 25 95 2d 00                                  	call   0xa5f7f0
  7862cb:	5f                                              	pop    edi
  7862cc:	5e                                              	pop    esi
  7862cd:	5b                                              	pop    ebx
  7862ce:	59                                              	pop    ecx
  7862cf:	c3                                              	ret
  7862d0:	5f                                              	pop    edi
  7862d1:	5e                                              	pop    esi
  7862d2:	32 c0                                           	xor    al,al
  7862d4:	5b                                              	pop    ebx
  7862d5:	59                                              	pop    ecx
  7862d6:	c3                                              	ret
  7862d7:	cc                                              	int3
  7862d8:	cc                                              	int3
  7862d9:	cc                                              	int3
  7862da:	cc                                              	int3
  7862db:	cc                                              	int3
  7862dc:	cc                                              	int3
  7862dd:	cc                                              	int3
  7862de:	cc                                              	int3
  7862df:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777570 (ScriptCore.VisualEffect::Swarm_SetEffectDoubleTextureOverride)
Paired Ghidra pseudocode: 00777570_ScriptCore_VisualEffect_Swarm_SetEffectDoubleTextureOverride.c
Window: [0x00777570, 0x007775e0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x007775e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777570: 83 ec 20 e8 18 1e ff ff 8b 54 24 34 8b 44 24 2c
00777580: 8b 4c 24 30 89 04 24 8b 44 24 38 89 54 24 08 8b
00777590: 54 24 40 89 4c 24 04 8b 4c 24 3c 6a 08 89 44 24
007775a0: 10 8b 44 24 48 89 54 24 18 8d 54 24 04 52 89 4c
007775b0: 24 18 8b 4c 24 50 89 44 24 20 8b 44 24 30 6a 01
007775c0: 89 4c 24 28 8b 4c 24 30 50 51 e8 81 fc ff ff 83
007775d0: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777570 <.text+0x376570>:
  777570:	83 ec 20                                        	sub    esp,0x20
  777573:	e8 18 1e ff ff                                  	call   0x769390
  777578:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  77757c:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  777580:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  777584:	89 04 24                                        	mov    DWORD PTR [esp],eax
  777587:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  77758b:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  77758f:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  777593:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  777597:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  77759b:	6a 08                                           	push   0x8
  77759d:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  7775a1:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  7775a5:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  7775a9:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  7775ad:	52                                              	push   edx
  7775ae:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  7775b2:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
  7775b6:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  7775ba:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7775be:	6a 01                                           	push   0x1
  7775c0:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  7775c4:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  7775c8:	50                                              	push   eax
  7775c9:	51                                              	push   ecx
  7775ca:	e8 81 fc ff ff                                  	call   0x777250
  7775cf:	83 c4 34                                        	add    esp,0x34
  7775d2:	c3                                              	ret
  7775d3:	cc                                              	int3
  7775d4:	cc                                              	int3
  7775d5:	cc                                              	int3
  7775d6:	cc                                              	int3
  7775d7:	cc                                              	int3
  7775d8:	cc                                              	int3
  7775d9:	cc                                              	int3
  7775da:	cc                                              	int3
  7775db:	cc                                              	int3
  7775dc:	cc                                              	int3
  7775dd:	cc                                              	int3
  7775de:	cc                                              	int3
  7775df:	cc                                              	int3

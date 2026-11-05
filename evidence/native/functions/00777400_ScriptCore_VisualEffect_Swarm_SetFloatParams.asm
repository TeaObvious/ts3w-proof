# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777400 (ScriptCore.VisualEffect::Swarm_SetFloatParams)
Paired Ghidra pseudocode: 00777400_ScriptCore_VisualEffect_Swarm_SetFloatParams.c
Window: [0x00777400, 0x00777460) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777460
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777400: 83 ec 08 e8 88 1f ff ff 33 c9 3b c1 74 42 8b 10
00777410: 8b 52 78 89 0c 24 89 4c 24 04 8d 0c 24 51 8d 4c
00777420: 24 08 51 8b 4c 24 20 51 8b c8 ff d2 8b 04 24 8b
00777430: 4c 24 04 8b 54 24 14 50 8b 44 24 14 51 8b 4c 24
00777440: 14 52 50 51 e8 57 fd ff ff 83 c4 14 83 c4 08 c3
00777450: 32 c0 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777400 <.text+0x376400>:
  777400:	83 ec 08                                        	sub    esp,0x8
  777403:	e8 88 1f ff ff                                  	call   0x769390
  777408:	33 c9                                           	xor    ecx,ecx
  77740a:	3b c1                                           	cmp    eax,ecx
  77740c:	74 42                                           	je     0x777450
  77740e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  777410:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
  777413:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  777416:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  77741a:	8d 0c 24                                        	lea    ecx,[esp]
  77741d:	51                                              	push   ecx
  77741e:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  777422:	51                                              	push   ecx
  777423:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  777427:	51                                              	push   ecx
  777428:	8b c8                                           	mov    ecx,eax
  77742a:	ff d2                                           	call   edx
  77742c:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
  77742f:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  777433:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  777437:	50                                              	push   eax
  777438:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  77743c:	51                                              	push   ecx
  77743d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  777441:	52                                              	push   edx
  777442:	50                                              	push   eax
  777443:	51                                              	push   ecx
  777444:	e8 57 fd ff ff                                  	call   0x7771a0
  777449:	83 c4 14                                        	add    esp,0x14
  77744c:	83 c4 08                                        	add    esp,0x8
  77744f:	c3                                              	ret
  777450:	32 c0                                           	xor    al,al
  777452:	83 c4 08                                        	add    esp,0x8
  777455:	c3                                              	ret
  777456:	cc                                              	int3
  777457:	cc                                              	int3
  777458:	cc                                              	int3
  777459:	cc                                              	int3
  77745a:	cc                                              	int3
  77745b:	cc                                              	int3
  77745c:	cc                                              	int3
  77745d:	cc                                              	int3
  77745e:	cc                                              	int3
  77745f:	cc                                              	int3

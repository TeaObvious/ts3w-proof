# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777530 (ScriptCore.VisualEffect::Swarm_SetEffectTextureOverride)
Paired Ghidra pseudocode: 00777530_ScriptCore_VisualEffect_Swarm_SetEffectTextureOverride.c
Window: [0x00777530, 0x00777570) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777530: 83 ec 10 8b 4c 24 20 8b 44 24 1c 8b 54 24 24 6a
00777540: 04 89 4c 24 08 8d 4c 24 04 51 89 44 24 08 8b 44
00777550: 24 30 89 54 24 10 8b 54 24 20 6a 01 89 44 24 18
00777560: 8b 44 24 20 52 50 e8 e5 fc ff ff 83 c4 24 c3 cc

LINEAR DISASSEMBLY
00777530 <.text+0x376530>:
  777530:	83 ec 10                                        	sub    esp,0x10
  777533:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  777537:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  77753b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  77753f:	6a 04                                           	push   0x4
  777541:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  777545:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  777549:	51                                              	push   ecx
  77754a:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  77754e:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  777552:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  777556:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  77755a:	6a 01                                           	push   0x1
  77755c:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  777560:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  777564:	52                                              	push   edx
  777565:	50                                              	push   eax
  777566:	e8 e5 fc ff ff                                  	call   0x777250
  77756b:	83 c4 24                                        	add    esp,0x24
  77756e:	c3                                              	ret
  77756f:	cc                                              	int3

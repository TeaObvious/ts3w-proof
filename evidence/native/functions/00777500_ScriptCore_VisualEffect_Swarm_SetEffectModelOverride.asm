# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777500 (ScriptCore.VisualEffect::Swarm_SetEffectModelOverride)
Paired Ghidra pseudocode: 00777500_ScriptCore_VisualEffect_Swarm_SetEffectModelOverride.c
Window: [0x00777500, 0x00777530) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777500: 83 ec 08 8b 44 24 14 8b 4c 24 18 6a 02 8d 54 24
00777510: 04 52 89 44 24 08 8b 44 24 18 6a 00 89 4c 24 10
00777520: 8b 4c 24 18 50 51 e8 25 fd ff ff 83 c4 1c c3 cc

LINEAR DISASSEMBLY
00777500 <.text+0x376500>:
  777500:	83 ec 08                                        	sub    esp,0x8
  777503:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  777507:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  77750b:	6a 02                                           	push   0x2
  77750d:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  777511:	52                                              	push   edx
  777512:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  777516:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  77751a:	6a 00                                           	push   0x0
  77751c:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  777520:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  777524:	50                                              	push   eax
  777525:	51                                              	push   ecx
  777526:	e8 25 fd ff ff                                  	call   0x777250
  77752b:	83 c4 1c                                        	add    esp,0x1c
  77752e:	c3                                              	ret
  77752f:	cc                                              	int3

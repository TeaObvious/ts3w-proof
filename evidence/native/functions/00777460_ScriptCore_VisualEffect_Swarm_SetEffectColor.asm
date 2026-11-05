# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777460 (ScriptCore.VisualEffect::Swarm_SetEffectColor)
Paired Ghidra pseudocode: 00777460_ScriptCore_VisualEffect_Swarm_SetEffectColor.c
Window: [0x00777460, 0x007774b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007774b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777460: 83 ec 0c f3 0f 10 44 24 18 8b 4c 24 14 8b 54 24
00777470: 10 6a 03 8d 44 24 04 50 f3 0f 11 44 24 08 f3 0f
00777480: 10 44 24 24 6a 07 51 f3 0f 11 44 24 14 f3 0f 10
00777490: 44 24 30 52 f3 0f 11 44 24 1c e8 01 fd ff ff 83
007774a0: c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777460 <.text+0x376460>:
  777460:	83 ec 0c                                        	sub    esp,0xc
  777463:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  777469:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77746d:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  777471:	6a 03                                           	push   0x3
  777473:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  777477:	50                                              	push   eax
  777478:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  77747e:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
  777484:	6a 07                                           	push   0x7
  777486:	51                                              	push   ecx
  777487:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  77748d:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  777493:	52                                              	push   edx
  777494:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  77749a:	e8 01 fd ff ff                                  	call   0x7771a0
  77749f:	83 c4 20                                        	add    esp,0x20
  7774a2:	c3                                              	ret
  7774a3:	cc                                              	int3
  7774a4:	cc                                              	int3
  7774a5:	cc                                              	int3
  7774a6:	cc                                              	int3
  7774a7:	cc                                              	int3
  7774a8:	cc                                              	int3
  7774a9:	cc                                              	int3
  7774aa:	cc                                              	int3
  7774ab:	cc                                              	int3
  7774ac:	cc                                              	int3
  7774ad:	cc                                              	int3
  7774ae:	cc                                              	int3
  7774af:	cc                                              	int3

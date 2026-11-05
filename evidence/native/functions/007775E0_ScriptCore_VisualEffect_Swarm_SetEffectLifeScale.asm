# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007775e0 (ScriptCore.VisualEffect::Swarm_SetEffectLifeScale)
Paired Ghidra pseudocode: 007775E0_ScriptCore_VisualEffect_Swarm_SetEffectLifeScale.c
Window: [0x007775e0, 0x00777610) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007775e0: 8b 4c 24 08 8b 54 24 04 f3 0f 10 44 24 0c 6a 01
007775f0: 8d 44 24 10 50 6a 03 51 52 f3 0f 11 44 24 20 e8
00777600: 9c fb ff ff 83 c4 14 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007775e0 <.text+0x3765e0>:
  7775e0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7775e4:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7775e8:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  7775ee:	6a 01                                           	push   0x1
  7775f0:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  7775f4:	50                                              	push   eax
  7775f5:	6a 03                                           	push   0x3
  7775f7:	51                                              	push   ecx
  7775f8:	52                                              	push   edx
  7775f9:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  7775ff:	e8 9c fb ff ff                                  	call   0x7771a0
  777604:	83 c4 14                                        	add    esp,0x14
  777607:	c3                                              	ret
  777608:	cc                                              	int3
  777609:	cc                                              	int3
  77760a:	cc                                              	int3
  77760b:	cc                                              	int3
  77760c:	cc                                              	int3
  77760d:	cc                                              	int3
  77760e:	cc                                              	int3
  77760f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007774b0 (ScriptCore.VisualEffect::Swarm_SetEffectColorScale)
Paired Ghidra pseudocode: 007774B0_ScriptCore_VisualEffect_Swarm_SetEffectColorScale.c
Window: [0x007774b0, 0x00777500) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007774b0: 83 ec 0c f3 0f 10 44 24 18 8b 4c 24 14 8b 54 24
007774c0: 10 6a 03 8d 44 24 04 50 f3 0f 11 44 24 08 f3 0f
007774d0: 10 44 24 24 6a 06 51 f3 0f 11 44 24 14 f3 0f 10
007774e0: 44 24 30 52 f3 0f 11 44 24 1c e8 b1 fc ff ff 83
007774f0: c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007774b0 <.text+0x3764b0>:
  7774b0:	83 ec 0c                                        	sub    esp,0xc
  7774b3:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  7774b9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7774bd:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  7774c1:	6a 03                                           	push   0x3
  7774c3:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  7774c7:	50                                              	push   eax
  7774c8:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7774ce:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
  7774d4:	6a 06                                           	push   0x6
  7774d6:	51                                              	push   ecx
  7774d7:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  7774dd:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  7774e3:	52                                              	push   edx
  7774e4:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  7774ea:	e8 b1 fc ff ff                                  	call   0x7771a0
  7774ef:	83 c4 20                                        	add    esp,0x20
  7774f2:	c3                                              	ret
  7774f3:	cc                                              	int3
  7774f4:	cc                                              	int3
  7774f5:	cc                                              	int3
  7774f6:	cc                                              	int3
  7774f7:	cc                                              	int3
  7774f8:	cc                                              	int3
  7774f9:	cc                                              	int3
  7774fa:	cc                                              	int3
  7774fb:	cc                                              	int3
  7774fc:	cc                                              	int3
  7774fd:	cc                                              	int3
  7774fe:	cc                                              	int3
  7774ff:	cc                                              	int3

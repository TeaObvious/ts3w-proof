# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569550 (Swarm_SetEffectColorScale)
Paired Ghidra pseudocode: 10569550_Swarm_SetEffectColorScale.c
Window: [0x10569550, 0x105695a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105695a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569550: 83 ec 0c f3 0f 10 44 24 18 8b 4c 24 14 8b 54 24
10569560: 10 6a 03 8d 44 24 04 50 f3 0f 11 44 24 08 f3 0f
10569570: 10 44 24 24 6a 06 51 f3 0f 11 44 24 14 f3 0f 10
10569580: 44 24 30 52 f3 0f 11 44 24 1c e8 d1 fb ff ff 83
10569590: c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569550 <.text+0x568550>:
10569550:	83 ec 0c                                        	sub    esp,0xc
10569553:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
10569559:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056955d:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10569561:	6a 03                                           	push   0x3
10569563:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10569567:	50                                              	push   eax
10569568:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1056956e:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
10569574:	6a 06                                           	push   0x6
10569576:	51                                              	push   ecx
10569577:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1056957d:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
10569583:	52                                              	push   edx
10569584:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1056958a:	e8 d1 fb ff ff                                  	call   0x10569160
1056958f:	83 c4 20                                        	add    esp,0x20
10569592:	c3                                              	ret
10569593:	cc                                              	int3
10569594:	cc                                              	int3
10569595:	cc                                              	int3
10569596:	cc                                              	int3
10569597:	cc                                              	int3
10569598:	cc                                              	int3
10569599:	cc                                              	int3
1056959a:	cc                                              	int3
1056959b:	cc                                              	int3
1056959c:	cc                                              	int3
1056959d:	cc                                              	int3
1056959e:	cc                                              	int3
1056959f:	cc                                              	int3

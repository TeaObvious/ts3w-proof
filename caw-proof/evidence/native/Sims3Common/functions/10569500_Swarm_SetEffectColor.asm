# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569500 (Swarm_SetEffectColor)
Paired Ghidra pseudocode: 10569500_Swarm_SetEffectColor.c
Window: [0x10569500, 0x10569550) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569500: 83 ec 0c f3 0f 10 44 24 18 8b 4c 24 14 8b 54 24
10569510: 10 6a 03 8d 44 24 04 50 f3 0f 11 44 24 08 f3 0f
10569520: 10 44 24 24 6a 07 51 f3 0f 11 44 24 14 f3 0f 10
10569530: 44 24 30 52 f3 0f 11 44 24 1c e8 21 fc ff ff 83
10569540: c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569500 <.text+0x568500>:
10569500:	83 ec 0c                                        	sub    esp,0xc
10569503:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
10569509:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056950d:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10569511:	6a 03                                           	push   0x3
10569513:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10569517:	50                                              	push   eax
10569518:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1056951e:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
10569524:	6a 07                                           	push   0x7
10569526:	51                                              	push   ecx
10569527:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1056952d:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
10569533:	52                                              	push   edx
10569534:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1056953a:	e8 21 fc ff ff                                  	call   0x10569160
1056953f:	83 c4 20                                        	add    esp,0x20
10569542:	c3                                              	ret
10569543:	cc                                              	int3
10569544:	cc                                              	int3
10569545:	cc                                              	int3
10569546:	cc                                              	int3
10569547:	cc                                              	int3
10569548:	cc                                              	int3
10569549:	cc                                              	int3
1056954a:	cc                                              	int3
1056954b:	cc                                              	int3
1056954c:	cc                                              	int3
1056954d:	cc                                              	int3
1056954e:	cc                                              	int3
1056954f:	cc                                              	int3

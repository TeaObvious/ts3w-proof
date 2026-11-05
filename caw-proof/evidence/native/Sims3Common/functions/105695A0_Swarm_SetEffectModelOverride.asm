# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105695a0 (Swarm_SetEffectModelOverride)
Paired Ghidra pseudocode: 105695A0_Swarm_SetEffectModelOverride.c
Window: [0x105695a0, 0x105695d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105695d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105695a0: 83 ec 08 8b 44 24 14 8b 4c 24 18 6a 02 8d 54 24
105695b0: 04 52 89 44 24 08 8b 44 24 18 6a 00 89 4c 24 10
105695c0: 8b 4c 24 18 50 51 e8 45 fc ff ff 83 c4 1c c3 cc

LINEAR DISASSEMBLY
105695a0 <.text+0x5685a0>:
105695a0:	83 ec 08                                        	sub    esp,0x8
105695a3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
105695a7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105695ab:	6a 02                                           	push   0x2
105695ad:	8d 54 24 04                                     	lea    edx,[esp+0x4]
105695b1:	52                                              	push   edx
105695b2:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
105695b6:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105695ba:	6a 00                                           	push   0x0
105695bc:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
105695c0:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105695c4:	50                                              	push   eax
105695c5:	51                                              	push   ecx
105695c6:	e8 45 fc ff ff                                  	call   0x10569210
105695cb:	83 c4 1c                                        	add    esp,0x1c
105695ce:	c3                                              	ret
105695cf:	cc                                              	int3

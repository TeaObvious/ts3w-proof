# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569650 (Swarm_SetEffectLifeScale)
Paired Ghidra pseudocode: 10569650_Swarm_SetEffectLifeScale.c
Window: [0x10569650, 0x10569680) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569650: 8b 4c 24 08 8b 54 24 04 f3 0f 10 44 24 0c 6a 01
10569660: 8d 44 24 10 50 6a 03 51 52 f3 0f 11 44 24 20 e8
10569670: ec fa ff ff 83 c4 14 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569650 <.text+0x568650>:
10569650:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10569654:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10569658:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1056965e:	6a 01                                           	push   0x1
10569660:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10569664:	50                                              	push   eax
10569665:	6a 03                                           	push   0x3
10569667:	51                                              	push   ecx
10569668:	52                                              	push   edx
10569669:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1056966f:	e8 ec fa ff ff                                  	call   0x10569160
10569674:	83 c4 14                                        	add    esp,0x14
10569677:	c3                                              	ret
10569678:	cc                                              	int3
10569679:	cc                                              	int3
1056967a:	cc                                              	int3
1056967b:	cc                                              	int3
1056967c:	cc                                              	int3
1056967d:	cc                                              	int3
1056967e:	cc                                              	int3
1056967f:	cc                                              	int3

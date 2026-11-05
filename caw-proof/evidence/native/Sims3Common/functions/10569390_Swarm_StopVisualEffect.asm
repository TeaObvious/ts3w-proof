# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569390 (Swarm_StopVisualEffect)
Paired Ghidra pseudocode: 10569390_Swarm_StopVisualEffect.c
Window: [0x10569390, 0x105693b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105693b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569390: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105693a0: 2c fd ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569390 <.text+0x568390>:
10569390:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10569394:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10569398:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1056939c:	50                                              	push   eax
1056939d:	51                                              	push   ecx
1056939e:	52                                              	push   edx
1056939f:	e8 2c fd ff ff                                  	call   0x105690d0
105693a4:	83 c4 0c                                        	add    esp,0xc
105693a7:	c3                                              	ret
105693a8:	cc                                              	int3
105693a9:	cc                                              	int3
105693aa:	cc                                              	int3
105693ab:	cc                                              	int3
105693ac:	cc                                              	int3
105693ad:	cc                                              	int3
105693ae:	cc                                              	int3
105693af:	cc                                              	int3

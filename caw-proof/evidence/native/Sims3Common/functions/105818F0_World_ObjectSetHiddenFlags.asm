# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105818f0 (World_ObjectSetHiddenFlags)
Paired Ghidra pseudocode: 105818F0_World_ObjectSetHiddenFlags.c
Window: [0x105818f0, 0x10581910) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105818f0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 6a 00 50 51
10581900: 52 e8 8a dd ff ff 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
105818f0 <.text+0x5808f0>:
105818f0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105818f4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105818f8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105818fc:	6a 00                                           	push   0x0
105818fe:	50                                              	push   eax
105818ff:	51                                              	push   ecx
10581900:	52                                              	push   edx
10581901:	e8 8a dd ff ff                                  	call   0x1057f690
10581906:	83 c4 10                                        	add    esp,0x10
10581909:	c3                                              	ret
1058190a:	cc                                              	int3
1058190b:	cc                                              	int3
1058190c:	cc                                              	int3
1058190d:	cc                                              	int3
1058190e:	cc                                              	int3
1058190f:	cc                                              	int3

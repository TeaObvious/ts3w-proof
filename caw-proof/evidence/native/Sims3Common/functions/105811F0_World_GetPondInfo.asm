# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105811f0 (World_GetPondInfo)
Paired Ghidra pseudocode: 105811F0_World_GetPondInfo.c
Window: [0x105811f0, 0x10581210) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105811f0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10581200: 08 51 52 50 e8 27 ce ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
105811f0 <.text+0x5801f0>:
105811f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105811f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105811f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105811fc:	50                                              	push   eax
105811fd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581201:	51                                              	push   ecx
10581202:	52                                              	push   edx
10581203:	50                                              	push   eax
10581204:	e8 27 ce ff ff                                  	call   0x1057e030
10581209:	83 c4 10                                        	add    esp,0x10
1058120c:	c3                                              	ret
1058120d:	cc                                              	int3
1058120e:	cc                                              	int3
1058120f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c31f0 (UserToolUtils_GetCollectionPresetListImpl)
Paired Ghidra pseudocode: 102C31F0_UserToolUtils_GetCollectionPresetListImpl.c
Window: [0x102c31f0, 0x102c3210) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c3210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c31f0: 8b 44 24 08 8b 4c 24 04 50 51 e8 01 fd ff ff 83
102c3200: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c31f0 <.text+0x2c21f0>:
102c31f0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102c31f4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
102c31f8:	50                                              	push   eax
102c31f9:	51                                              	push   ecx
102c31fa:	e8 01 fd ff ff                                  	call   0x102c2f00
102c31ff:	83 c4 08                                        	add    esp,0x8
102c3202:	c3                                              	ret
102c3203:	cc                                              	int3
102c3204:	cc                                              	int3
102c3205:	cc                                              	int3
102c3206:	cc                                              	int3
102c3207:	cc                                              	int3
102c3208:	cc                                              	int3
102c3209:	cc                                              	int3
102c320a:	cc                                              	int3
102c320b:	cc                                              	int3
102c320c:	cc                                              	int3
102c320d:	cc                                              	int3
102c320e:	cc                                              	int3
102c320f:	cc                                              	int3

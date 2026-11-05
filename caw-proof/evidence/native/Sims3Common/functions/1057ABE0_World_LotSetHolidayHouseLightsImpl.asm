# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057abe0 (World_LotSetHolidayHouseLightsImpl)
Paired Ghidra pseudocode: 1057ABE0_World_LotSetHolidayHouseLightsImpl.c
Window: [0x1057abe0, 0x1057ac20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ac20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057abe0: d9 44 24 20 8b 44 24 14 8b 4c 24 10 8b 54 24 0c
1057abf0: 83 ec 0c d9 5c 24 08 d9 44 24 28 d9 5c 24 04 d9
1057ac00: 44 24 24 d9 1c 24 50 8b 44 24 18 51 8b 4c 24 18
1057ac10: 52 50 51 e8 c8 d5 ff ff 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
1057abe0 <.text+0x579be0>:
1057abe0:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
1057abe4:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057abe8:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057abec:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057abf0:	83 ec 0c                                        	sub    esp,0xc
1057abf3:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1057abf7:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
1057abfb:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1057abff:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
1057ac03:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1057ac06:	50                                              	push   eax
1057ac07:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1057ac0b:	51                                              	push   ecx
1057ac0c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057ac10:	52                                              	push   edx
1057ac11:	50                                              	push   eax
1057ac12:	51                                              	push   ecx
1057ac13:	e8 c8 d5 ff ff                                  	call   0x105781e0
1057ac18:	83 c4 20                                        	add    esp,0x20
1057ac1b:	c3                                              	ret
1057ac1c:	cc                                              	int3
1057ac1d:	cc                                              	int3
1057ac1e:	cc                                              	int3
1057ac1f:	cc                                              	int3

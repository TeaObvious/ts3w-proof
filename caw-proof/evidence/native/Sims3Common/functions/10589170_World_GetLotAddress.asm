# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589170 (World_GetLotAddress)
Paired Ghidra pseudocode: 10589170_World_GetLotAddress.c
Window: [0x10589170, 0x10589190) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589170: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 f7 ff ff 83
10589180: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589170 <.text+0x588170>:
10589170:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10589174:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10589178:	50                                              	push   eax
10589179:	51                                              	push   ecx
1058917a:	e8 51 f7 ff ff                                  	call   0x105888d0
1058917f:	83 c4 08                                        	add    esp,0x8
10589182:	c3                                              	ret
10589183:	cc                                              	int3
10589184:	cc                                              	int3
10589185:	cc                                              	int3
10589186:	cc                                              	int3
10589187:	cc                                              	int3
10589188:	cc                                              	int3
10589189:	cc                                              	int3
1058918a:	cc                                              	int3
1058918b:	cc                                              	int3
1058918c:	cc                                              	int3
1058918d:	cc                                              	int3
1058918e:	cc                                              	int3
1058918f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589190 (World_GetLotAddressKey)
Paired Ghidra pseudocode: 10589190_World_GetLotAddressKey.c
Window: [0x10589190, 0x105891b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105891b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589190: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 f8 ff ff 83
105891a0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589190 <.text+0x588190>:
10589190:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10589194:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10589198:	50                                              	push   eax
10589199:	51                                              	push   ecx
1058919a:	e8 31 f8 ff ff                                  	call   0x105889d0
1058919f:	83 c4 08                                        	add    esp,0x8
105891a2:	c3                                              	ret
105891a3:	cc                                              	int3
105891a4:	cc                                              	int3
105891a5:	cc                                              	int3
105891a6:	cc                                              	int3
105891a7:	cc                                              	int3
105891a8:	cc                                              	int3
105891a9:	cc                                              	int3
105891aa:	cc                                              	int3
105891ab:	cc                                              	int3
105891ac:	cc                                              	int3
105891ad:	cc                                              	int3
105891ae:	cc                                              	int3
105891af:	cc                                              	int3

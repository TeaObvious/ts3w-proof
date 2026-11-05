# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10586060 (World_GetPoolRoomsImpl)
Paired Ghidra pseudocode: 10586060_World_GetPoolRoomsImpl.c
Window: [0x10586060, 0x10586080) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10586080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10586060: 8b 44 24 08 8b 4c 24 04 50 51 e8 c1 fb ff ff 83
10586070: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10586060 <.text+0x585060>:
10586060:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10586064:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10586068:	50                                              	push   eax
10586069:	51                                              	push   ecx
1058606a:	e8 c1 fb ff ff                                  	call   0x10585c30
1058606f:	83 c4 08                                        	add    esp,0x8
10586072:	c3                                              	ret
10586073:	cc                                              	int3
10586074:	cc                                              	int3
10586075:	cc                                              	int3
10586076:	cc                                              	int3
10586077:	cc                                              	int3
10586078:	cc                                              	int3
10586079:	cc                                              	int3
1058607a:	cc                                              	int3
1058607b:	cc                                              	int3
1058607c:	cc                                              	int3
1058607d:	cc                                              	int3
1058607e:	cc                                              	int3
1058607f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581210 (World_GetNumPonds)
Paired Ghidra pseudocode: 10581210_World_GetNumPonds.c
Window: [0x10581210, 0x10581230) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581210: 8b 44 24 08 8b 4c 24 04 50 51 e8 91 cf ff ff 83
10581220: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581210 <.text+0x580210>:
10581210:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581214:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10581218:	50                                              	push   eax
10581219:	51                                              	push   ecx
1058121a:	e8 91 cf ff ff                                  	call   0x1057e1b0
1058121f:	83 c4 08                                        	add    esp,0x8
10581222:	c3                                              	ret
10581223:	cc                                              	int3
10581224:	cc                                              	int3
10581225:	cc                                              	int3
10581226:	cc                                              	int3
10581227:	cc                                              	int3
10581228:	cc                                              	int3
10581229:	cc                                              	int3
1058122a:	cc                                              	int3
1058122b:	cc                                              	int3
1058122c:	cc                                              	int3
1058122d:	cc                                              	int3
1058122e:	cc                                              	int3
1058122f:	cc                                              	int3

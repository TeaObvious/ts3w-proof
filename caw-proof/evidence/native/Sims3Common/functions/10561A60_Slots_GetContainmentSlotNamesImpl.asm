# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561a60 (Slots_GetContainmentSlotNamesImpl)
Paired Ghidra pseudocode: 10561A60_Slots_GetContainmentSlotNamesImpl.c
Window: [0x10561a60, 0x10561a80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561a60: 8b 44 24 08 8b 4c 24 04 50 51 e8 c1 fb ff ff 83
10561a70: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561a60 <.text+0x560a60>:
10561a60:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561a64:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561a68:	50                                              	push   eax
10561a69:	51                                              	push   ecx
10561a6a:	e8 c1 fb ff ff                                  	call   0x10561630
10561a6f:	83 c4 08                                        	add    esp,0x8
10561a72:	c3                                              	ret
10561a73:	cc                                              	int3
10561a74:	cc                                              	int3
10561a75:	cc                                              	int3
10561a76:	cc                                              	int3
10561a77:	cc                                              	int3
10561a78:	cc                                              	int3
10561a79:	cc                                              	int3
10561a7a:	cc                                              	int3
10561a7b:	cc                                              	int3
10561a7c:	cc                                              	int3
10561a7d:	cc                                              	int3
10561a7e:	cc                                              	int3
10561a7f:	cc                                              	int3

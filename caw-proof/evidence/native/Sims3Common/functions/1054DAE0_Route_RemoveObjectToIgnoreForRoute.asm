# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054dae0 (Route_RemoveObjectToIgnoreForRoute)
Paired Ghidra pseudocode: 1054DAE0_Route_RemoveObjectToIgnoreForRoute.c
Window: [0x1054dae0, 0x1054db00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054db00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054dae0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
1054daf0: 4c cc ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054dae0 <.text+0x54cae0>:
1054dae0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1054dae4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1054dae8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1054daec:	50                                              	push   eax
1054daed:	51                                              	push   ecx
1054daee:	52                                              	push   edx
1054daef:	e8 4c cc ff ff                                  	call   0x1054a740
1054daf4:	83 c4 0c                                        	add    esp,0xc
1054daf7:	c3                                              	ret
1054daf8:	cc                                              	int3
1054daf9:	cc                                              	int3
1054dafa:	cc                                              	int3
1054dafb:	cc                                              	int3
1054dafc:	cc                                              	int3
1054dafd:	cc                                              	int3
1054dafe:	cc                                              	int3
1054daff:	cc                                              	int3

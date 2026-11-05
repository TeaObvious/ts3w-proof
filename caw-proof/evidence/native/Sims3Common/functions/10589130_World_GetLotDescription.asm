# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589130 (World_GetLotDescription)
Paired Ghidra pseudocode: 10589130_World_GetLotDescription.c
Window: [0x10589130, 0x10589150) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589130: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 f5 ff ff 83
10589140: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589130 <.text+0x588130>:
10589130:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10589134:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10589138:	50                                              	push   eax
10589139:	51                                              	push   ecx
1058913a:	e8 51 f5 ff ff                                  	call   0x10588690
1058913f:	83 c4 08                                        	add    esp,0x8
10589142:	c3                                              	ret
10589143:	cc                                              	int3
10589144:	cc                                              	int3
10589145:	cc                                              	int3
10589146:	cc                                              	int3
10589147:	cc                                              	int3
10589148:	cc                                              	int3
10589149:	cc                                              	int3
1058914a:	cc                                              	int3
1058914b:	cc                                              	int3
1058914c:	cc                                              	int3
1058914d:	cc                                              	int3
1058914e:	cc                                              	int3
1058914f:	cc                                              	int3

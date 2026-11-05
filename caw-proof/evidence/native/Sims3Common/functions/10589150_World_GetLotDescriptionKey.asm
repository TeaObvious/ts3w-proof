# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589150 (World_GetLotDescriptionKey)
Paired Ghidra pseudocode: 10589150_World_GetLotDescriptionKey.c
Window: [0x10589150, 0x10589170) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589150: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 f6 ff ff 83
10589160: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589150 <.text+0x588150>:
10589150:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10589154:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10589158:	50                                              	push   eax
10589159:	51                                              	push   ecx
1058915a:	e8 31 f6 ff ff                                  	call   0x10588790
1058915f:	83 c4 08                                        	add    esp,0x8
10589162:	c3                                              	ret
10589163:	cc                                              	int3
10589164:	cc                                              	int3
10589165:	cc                                              	int3
10589166:	cc                                              	int3
10589167:	cc                                              	int3
10589168:	cc                                              	int3
10589169:	cc                                              	int3
1058916a:	cc                                              	int3
1058916b:	cc                                              	int3
1058916c:	cc                                              	int3
1058916d:	cc                                              	int3
1058916e:	cc                                              	int3
1058916f:	cc                                              	int3

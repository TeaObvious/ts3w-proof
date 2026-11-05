# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589080 (World_ObjectDesigner_GetObjectDesignPresetImpl)
Paired Ghidra pseudocode: 10589080_World_ObjectDesigner_GetObjectDesignPresetImpl.c
Window: [0x10589080, 0x105890a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105890a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589080: 8b 44 24 08 8b 4c 24 04 50 51 e8 c1 ee ff ff 83
10589090: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589080 <.text+0x588080>:
10589080:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10589084:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10589088:	50                                              	push   eax
10589089:	51                                              	push   ecx
1058908a:	e8 c1 ee ff ff                                  	call   0x10587f50
1058908f:	83 c4 08                                        	add    esp,0x8
10589092:	c3                                              	ret
10589093:	cc                                              	int3
10589094:	cc                                              	int3
10589095:	cc                                              	int3
10589096:	cc                                              	int3
10589097:	cc                                              	int3
10589098:	cc                                              	int3
10589099:	cc                                              	int3
1058909a:	cc                                              	int3
1058909b:	cc                                              	int3
1058909c:	cc                                              	int3
1058909d:	cc                                              	int3
1058909e:	cc                                              	int3
1058909f:	cc                                              	int3

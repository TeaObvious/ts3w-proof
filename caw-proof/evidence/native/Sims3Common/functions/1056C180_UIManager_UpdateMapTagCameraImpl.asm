# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c180 (UIManager_UpdateMapTagCameraImpl)
Paired Ghidra pseudocode: 1056C180_UIManager_UpdateMapTagCameraImpl.c
Window: [0x1056c180, 0x1056c1a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c1a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c180: e8 fb eb 06 00 85 c0 74 07 8b c8 e9 20 eb 06 00
1056c190: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c180 <.text+0x56b180>:
1056c180:	e8 fb eb 06 00                                  	call   0x105dad80
1056c185:	85 c0                                           	test   eax,eax
1056c187:	74 07                                           	je     0x1056c190
1056c189:	8b c8                                           	mov    ecx,eax
1056c18b:	e9 20 eb 06 00                                  	jmp    0x105dacb0
1056c190:	c3                                              	ret
1056c191:	cc                                              	int3
1056c192:	cc                                              	int3
1056c193:	cc                                              	int3
1056c194:	cc                                              	int3
1056c195:	cc                                              	int3
1056c196:	cc                                              	int3
1056c197:	cc                                              	int3
1056c198:	cc                                              	int3
1056c199:	cc                                              	int3
1056c19a:	cc                                              	int3
1056c19b:	cc                                              	int3
1056c19c:	cc                                              	int3
1056c19d:	cc                                              	int3
1056c19e:	cc                                              	int3
1056c19f:	cc                                              	int3

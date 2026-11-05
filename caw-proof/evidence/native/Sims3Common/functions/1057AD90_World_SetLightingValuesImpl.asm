# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ad90 (World_SetLightingValuesImpl)
Paired Ghidra pseudocode: 1057AD90_World_SetLightingValuesImpl.c
Window: [0x1057ad90, 0x1057adb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057adb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ad90: 8b 44 24 04 85 c0 b9 f0 51 c7 10 75 05 e9 be 04
1057ada0: f4 ff 50 e8 c8 04 f4 ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ad90 <.text+0x579d90>:
1057ad90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057ad94:	85 c0                                           	test   eax,eax
1057ad96:	b9 f0 51 c7 10                                  	mov    ecx,0x10c751f0
1057ad9b:	75 05                                           	jne    0x1057ada2
1057ad9d:	e9 be 04 f4 ff                                  	jmp    0x104bb260
1057ada2:	50                                              	push   eax
1057ada3:	e8 c8 04 f4 ff                                  	call   0x104bb270
1057ada8:	c3                                              	ret
1057ada9:	cc                                              	int3
1057adaa:	cc                                              	int3
1057adab:	cc                                              	int3
1057adac:	cc                                              	int3
1057adad:	cc                                              	int3
1057adae:	cc                                              	int3
1057adaf:	cc                                              	int3

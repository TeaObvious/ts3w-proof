# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532ab0 (DeviceConfig_EnableRegistryTelemetry)
Paired Ghidra pseudocode: 10532AB0_DeviceConfig_EnableRegistryTelemetry.c
Window: [0x10532ab0, 0x10532ad0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532ab0: 33 c0 38 44 24 04 0f 95 c0 89 44 24 04 e9 8e 03
10532ac0: 53 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532ab0 <.text+0x531ab0>:
10532ab0:	33 c0                                           	xor    eax,eax
10532ab2:	38 44 24 04                                     	cmp    BYTE PTR [esp+0x4],al
10532ab6:	0f 95 c0                                        	setne  al
10532ab9:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10532abd:	e9 8e 03 53 00                                  	jmp    0x10a62e50
10532ac2:	cc                                              	int3
10532ac3:	cc                                              	int3
10532ac4:	cc                                              	int3
10532ac5:	cc                                              	int3
10532ac6:	cc                                              	int3
10532ac7:	cc                                              	int3
10532ac8:	cc                                              	int3
10532ac9:	cc                                              	int3
10532aca:	cc                                              	int3
10532acb:	cc                                              	int3
10532acc:	cc                                              	int3
10532acd:	cc                                              	int3
10532ace:	cc                                              	int3
10532acf:	cc                                              	int3

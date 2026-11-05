# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fbc0 (EffectComponent_StopEffect)
Paired Ghidra pseudocode: 1097FBC0_EffectComponent_StopEffect.c
Window: [0x1097fbc0, 0x1097fbe0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fbe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fbc0: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 9e 60
1097fbd0: db ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fbc0 <.text+0x97ebc0>:
1097fbc0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fbc4:	85 c9                                           	test   ecx,ecx
1097fbc6:	74 0a                                           	je     0x1097fbd2
1097fbc8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097fbcc:	50                                              	push   eax
1097fbcd:	e8 9e 60 db ff                                  	call   0x10735c70
1097fbd2:	c3                                              	ret
1097fbd3:	cc                                              	int3
1097fbd4:	cc                                              	int3
1097fbd5:	cc                                              	int3
1097fbd6:	cc                                              	int3
1097fbd7:	cc                                              	int3
1097fbd8:	cc                                              	int3
1097fbd9:	cc                                              	int3
1097fbda:	cc                                              	int3
1097fbdb:	cc                                              	int3
1097fbdc:	cc                                              	int3
1097fbdd:	cc                                              	int3
1097fbde:	cc                                              	int3
1097fbdf:	cc                                              	int3

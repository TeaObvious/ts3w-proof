# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cbc0 (SacsWrap_ActorDefinition_SetName)
Paired Ghidra pseudocode: 1098CBC0_SacsWrap_ActorDefinition_SetName.c
Window: [0x1098cbc0, 0x1098cbe0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cbe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cbc0: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098cbd0: 50 e8 2a 35 c6 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cbc0 <.text+0x98bbc0>:
1098cbc0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cbc4:	85 c9                                           	test   ecx,ecx
1098cbc6:	74 0e                                           	je     0x1098cbd6
1098cbc8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cbcc:	85 c0                                           	test   eax,eax
1098cbce:	74 06                                           	je     0x1098cbd6
1098cbd0:	50                                              	push   eax
1098cbd1:	e8 2a 35 c6 ff                                  	call   0x105f0100
1098cbd6:	c3                                              	ret
1098cbd7:	cc                                              	int3
1098cbd8:	cc                                              	int3
1098cbd9:	cc                                              	int3
1098cbda:	cc                                              	int3
1098cbdb:	cc                                              	int3
1098cbdc:	cc                                              	int3
1098cbdd:	cc                                              	int3
1098cbde:	cc                                              	int3
1098cbdf:	cc                                              	int3

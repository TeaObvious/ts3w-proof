# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cda0 (SacsWrap_StateMachineDriver_Enter)
Paired Ghidra pseudocode: 1098CDA0_SacsWrap_StateMachineDriver_Enter.c
Window: [0x1098cda0, 0x1098cdc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cdc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cda0: 8b 4c 24 04 85 c9 74 13 8b 44 24 0c 85 c0 74 0b
1098cdb0: 50 8b 44 24 0c 50 e8 f5 93 c6 ff c3 cc cc cc cc

LINEAR DISASSEMBLY
1098cda0 <.text+0x98bda0>:
1098cda0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cda4:	85 c9                                           	test   ecx,ecx
1098cda6:	74 13                                           	je     0x1098cdbb
1098cda8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cdac:	85 c0                                           	test   eax,eax
1098cdae:	74 0b                                           	je     0x1098cdbb
1098cdb0:	50                                              	push   eax
1098cdb1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cdb5:	50                                              	push   eax
1098cdb6:	e8 f5 93 c6 ff                                  	call   0x105f61b0
1098cdbb:	c3                                              	ret
1098cdbc:	cc                                              	int3
1098cdbd:	cc                                              	int3
1098cdbe:	cc                                              	int3
1098cdbf:	cc                                              	int3

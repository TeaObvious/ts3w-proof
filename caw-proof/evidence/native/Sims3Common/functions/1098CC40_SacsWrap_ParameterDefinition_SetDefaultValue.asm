# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cc40 (SacsWrap_ParameterDefinition_SetDefaultValue)
Paired Ghidra pseudocode: 1098CC40_SacsWrap_ParameterDefinition_SetDefaultValue.c
Window: [0x1098cc40, 0x1098cc60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cc60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cc40: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 5e fc
1098cc50: ff ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cc40 <.text+0x98bc40>:
1098cc40:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cc44:	85 c9                                           	test   ecx,ecx
1098cc46:	74 0a                                           	je     0x1098cc52
1098cc48:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cc4c:	50                                              	push   eax
1098cc4d:	e8 5e fc ff ff                                  	call   0x1098c8b0
1098cc52:	c3                                              	ret
1098cc53:	cc                                              	int3
1098cc54:	cc                                              	int3
1098cc55:	cc                                              	int3
1098cc56:	cc                                              	int3
1098cc57:	cc                                              	int3
1098cc58:	cc                                              	int3
1098cc59:	cc                                              	int3
1098cc5a:	cc                                              	int3
1098cc5b:	cc                                              	int3
1098cc5c:	cc                                              	int3
1098cc5d:	cc                                              	int3
1098cc5e:	cc                                              	int3
1098cc5f:	cc                                              	int3

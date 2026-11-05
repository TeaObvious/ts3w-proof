# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cc20 (SacsWrap_ParameterDefinition_GetDefaultValue)
Paired Ghidra pseudocode: 1098CC20_SacsWrap_ParameterDefinition_GetDefaultValue.c
Window: [0x1098cc20, 0x1098cc40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cc40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cc20: 8b 4c 24 04 85 c9 74 08 6a 01 e8 b1 1f c6 ff c3
1098cc30: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cc20 <.text+0x98bc20>:
1098cc20:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cc24:	85 c9                                           	test   ecx,ecx
1098cc26:	74 08                                           	je     0x1098cc30
1098cc28:	6a 01                                           	push   0x1
1098cc2a:	e8 b1 1f c6 ff                                  	call   0x105eebe0
1098cc2f:	c3                                              	ret
1098cc30:	33 c0                                           	xor    eax,eax
1098cc32:	c3                                              	ret
1098cc33:	cc                                              	int3
1098cc34:	cc                                              	int3
1098cc35:	cc                                              	int3
1098cc36:	cc                                              	int3
1098cc37:	cc                                              	int3
1098cc38:	cc                                              	int3
1098cc39:	cc                                              	int3
1098cc3a:	cc                                              	int3
1098cc3b:	cc                                              	int3
1098cc3c:	cc                                              	int3
1098cc3d:	cc                                              	int3
1098cc3e:	cc                                              	int3
1098cc3f:	cc                                              	int3

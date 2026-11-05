# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cc00 (SacsWrap_ParameterDefinition_SetName)
Paired Ghidra pseudocode: 1098CC00_SacsWrap_ParameterDefinition_SetName.c
Window: [0x1098cc00, 0x1098cc20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cc20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cc00: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098cc10: 50 e8 5a 30 c6 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cc00 <.text+0x98bc00>:
1098cc00:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cc04:	85 c9                                           	test   ecx,ecx
1098cc06:	74 0e                                           	je     0x1098cc16
1098cc08:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cc0c:	85 c0                                           	test   eax,eax
1098cc0e:	74 06                                           	je     0x1098cc16
1098cc10:	50                                              	push   eax
1098cc11:	e8 5a 30 c6 ff                                  	call   0x105efc70
1098cc16:	c3                                              	ret
1098cc17:	cc                                              	int3
1098cc18:	cc                                              	int3
1098cc19:	cc                                              	int3
1098cc1a:	cc                                              	int3
1098cc1b:	cc                                              	int3
1098cc1c:	cc                                              	int3
1098cc1d:	cc                                              	int3
1098cc1e:	cc                                              	int3
1098cc1f:	cc                                              	int3

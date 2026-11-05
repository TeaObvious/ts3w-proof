# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098caa0 (SacsWrap_State_SetName)
Paired Ghidra pseudocode: 1098CAA0_SacsWrap_State_SetName.c
Window: [0x1098caa0, 0x1098cac0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098caa0: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098cab0: 50 e8 4a 32 c6 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098caa0 <.text+0x98baa0>:
1098caa0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098caa4:	85 c9                                           	test   ecx,ecx
1098caa6:	74 0e                                           	je     0x1098cab6
1098caa8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098caac:	85 c0                                           	test   eax,eax
1098caae:	74 06                                           	je     0x1098cab6
1098cab0:	50                                              	push   eax
1098cab1:	e8 4a 32 c6 ff                                  	call   0x105efd00
1098cab6:	c3                                              	ret
1098cab7:	cc                                              	int3
1098cab8:	cc                                              	int3
1098cab9:	cc                                              	int3
1098caba:	cc                                              	int3
1098cabb:	cc                                              	int3
1098cabc:	cc                                              	int3
1098cabd:	cc                                              	int3
1098cabe:	cc                                              	int3
1098cabf:	cc                                              	int3

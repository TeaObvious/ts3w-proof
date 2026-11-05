# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537be0 (OnlineFeaturesHost_IsLoggedIn)
Paired Ghidra pseudocode: 10537BE0_OnlineFeaturesHost_IsLoggedIn.c
Window: [0x10537be0, 0x10537c00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537be0: a1 dc 88 c7 10 85 c0 74 05 83 c0 f8 75 03 32 c0
10537bf0: c3 8a 40 14 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10537be0 <.text+0x536be0>:
10537be0:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
10537be5:	85 c0                                           	test   eax,eax
10537be7:	74 05                                           	je     0x10537bee
10537be9:	83 c0 f8                                        	add    eax,0xfffffff8
10537bec:	75 03                                           	jne    0x10537bf1
10537bee:	32 c0                                           	xor    al,al
10537bf0:	c3                                              	ret
10537bf1:	8a 40 14                                        	mov    al,BYTE PTR [eax+0x14]
10537bf4:	c3                                              	ret
10537bf5:	cc                                              	int3
10537bf6:	cc                                              	int3
10537bf7:	cc                                              	int3
10537bf8:	cc                                              	int3
10537bf9:	cc                                              	int3
10537bfa:	cc                                              	int3
10537bfb:	cc                                              	int3
10537bfc:	cc                                              	int3
10537bfd:	cc                                              	int3
10537bfe:	cc                                              	int3
10537bff:	cc                                              	int3

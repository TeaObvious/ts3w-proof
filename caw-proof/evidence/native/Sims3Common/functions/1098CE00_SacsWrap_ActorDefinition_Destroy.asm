# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ce00 (SacsWrap_ActorDefinition_Destroy)
Paired Ghidra pseudocode: 1098CE00_SacsWrap_ActorDefinition_Destroy.c
Window: [0x1098ce00, 0x1098ce20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ce20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ce00: 83 3d a0 d5 c7 10 00 74 0f 8b 4c 24 04 85 c9 74
1098ce10: 07 8b 01 8b 50 04 ff e2 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ce00 <.text+0x98be00>:
1098ce00:	83 3d a0 d5 c7 10 00                            	cmp    DWORD PTR ds:0x10c7d5a0,0x0
1098ce07:	74 0f                                           	je     0x1098ce18
1098ce09:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ce0d:	85 c9                                           	test   ecx,ecx
1098ce0f:	74 07                                           	je     0x1098ce18
1098ce11:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098ce13:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098ce16:	ff e2                                           	jmp    edx
1098ce18:	c3                                              	ret
1098ce19:	cc                                              	int3
1098ce1a:	cc                                              	int3
1098ce1b:	cc                                              	int3
1098ce1c:	cc                                              	int3
1098ce1d:	cc                                              	int3
1098ce1e:	cc                                              	int3
1098ce1f:	cc                                              	int3

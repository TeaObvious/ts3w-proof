# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cd20 (SacsWrap_StateMachineDriver_Destroy)
Paired Ghidra pseudocode: 1098CD20_SacsWrap_StateMachineDriver_Destroy.c
Window: [0x1098cd20, 0x1098cd40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cd40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cd20: 83 3d a0 d5 c7 10 00 74 12 8b 44 24 04 85 c0 74
1098cd30: 0a 8d 48 08 8b 01 8b 50 04 ff e2 c3 cc cc cc cc

LINEAR DISASSEMBLY
1098cd20 <.text+0x98bd20>:
1098cd20:	83 3d a0 d5 c7 10 00                            	cmp    DWORD PTR ds:0x10c7d5a0,0x0
1098cd27:	74 12                                           	je     0x1098cd3b
1098cd29:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098cd2d:	85 c0                                           	test   eax,eax
1098cd2f:	74 0a                                           	je     0x1098cd3b
1098cd31:	8d 48 08                                        	lea    ecx,[eax+0x8]
1098cd34:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098cd36:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098cd39:	ff e2                                           	jmp    edx
1098cd3b:	c3                                              	ret
1098cd3c:	cc                                              	int3
1098cd3d:	cc                                              	int3
1098cd3e:	cc                                              	int3
1098cd3f:	cc                                              	int3

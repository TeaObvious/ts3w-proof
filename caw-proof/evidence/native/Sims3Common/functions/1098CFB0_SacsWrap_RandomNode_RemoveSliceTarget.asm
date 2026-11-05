# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cfb0 (SacsWrap_RandomNode_RemoveSliceTarget)
Paired Ghidra pseudocode: 1098CFB0_SacsWrap_RandomNode_RemoveSliceTarget.c
Window: [0x1098cfb0, 0x1098cfd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cfd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cfb0: 8b 4c 24 04 85 c9 74 13 8b 44 24 0c 85 c0 74 0b
1098cfc0: 50 8b 44 24 0c 50 e8 55 ae c5 ff c3 cc cc cc cc

LINEAR DISASSEMBLY
1098cfb0 <.text+0x98bfb0>:
1098cfb0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cfb4:	85 c9                                           	test   ecx,ecx
1098cfb6:	74 13                                           	je     0x1098cfcb
1098cfb8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cfbc:	85 c0                                           	test   eax,eax
1098cfbe:	74 0b                                           	je     0x1098cfcb
1098cfc0:	50                                              	push   eax
1098cfc1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cfc5:	50                                              	push   eax
1098cfc6:	e8 55 ae c5 ff                                  	call   0x105e7e20
1098cfcb:	c3                                              	ret
1098cfcc:	cc                                              	int3
1098cfcd:	cc                                              	int3
1098cfce:	cc                                              	int3
1098cfcf:	cc                                              	int3

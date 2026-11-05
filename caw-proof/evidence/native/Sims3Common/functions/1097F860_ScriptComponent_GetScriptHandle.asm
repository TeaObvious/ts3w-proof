# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f860 (ScriptComponent_GetScriptHandle)
Paired Ghidra pseudocode: 1097F860_ScriptComponent_GetScriptHandle.c
Window: [0x1097f860, 0x1097f880) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f860: 8b 4c 24 04 85 c9 74 09 8b 41 08 8b 49 0c 8b d1
1097f870: c3 33 c0 33 d2 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f860 <.text+0x97e860>:
1097f860:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f864:	85 c9                                           	test   ecx,ecx
1097f866:	74 09                                           	je     0x1097f871
1097f868:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1097f86b:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
1097f86e:	8b d1                                           	mov    edx,ecx
1097f870:	c3                                              	ret
1097f871:	33 c0                                           	xor    eax,eax
1097f873:	33 d2                                           	xor    edx,edx
1097f875:	c3                                              	ret
1097f876:	cc                                              	int3
1097f877:	cc                                              	int3
1097f878:	cc                                              	int3
1097f879:	cc                                              	int3
1097f87a:	cc                                              	int3
1097f87b:	cc                                              	int3
1097f87c:	cc                                              	int3
1097f87d:	cc                                              	int3
1097f87e:	cc                                              	int3
1097f87f:	cc                                              	int3

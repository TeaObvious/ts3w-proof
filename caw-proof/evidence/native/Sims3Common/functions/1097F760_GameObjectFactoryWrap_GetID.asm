# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f760 (GameObjectFactoryWrap_GetID)
Paired Ghidra pseudocode: 1097F760_GameObjectFactoryWrap_GetID.c
Window: [0x1097f760, 0x1097f770) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f760: 8b 4c 24 04 8b 41 08 8b 51 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1097f760 <.text+0x97e760>:
1097f760:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f764:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1097f767:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
1097f76a:	c3                                              	ret
1097f76b:	cc                                              	int3
1097f76c:	cc                                              	int3
1097f76d:	cc                                              	int3
1097f76e:	cc                                              	int3
1097f76f:	cc                                              	int3

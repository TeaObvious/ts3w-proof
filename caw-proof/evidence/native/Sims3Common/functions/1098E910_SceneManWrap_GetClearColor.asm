# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e910 (SceneManWrap_GetClearColor)
Paired Ghidra pseudocode: 1098E910_SceneManWrap_GetClearColor.c
Window: [0x1098e910, 0x1098e920) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e910: 8b 44 24 04 8b 80 cc 01 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1098e910 <.text+0x98d910>:
1098e910:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098e914:	8b 80 cc 01 00 00                               	mov    eax,DWORD PTR [eax+0x1cc]
1098e91a:	c3                                              	ret
1098e91b:	cc                                              	int3
1098e91c:	cc                                              	int3
1098e91d:	cc                                              	int3
1098e91e:	cc                                              	int3
1098e91f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e830 (SceneManWrap_GetMainCamera)
Paired Ghidra pseudocode: 1098E830_SceneManWrap_GetMainCamera.c
Window: [0x1098e830, 0x1098e840) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e830: 8b 4c 24 04 e9 17 73 01 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e830 <.text+0x98d830>:
1098e830:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e834:	e9 17 73 01 00                                  	jmp    0x109a5b50
1098e839:	cc                                              	int3
1098e83a:	cc                                              	int3
1098e83b:	cc                                              	int3
1098e83c:	cc                                              	int3
1098e83d:	cc                                              	int3
1098e83e:	cc                                              	int3
1098e83f:	cc                                              	int3

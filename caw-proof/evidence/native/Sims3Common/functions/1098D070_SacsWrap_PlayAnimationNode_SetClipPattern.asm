# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d070 (SacsWrap_PlayAnimationNode_SetClipPattern)
Paired Ghidra pseudocode: 1098D070_SacsWrap_PlayAnimationNode_SetClipPattern.c
Window: [0x1098d070, 0x1098d090) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d070: 8b 4c 24 04 85 c9 74 0f 8b 44 24 0c 8b 54 24 08
1098d080: 50 52 e8 89 c4 c5 ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d070 <.text+0x98c070>:
1098d070:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d074:	85 c9                                           	test   ecx,ecx
1098d076:	74 0f                                           	je     0x1098d087
1098d078:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098d07c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098d080:	50                                              	push   eax
1098d081:	52                                              	push   edx
1098d082:	e8 89 c4 c5 ff                                  	call   0x105e9510
1098d087:	c3                                              	ret
1098d088:	cc                                              	int3
1098d089:	cc                                              	int3
1098d08a:	cc                                              	int3
1098d08b:	cc                                              	int3
1098d08c:	cc                                              	int3
1098d08d:	cc                                              	int3
1098d08e:	cc                                              	int3
1098d08f:	cc                                              	int3

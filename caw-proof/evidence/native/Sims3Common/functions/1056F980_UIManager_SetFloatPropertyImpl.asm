# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f980 (UIManager_SetFloatPropertyImpl)
Paired Ghidra pseudocode: 1056F980_UIManager_SetFloatPropertyImpl.c
Window: [0x1056f980, 0x1056f9a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f9a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f980: d9 44 24 0c 8b 44 24 08 51 8b 4c 24 08 d9 1c 24
1056f990: 50 51 e8 59 dc ff ff 83 c4 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1056f980 <.text+0x56e980>:
1056f980:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1056f984:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1056f988:	51                                              	push   ecx
1056f989:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1056f98d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1056f990:	50                                              	push   eax
1056f991:	51                                              	push   ecx
1056f992:	e8 59 dc ff ff                                  	call   0x1056d5f0
1056f997:	83 c4 0c                                        	add    esp,0xc
1056f99a:	c3                                              	ret
1056f99b:	cc                                              	int3
1056f99c:	cc                                              	int3
1056f99d:	cc                                              	int3
1056f99e:	cc                                              	int3
1056f99f:	cc                                              	int3

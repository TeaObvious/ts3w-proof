# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995b50 (TrackMask_SetBoneWeight)
Paired Ghidra pseudocode: 10995B50_TrackMask_SetBoneWeight.c
Window: [0x10995b50, 0x10995b70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995b50: d9 44 24 0c 8b 44 24 08 51 8b 4c 24 08 d9 1c 24
10995b60: 50 e8 5a 36 9e ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995b50 <.text+0x994b50>:
10995b50:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10995b54:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10995b58:	51                                              	push   ecx
10995b59:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10995b5d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10995b60:	50                                              	push   eax
10995b61:	e8 5a 36 9e ff                                  	call   0x103791c0
10995b66:	c3                                              	ret
10995b67:	cc                                              	int3
10995b68:	cc                                              	int3
10995b69:	cc                                              	int3
10995b6a:	cc                                              	int3
10995b6b:	cc                                              	int3
10995b6c:	cc                                              	int3
10995b6d:	cc                                              	int3
10995b6e:	cc                                              	int3
10995b6f:	cc                                              	int3

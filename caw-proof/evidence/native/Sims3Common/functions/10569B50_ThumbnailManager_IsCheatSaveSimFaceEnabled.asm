# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569b50 (ThumbnailManager_IsCheatSaveSimFaceEnabled)
Paired Ghidra pseudocode: 10569B50_ThumbnailManager_IsCheatSaveSimFaceEnabled.c
Window: [0x10569b50, 0x10569b70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569b50: 8b 0d 50 11 c7 10 85 c9 74 05 e9 61 90 db ff 32
10569b60: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569b50 <.text+0x568b50>:
10569b50:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569b56:	85 c9                                           	test   ecx,ecx
10569b58:	74 05                                           	je     0x10569b5f
10569b5a:	e9 61 90 db ff                                  	jmp    0x10322bc0
10569b5f:	32 c0                                           	xor    al,al
10569b61:	c3                                              	ret
10569b62:	cc                                              	int3
10569b63:	cc                                              	int3
10569b64:	cc                                              	int3
10569b65:	cc                                              	int3
10569b66:	cc                                              	int3
10569b67:	cc                                              	int3
10569b68:	cc                                              	int3
10569b69:	cc                                              	int3
10569b6a:	cc                                              	int3
10569b6b:	cc                                              	int3
10569b6c:	cc                                              	int3
10569b6d:	cc                                              	int3
10569b6e:	cc                                              	int3
10569b6f:	cc                                              	int3

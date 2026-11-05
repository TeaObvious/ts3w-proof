# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569c30 (ThumbnailManager_CloneObject)
Paired Ghidra pseudocode: 10569C30_ThumbnailManager_CloneObject.c
Window: [0x10569c30, 0x10569c50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569c50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569c30: 8b 0d 50 11 c7 10 85 c9 75 05 33 c0 33 d2 c3 8b
10569c40: 44 24 08 8b 54 24 04 50 52 e8 d2 73 dc ff c3 cc

LINEAR DISASSEMBLY
10569c30 <.text+0x568c30>:
10569c30:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569c36:	85 c9                                           	test   ecx,ecx
10569c38:	75 05                                           	jne    0x10569c3f
10569c3a:	33 c0                                           	xor    eax,eax
10569c3c:	33 d2                                           	xor    edx,edx
10569c3e:	c3                                              	ret
10569c3f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10569c43:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10569c47:	50                                              	push   eax
10569c48:	52                                              	push   edx
10569c49:	e8 d2 73 dc ff                                  	call   0x10331020
10569c4e:	c3                                              	ret
10569c4f:	cc                                              	int3

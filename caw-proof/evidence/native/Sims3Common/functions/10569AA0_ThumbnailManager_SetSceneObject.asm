# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569aa0 (ThumbnailManager_SetSceneObject)
Paired Ghidra pseudocode: 10569AA0_ThumbnailManager_SetSceneObject.c
Window: [0x10569aa0, 0x10569ac0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569ac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569aa0: 8b 0d 50 11 c7 10 85 c9 74 0f 8b 44 24 08 8b 54
10569ab0: 24 04 50 52 e8 67 c1 db ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569aa0 <.text+0x568aa0>:
10569aa0:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569aa6:	85 c9                                           	test   ecx,ecx
10569aa8:	74 0f                                           	je     0x10569ab9
10569aaa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10569aae:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10569ab2:	50                                              	push   eax
10569ab3:	52                                              	push   edx
10569ab4:	e8 67 c1 db ff                                  	call   0x10325c20
10569ab9:	c3                                              	ret
10569aba:	cc                                              	int3
10569abb:	cc                                              	int3
10569abc:	cc                                              	int3
10569abd:	cc                                              	int3
10569abe:	cc                                              	int3
10569abf:	cc                                              	int3

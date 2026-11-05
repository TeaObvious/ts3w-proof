# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d010 (LocomotionManager_UpdateRenderer)
Paired Ghidra pseudocode: 1097D010_LocomotionManager_UpdateRenderer.c
Window: [0x1097d010, 0x1097d030) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d010: d9 44 24 04 51 8b 0d a0 d9 c7 10 d9 1c 24 e8 ad
1097d020: ed ca ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d010 <.text+0x97c010>:
1097d010:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1097d014:	51                                              	push   ecx
1097d015:	8b 0d a0 d9 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7d9a0
1097d01b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097d01e:	e8 ad ed ca ff                                  	call   0x1062bdd0
1097d023:	c3                                              	ret
1097d024:	cc                                              	int3
1097d025:	cc                                              	int3
1097d026:	cc                                              	int3
1097d027:	cc                                              	int3
1097d028:	cc                                              	int3
1097d029:	cc                                              	int3
1097d02a:	cc                                              	int3
1097d02b:	cc                                              	int3
1097d02c:	cc                                              	int3
1097d02d:	cc                                              	int3
1097d02e:	cc                                              	int3
1097d02f:	cc                                              	int3

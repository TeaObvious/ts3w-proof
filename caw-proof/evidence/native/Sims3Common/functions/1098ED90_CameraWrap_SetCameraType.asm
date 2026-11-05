# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ed90 (CameraWrap_SetCameraType)
Paired Ghidra pseudocode: 1098ED90_CameraWrap_SetCameraType.c
Window: [0x1098ed90, 0x1098eda0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098eda0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ed90: 8b 44 24 08 8b 4c 24 04 50 e8 82 39 dc ff c3 cc

LINEAR DISASSEMBLY
1098ed90 <.text+0x98dd90>:
1098ed90:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098ed94:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ed98:	50                                              	push   eax
1098ed99:	e8 82 39 dc ff                                  	call   0x10752720
1098ed9e:	c3                                              	ret
1098ed9f:	cc                                              	int3

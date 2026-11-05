# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ed40 (CameraWrap_SetFOVDegrees)
Paired Ghidra pseudocode: 1098ED40_CameraWrap_SetFOVDegrees.c
Window: [0x1098ed40, 0x1098ed60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ed60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ed40: d9 44 24 08 51 8b 4c 24 08 d9 1c 24 e8 0f 4a dc
1098ed50: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ed40 <.text+0x98dd40>:
1098ed40:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098ed44:	51                                              	push   ecx
1098ed45:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098ed49:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098ed4c:	e8 0f 4a dc ff                                  	call   0x10753760
1098ed51:	c3                                              	ret
1098ed52:	cc                                              	int3
1098ed53:	cc                                              	int3
1098ed54:	cc                                              	int3
1098ed55:	cc                                              	int3
1098ed56:	cc                                              	int3
1098ed57:	cc                                              	int3
1098ed58:	cc                                              	int3
1098ed59:	cc                                              	int3
1098ed5a:	cc                                              	int3
1098ed5b:	cc                                              	int3
1098ed5c:	cc                                              	int3
1098ed5d:	cc                                              	int3
1098ed5e:	cc                                              	int3
1098ed5f:	cc                                              	int3

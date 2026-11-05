# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ece0 (CameraWrap_SetNearClip)
Paired Ghidra pseudocode: 1098ECE0_CameraWrap_SetNearClip.c
Window: [0x1098ece0, 0x1098ed00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ed00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ece0: d9 44 24 08 51 8b 4c 24 08 d9 1c 24 e8 5f ae a8
1098ecf0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ece0 <.text+0x98dce0>:
1098ece0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098ece4:	51                                              	push   ecx
1098ece5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098ece9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098ecec:	e8 5f ae a8 ff                                  	call   0x10419b50
1098ecf1:	c3                                              	ret
1098ecf2:	cc                                              	int3
1098ecf3:	cc                                              	int3
1098ecf4:	cc                                              	int3
1098ecf5:	cc                                              	int3
1098ecf6:	cc                                              	int3
1098ecf7:	cc                                              	int3
1098ecf8:	cc                                              	int3
1098ecf9:	cc                                              	int3
1098ecfa:	cc                                              	int3
1098ecfb:	cc                                              	int3
1098ecfc:	cc                                              	int3
1098ecfd:	cc                                              	int3
1098ecfe:	cc                                              	int3
1098ecff:	cc                                              	int3

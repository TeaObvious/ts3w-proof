# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056beb0 (UIManager_SetCursorPositionImpl)
Paired Ghidra pseudocode: 1056BEB0_UIManager_SetCursorPositionImpl.c
Window: [0x1056beb0, 0x1056bed0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056beb0: e8 2b 14 3d 00 8b 4c 24 04 8b 10 8b 52 4c 51 8b
1056bec0: c8 ff d2 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056beb0 <.text+0x56aeb0>:
1056beb0:	e8 2b 14 3d 00                                  	call   0x1093d2e0
1056beb5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056beb9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bebb:	8b 52 4c                                        	mov    edx,DWORD PTR [edx+0x4c]
1056bebe:	51                                              	push   ecx
1056bebf:	8b c8                                           	mov    ecx,eax
1056bec1:	ff d2                                           	call   edx
1056bec3:	c3                                              	ret
1056bec4:	cc                                              	int3
1056bec5:	cc                                              	int3
1056bec6:	cc                                              	int3
1056bec7:	cc                                              	int3
1056bec8:	cc                                              	int3
1056bec9:	cc                                              	int3
1056beca:	cc                                              	int3
1056becb:	cc                                              	int3
1056becc:	cc                                              	int3
1056becd:	cc                                              	int3
1056bece:	cc                                              	int3
1056becf:	cc                                              	int3

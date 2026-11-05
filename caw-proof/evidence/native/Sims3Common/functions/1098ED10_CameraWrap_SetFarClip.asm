# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ed10 (CameraWrap_SetFarClip)
Paired Ghidra pseudocode: 1098ED10_CameraWrap_SetFarClip.c
Window: [0x1098ed10, 0x1098ed30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ed30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ed10: d9 44 24 08 51 8b 4c 24 08 d9 1c 24 e8 2f 8f b8
1098ed20: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ed10 <.text+0x98dd10>:
1098ed10:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098ed14:	51                                              	push   ecx
1098ed15:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098ed19:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098ed1c:	e8 2f 8f b8 ff                                  	call   0x10517c50
1098ed21:	c3                                              	ret
1098ed22:	cc                                              	int3
1098ed23:	cc                                              	int3
1098ed24:	cc                                              	int3
1098ed25:	cc                                              	int3
1098ed26:	cc                                              	int3
1098ed27:	cc                                              	int3
1098ed28:	cc                                              	int3
1098ed29:	cc                                              	int3
1098ed2a:	cc                                              	int3
1098ed2b:	cc                                              	int3
1098ed2c:	cc                                              	int3
1098ed2d:	cc                                              	int3
1098ed2e:	cc                                              	int3
1098ed2f:	cc                                              	int3

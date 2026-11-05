# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fb80 (UIManager_WinAttachToCycleImpl)
Paired Ghidra pseudocode: 1056FB80_UIManager_WinAttachToCycleImpl.c
Window: [0x1056fb80, 0x1056fba0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fb80: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 7e f8
1056fb90: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fb80 <.text+0x56eb80>:
1056fb80:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1056fb84:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1056fb88:	51                                              	push   ecx
1056fb89:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1056fb8c:	50                                              	push   eax
1056fb8d:	e8 7e f8 ff ff                                  	call   0x1056f410
1056fb92:	83 c4 08                                        	add    esp,0x8
1056fb95:	c3                                              	ret
1056fb96:	cc                                              	int3
1056fb97:	cc                                              	int3
1056fb98:	cc                                              	int3
1056fb99:	cc                                              	int3
1056fb9a:	cc                                              	int3
1056fb9b:	cc                                              	int3
1056fb9c:	cc                                              	int3
1056fb9d:	cc                                              	int3
1056fb9e:	cc                                              	int3
1056fb9f:	cc                                              	int3

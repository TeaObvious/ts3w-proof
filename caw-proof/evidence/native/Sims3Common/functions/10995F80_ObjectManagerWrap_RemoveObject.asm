# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995f80 (ObjectManagerWrap_RemoveObject)
Paired Ghidra pseudocode: 10995F80_ObjectManagerWrap_RemoveObject.c
Window: [0x10995f80, 0x10995fa0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995f80: 8b 4c 24 04 8b 01 8b 54 24 08 8b 40 3c 6a 01 52
10995f90: ff d0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995f80 <.text+0x994f80>:
10995f80:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995f84:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10995f86:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10995f8a:	8b 40 3c                                        	mov    eax,DWORD PTR [eax+0x3c]
10995f8d:	6a 01                                           	push   0x1
10995f8f:	52                                              	push   edx
10995f90:	ff d0                                           	call   eax
10995f92:	c3                                              	ret
10995f93:	cc                                              	int3
10995f94:	cc                                              	int3
10995f95:	cc                                              	int3
10995f96:	cc                                              	int3
10995f97:	cc                                              	int3
10995f98:	cc                                              	int3
10995f99:	cc                                              	int3
10995f9a:	cc                                              	int3
10995f9b:	cc                                              	int3
10995f9c:	cc                                              	int3
10995f9d:	cc                                              	int3
10995f9e:	cc                                              	int3
10995f9f:	cc                                              	int3

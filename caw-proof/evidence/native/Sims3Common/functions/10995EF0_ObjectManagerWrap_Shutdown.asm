# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995ef0 (ObjectManagerWrap_Shutdown)
Paired Ghidra pseudocode: 10995EF0_ObjectManagerWrap_Shutdown.c
Window: [0x10995ef0, 0x10995f10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995f10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995ef0: 8b 4c 24 04 85 c9 74 09 8b 01 8b 50 14 6a 01 ff
10995f00: d2 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995ef0 <.text+0x994ef0>:
10995ef0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995ef4:	85 c9                                           	test   ecx,ecx
10995ef6:	74 09                                           	je     0x10995f01
10995ef8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10995efa:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
10995efd:	6a 01                                           	push   0x1
10995eff:	ff d2                                           	call   edx
10995f01:	c3                                              	ret
10995f02:	cc                                              	int3
10995f03:	cc                                              	int3
10995f04:	cc                                              	int3
10995f05:	cc                                              	int3
10995f06:	cc                                              	int3
10995f07:	cc                                              	int3
10995f08:	cc                                              	int3
10995f09:	cc                                              	int3
10995f0a:	cc                                              	int3
10995f0b:	cc                                              	int3
10995f0c:	cc                                              	int3
10995f0d:	cc                                              	int3
10995f0e:	cc                                              	int3
10995f0f:	cc                                              	int3

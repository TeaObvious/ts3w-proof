# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995fa0 (ObjectManagerWrap_RemoveObjectFromManagerAndScene)
Paired Ghidra pseudocode: 10995FA0_ObjectManagerWrap_RemoveObjectFromManagerAndScene.c
Window: [0x10995fa0, 0x10995fc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995fa0: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
10995fb0: 50 e8 9a f3 8a ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995fa0 <.text+0x994fa0>:
10995fa0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995fa4:	85 c9                                           	test   ecx,ecx
10995fa6:	74 0e                                           	je     0x10995fb6
10995fa8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10995fac:	85 c0                                           	test   eax,eax
10995fae:	74 06                                           	je     0x10995fb6
10995fb0:	50                                              	push   eax
10995fb1:	e8 9a f3 8a ff                                  	call   0x10245350
10995fb6:	c3                                              	ret
10995fb7:	cc                                              	int3
10995fb8:	cc                                              	int3
10995fb9:	cc                                              	int3
10995fba:	cc                                              	int3
10995fbb:	cc                                              	int3
10995fbc:	cc                                              	int3
10995fbd:	cc                                              	int3
10995fbe:	cc                                              	int3
10995fbf:	cc                                              	int3

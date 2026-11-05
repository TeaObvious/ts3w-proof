# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10586000 (World_HandToolAttach)
Paired Ghidra pseudocode: 10586000_World_HandToolAttach.c
Window: [0x10586000, 0x10586020) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10586020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10586000: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10586010: fc f9 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10586000 <.text+0x585000>:
10586000:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10586004:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10586008:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1058600c:	50                                              	push   eax
1058600d:	51                                              	push   ecx
1058600e:	52                                              	push   edx
1058600f:	e8 fc f9 ff ff                                  	call   0x10585a10
10586014:	83 c4 0c                                        	add    esp,0xc
10586017:	c3                                              	ret
10586018:	cc                                              	int3
10586019:	cc                                              	int3
1058601a:	cc                                              	int3
1058601b:	cc                                              	int3
1058601c:	cc                                              	int3
1058601d:	cc                                              	int3
1058601e:	cc                                              	int3
1058601f:	cc                                              	int3

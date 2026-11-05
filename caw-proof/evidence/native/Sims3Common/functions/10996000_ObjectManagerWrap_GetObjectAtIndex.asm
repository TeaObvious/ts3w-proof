# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996000 (ObjectManagerWrap_GetObjectAtIndex)
Paired Ghidra pseudocode: 10996000_ObjectManagerWrap_GetObjectAtIndex.c
Window: [0x10996000, 0x10996020) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996000: 8b 4c 24 04 85 c9 74 0b 8b 44 24 08 50 e8 4e d1
10996010: 8a ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996000 <.text+0x995000>:
10996000:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996004:	85 c9                                           	test   ecx,ecx
10996006:	74 0b                                           	je     0x10996013
10996008:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1099600c:	50                                              	push   eax
1099600d:	e8 4e d1 8a ff                                  	call   0x10243160
10996012:	c3                                              	ret
10996013:	33 c0                                           	xor    eax,eax
10996015:	c3                                              	ret
10996016:	cc                                              	int3
10996017:	cc                                              	int3
10996018:	cc                                              	int3
10996019:	cc                                              	int3
1099601a:	cc                                              	int3
1099601b:	cc                                              	int3
1099601c:	cc                                              	int3
1099601d:	cc                                              	int3
1099601e:	cc                                              	int3
1099601f:	cc                                              	int3

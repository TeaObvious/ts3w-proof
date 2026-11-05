# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996020 (ObjectManagerWrap_GetObject)
Paired Ghidra pseudocode: 10996020_ObjectManagerWrap_GetObject.c
Window: [0x10996020, 0x10996040) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996020: 8b 4c 24 04 85 c9 74 10 8b 44 24 0c 8b 54 24 08
10996030: 50 52 e8 39 cc 8a ff c3 33 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10996020 <.text+0x995020>:
10996020:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996024:	85 c9                                           	test   ecx,ecx
10996026:	74 10                                           	je     0x10996038
10996028:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1099602c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10996030:	50                                              	push   eax
10996031:	52                                              	push   edx
10996032:	e8 39 cc 8a ff                                  	call   0x10242c70
10996037:	c3                                              	ret
10996038:	33 c0                                           	xor    eax,eax
1099603a:	c3                                              	ret
1099603b:	cc                                              	int3
1099603c:	cc                                              	int3
1099603d:	cc                                              	int3
1099603e:	cc                                              	int3
1099603f:	cc                                              	int3

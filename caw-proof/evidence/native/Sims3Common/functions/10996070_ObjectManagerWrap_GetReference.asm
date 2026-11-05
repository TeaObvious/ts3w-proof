# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996070 (ObjectManagerWrap_GetReference)
Paired Ghidra pseudocode: 10996070_ObjectManagerWrap_GetReference.c
Window: [0x10996070, 0x10996090) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996070: 8b 4c 24 04 85 c9 74 0d 8b 01 8b 40 48 8d 54 24
10996080: 08 52 ff d0 c3 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996070 <.text+0x995070>:
10996070:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996074:	85 c9                                           	test   ecx,ecx
10996076:	74 0d                                           	je     0x10996085
10996078:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1099607a:	8b 40 48                                        	mov    eax,DWORD PTR [eax+0x48]
1099607d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10996081:	52                                              	push   edx
10996082:	ff d0                                           	call   eax
10996084:	c3                                              	ret
10996085:	33 c0                                           	xor    eax,eax
10996087:	c3                                              	ret
10996088:	cc                                              	int3
10996089:	cc                                              	int3
1099608a:	cc                                              	int3
1099608b:	cc                                              	int3
1099608c:	cc                                              	int3
1099608d:	cc                                              	int3
1099608e:	cc                                              	int3
1099608f:	cc                                              	int3

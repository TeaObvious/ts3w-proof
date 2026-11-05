# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996130 (ObjectManagerWrap_SetName)
Paired Ghidra pseudocode: 10996130_ObjectManagerWrap_SetName.c
Window: [0x10996130, 0x10996150) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996130: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
10996140: 50 e8 8a e0 8a ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996130 <.text+0x995130>:
10996130:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996134:	85 c9                                           	test   ecx,ecx
10996136:	74 0e                                           	je     0x10996146
10996138:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1099613c:	85 c0                                           	test   eax,eax
1099613e:	74 06                                           	je     0x10996146
10996140:	50                                              	push   eax
10996141:	e8 8a e0 8a ff                                  	call   0x102441d0
10996146:	c3                                              	ret
10996147:	cc                                              	int3
10996148:	cc                                              	int3
10996149:	cc                                              	int3
1099614a:	cc                                              	int3
1099614b:	cc                                              	int3
1099614c:	cc                                              	int3
1099614d:	cc                                              	int3
1099614e:	cc                                              	int3
1099614f:	cc                                              	int3

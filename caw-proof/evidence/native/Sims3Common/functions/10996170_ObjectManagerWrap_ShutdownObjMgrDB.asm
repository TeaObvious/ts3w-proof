# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996170 (ObjectManagerWrap_ShutdownObjMgrDB)
Paired Ghidra pseudocode: 10996170_ObjectManagerWrap_ShutdownObjMgrDB.c
Window: [0x10996170, 0x10996180) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996170: 8b 4c 24 04 85 c9 74 07 6a 01 e8 51 cc 8a ff c3

LINEAR DISASSEMBLY
10996170 <.text+0x995170>:
10996170:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996174:	85 c9                                           	test   ecx,ecx
10996176:	74 07                                           	je     0x1099617f
10996178:	6a 01                                           	push   0x1
1099617a:	e8 51 cc 8a ff                                  	call   0x10242dd0
1099617f:	c3                                              	ret

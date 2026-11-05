# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996180 (ObjectManagerWrap_LoadObjMgrDB)
Paired Ghidra pseudocode: 10996180_ObjectManagerWrap_LoadObjMgrDB.c
Window: [0x10996180, 0x109961a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109961a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996180: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
10996190: 50 e8 aa e3 8a ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996180 <.text+0x995180>:
10996180:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996184:	85 c9                                           	test   ecx,ecx
10996186:	74 0e                                           	je     0x10996196
10996188:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1099618c:	85 c0                                           	test   eax,eax
1099618e:	74 06                                           	je     0x10996196
10996190:	50                                              	push   eax
10996191:	e8 aa e3 8a ff                                  	call   0x10244540
10996196:	c3                                              	ret
10996197:	cc                                              	int3
10996198:	cc                                              	int3
10996199:	cc                                              	int3
1099619a:	cc                                              	int3
1099619b:	cc                                              	int3
1099619c:	cc                                              	int3
1099619d:	cc                                              	int3
1099619e:	cc                                              	int3
1099619f:	cc                                              	int3

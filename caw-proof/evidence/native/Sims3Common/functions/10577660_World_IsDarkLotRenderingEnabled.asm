# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577660 (World_IsDarkLotRenderingEnabled)
Paired Ghidra pseudocode: 10577660_World_IsDarkLotRenderingEnabled.c
Window: [0x10577660, 0x10577680) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577660: 8b 44 24 08 8b 54 24 04 8b 0d c4 00 c7 10 50 52
10577670: e8 9b fd cb ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577660 <.text+0x576660>:
10577660:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10577664:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577668:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057766e:	50                                              	push   eax
1057766f:	52                                              	push   edx
10577670:	e8 9b fd cb ff                                  	call   0x10237410
10577675:	c3                                              	ret
10577676:	cc                                              	int3
10577677:	cc                                              	int3
10577678:	cc                                              	int3
10577679:	cc                                              	int3
1057767a:	cc                                              	int3
1057767b:	cc                                              	int3
1057767c:	cc                                              	int3
1057767d:	cc                                              	int3
1057767e:	cc                                              	int3
1057767f:	cc                                              	int3

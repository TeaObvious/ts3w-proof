# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109974a0 (WorldTerrainWrap_GetRoadOpacityMapFilePath)
Paired Ghidra pseudocode: 109974A0_WorldTerrainWrap_GetRoadOpacityMapFilePath.c
Window: [0x109974a0, 0x109974c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109974c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109974a0: 8b 54 24 08 a1 c4 00 c7 10 8b 48 5c 52 6a 06 e8
109974b0: ac c4 7a ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109974a0 <.text+0x9964a0>:
109974a0:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
109974a4:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
109974a9:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
109974ac:	52                                              	push   edx
109974ad:	6a 06                                           	push   0x6
109974af:	e8 ac c4 7a ff                                  	call   0x10143960
109974b4:	c3                                              	ret
109974b5:	cc                                              	int3
109974b6:	cc                                              	int3
109974b7:	cc                                              	int3
109974b8:	cc                                              	int3
109974b9:	cc                                              	int3
109974ba:	cc                                              	int3
109974bb:	cc                                              	int3
109974bc:	cc                                              	int3
109974bd:	cc                                              	int3
109974be:	cc                                              	int3
109974bf:	cc                                              	int3

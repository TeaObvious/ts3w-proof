# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532860 (DeviceConfig_GetCurrentResolution)
Paired Ghidra pseudocode: 10532860_DeviceConfig_GetCurrentResolution.c
Window: [0x10532860, 0x105328a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105328a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532860: e8 2b 9b e5 ff 85 c0 74 30 8b 88 8c 00 00 00 8b
10532870: 54 24 04 89 0a 8b 88 90 00 00 00 8b 54 24 08 89
10532880: 0a 8b 88 94 00 00 00 8b 54 24 0c 89 0a 8a 80 ac
10532890: 00 00 00 8b 4c 24 10 88 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532860 <.text+0x531860>:
10532860:	e8 2b 9b e5 ff                                  	call   0x1038c390
10532865:	85 c0                                           	test   eax,eax
10532867:	74 30                                           	je     0x10532899
10532869:	8b 88 8c 00 00 00                               	mov    ecx,DWORD PTR [eax+0x8c]
1053286f:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10532873:	89 0a                                           	mov    DWORD PTR [edx],ecx
10532875:	8b 88 90 00 00 00                               	mov    ecx,DWORD PTR [eax+0x90]
1053287b:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1053287f:	89 0a                                           	mov    DWORD PTR [edx],ecx
10532881:	8b 88 94 00 00 00                               	mov    ecx,DWORD PTR [eax+0x94]
10532887:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1053288b:	89 0a                                           	mov    DWORD PTR [edx],ecx
1053288d:	8a 80 ac 00 00 00                               	mov    al,BYTE PTR [eax+0xac]
10532893:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10532897:	88 01                                           	mov    BYTE PTR [ecx],al
10532899:	c3                                              	ret
1053289a:	cc                                              	int3
1053289b:	cc                                              	int3
1053289c:	cc                                              	int3
1053289d:	cc                                              	int3
1053289e:	cc                                              	int3
1053289f:	cc                                              	int3

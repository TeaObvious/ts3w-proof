# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105699b0 (ThumbnailManager_AddRig)
Paired Ghidra pseudocode: 105699B0_ThumbnailManager_AddRig.c
Window: [0x105699b0, 0x105699e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105699e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105699b0: 83 ec 10 56 8b 35 50 11 c7 10 85 f6 74 16 8d 44
105699c0: 24 04 50 8d 4c 24 1c e8 e4 41 ff ff 50 8b ce e8
105699d0: bc 74 dc ff 5e 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105699b0 <.text+0x5689b0>:
105699b0:	83 ec 10                                        	sub    esp,0x10
105699b3:	56                                              	push   esi
105699b4:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
105699ba:	85 f6                                           	test   esi,esi
105699bc:	74 16                                           	je     0x105699d4
105699be:	8d 44 24 04                                     	lea    eax,[esp+0x4]
105699c2:	50                                              	push   eax
105699c3:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
105699c7:	e8 e4 41 ff ff                                  	call   0x1055dbb0
105699cc:	50                                              	push   eax
105699cd:	8b ce                                           	mov    ecx,esi
105699cf:	e8 bc 74 dc ff                                  	call   0x10330e90
105699d4:	5e                                              	pop    esi
105699d5:	83 c4 10                                        	add    esp,0x10
105699d8:	c3                                              	ret
105699d9:	cc                                              	int3
105699da:	cc                                              	int3
105699db:	cc                                              	int3
105699dc:	cc                                              	int3
105699dd:	cc                                              	int3
105699de:	cc                                              	int3
105699df:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109826a0 (ConfigRegistry_GetValueAsInt32)
Paired Ghidra pseudocode: 109826A0_ConfigRegistry_GetValueAsInt32.c
Window: [0x109826a0, 0x109826e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109826e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109826a0: 51 8b 0d 30 7f cb 10 85 c9 74 26 8b 54 24 0c 8d
109826b0: 04 24 50 8b 44 24 0c 52 50 e8 72 7e a0 ff 84 c0
109826c0: 74 0f 8b 0c 24 51 ff 15 4c b6 aa 10 83 c4 04 59
109826d0: c3 8b 44 24 10 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109826a0 <.text+0x9816a0>:
109826a0:	51                                              	push   ecx
109826a1:	8b 0d 30 7f cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7f30
109826a7:	85 c9                                           	test   ecx,ecx
109826a9:	74 26                                           	je     0x109826d1
109826ab:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
109826af:	8d 04 24                                        	lea    eax,[esp]
109826b2:	50                                              	push   eax
109826b3:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109826b7:	52                                              	push   edx
109826b8:	50                                              	push   eax
109826b9:	e8 72 7e a0 ff                                  	call   0x1038a530
109826be:	84 c0                                           	test   al,al
109826c0:	74 0f                                           	je     0x109826d1
109826c2:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
109826c5:	51                                              	push   ecx
109826c6:	ff 15 4c b6 aa 10                               	call   DWORD PTR ds:0x10aab64c
109826cc:	83 c4 04                                        	add    esp,0x4
109826cf:	59                                              	pop    ecx
109826d0:	c3                                              	ret
109826d1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
109826d5:	59                                              	pop    ecx
109826d6:	c3                                              	ret
109826d7:	cc                                              	int3
109826d8:	cc                                              	int3
109826d9:	cc                                              	int3
109826da:	cc                                              	int3
109826db:	cc                                              	int3
109826dc:	cc                                              	int3
109826dd:	cc                                              	int3
109826de:	cc                                              	int3
109826df:	cc                                              	int3

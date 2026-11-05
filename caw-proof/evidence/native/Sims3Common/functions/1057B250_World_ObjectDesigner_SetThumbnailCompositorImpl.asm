# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b250 (World_ObjectDesigner_SetThumbnailCompositorImpl)
Paired Ghidra pseudocode: 1057B250_World_ObjectDesigner_SetThumbnailCompositorImpl.c
Window: [0x1057b250, 0x1057b270) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b250: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
1057b260: 08 51 52 50 e8 27 de ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
1057b250 <.text+0x57a250>:
1057b250:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1057b254:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057b258:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b25c:	50                                              	push   eax
1057b25d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b261:	51                                              	push   ecx
1057b262:	52                                              	push   edx
1057b263:	50                                              	push   eax
1057b264:	e8 27 de ff ff                                  	call   0x10579090
1057b269:	83 c4 10                                        	add    esp,0x10
1057b26c:	c3                                              	ret
1057b26d:	cc                                              	int3
1057b26e:	cc                                              	int3
1057b26f:	cc                                              	int3

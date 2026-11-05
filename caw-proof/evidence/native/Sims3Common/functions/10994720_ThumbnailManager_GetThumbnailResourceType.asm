# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994720 (ThumbnailManager_GetThumbnailResourceType)
Paired Ghidra pseudocode: 10994720_ThumbnailManager_GetThumbnailResourceType.c
Window: [0x10994720, 0x10994740) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994720: 83 ec 10 8d 44 24 14 50 8d 4c 24 04 51 e8 6e 93
10994730: bc ff 50 e8 b8 43 df ff 83 c4 1c c3 cc cc cc cc

LINEAR DISASSEMBLY
10994720 <.text+0x993720>:
10994720:	83 ec 10                                        	sub    esp,0x10
10994723:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10994727:	50                                              	push   eax
10994728:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1099472c:	51                                              	push   ecx
1099472d:	e8 6e 93 bc ff                                  	call   0x1055daa0
10994732:	50                                              	push   eax
10994733:	e8 b8 43 df ff                                  	call   0x10788af0
10994738:	83 c4 1c                                        	add    esp,0x1c
1099473b:	c3                                              	ret
1099473c:	cc                                              	int3
1099473d:	cc                                              	int3
1099473e:	cc                                              	int3
1099473f:	cc                                              	int3

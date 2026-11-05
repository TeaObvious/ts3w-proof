# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109946f0 (ThumbnailManager_SetPatternThumbnailCompositor)
Paired Ghidra pseudocode: 109946F0_ThumbnailManager_SetPatternThumbnailCompositor.c
Window: [0x109946f0, 0x10994720) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109946f0: e8 6b 3d 76 ff 8b 4c 24 10 8b 54 24 0c 51 52 51
10994700: 8b 4c 24 14 52 8b 54 24 14 51 52 8b c8 e8 9e a7
10994710: 76 ff b0 01 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109946f0 <.text+0x9936f0>:
109946f0:	e8 6b 3d 76 ff                                  	call   0x100f8460
109946f5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109946f9:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
109946fd:	51                                              	push   ecx
109946fe:	52                                              	push   edx
109946ff:	51                                              	push   ecx
10994700:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10994704:	52                                              	push   edx
10994705:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10994709:	51                                              	push   ecx
1099470a:	52                                              	push   edx
1099470b:	8b c8                                           	mov    ecx,eax
1099470d:	e8 9e a7 76 ff                                  	call   0x100feeb0
10994712:	b0 01                                           	mov    al,0x1
10994714:	c3                                              	ret
10994715:	cc                                              	int3
10994716:	cc                                              	int3
10994717:	cc                                              	int3
10994718:	cc                                              	int3
10994719:	cc                                              	int3
1099471a:	cc                                              	int3
1099471b:	cc                                              	int3
1099471c:	cc                                              	int3
1099471d:	cc                                              	int3
1099471e:	cc                                              	int3
1099471f:	cc                                              	int3

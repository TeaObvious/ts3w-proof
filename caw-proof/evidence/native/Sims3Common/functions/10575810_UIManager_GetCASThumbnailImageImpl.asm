# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575810 (UIManager_GetCASThumbnailImageImpl)
Paired Ghidra pseudocode: 10575810_UIManager_GetCASThumbnailImageImpl.c
Window: [0x10575810, 0x10575860) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575810: 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 50 8b 44 24
10575820: 1c 51 8b 4c 24 1c 52 8b 54 24 10 50 51 8b 4c 24
10575830: 1c 83 ec 10 8b c4 89 10 8b 54 24 30 89 48 04 8b
10575840: 4c 24 34 89 50 08 89 48 0c e8 b2 f7 ff ff 83 c4
10575850: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10575810 <.text+0x574810>:
10575810:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10575814:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10575818:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1057581c:	50                                              	push   eax
1057581d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10575821:	51                                              	push   ecx
10575822:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10575826:	52                                              	push   edx
10575827:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057582b:	50                                              	push   eax
1057582c:	51                                              	push   ecx
1057582d:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10575831:	83 ec 10                                        	sub    esp,0x10
10575834:	8b c4                                           	mov    eax,esp
10575836:	89 10                                           	mov    DWORD PTR [eax],edx
10575838:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1057583c:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1057583f:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10575843:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10575846:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
10575849:	e8 b2 f7 ff ff                                  	call   0x10575000
1057584e:	83 c4 24                                        	add    esp,0x24
10575851:	c3                                              	ret
10575852:	cc                                              	int3
10575853:	cc                                              	int3
10575854:	cc                                              	int3
10575855:	cc                                              	int3
10575856:	cc                                              	int3
10575857:	cc                                              	int3
10575858:	cc                                              	int3
10575859:	cc                                              	int3
1057585a:	cc                                              	int3
1057585b:	cc                                              	int3
1057585c:	cc                                              	int3
1057585d:	cc                                              	int3
1057585e:	cc                                              	int3
1057585f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540bb0 (RouteManager_AddPortalLocationVariation)
Paired Ghidra pseudocode: 10540BB0_RouteManager_AddPortalLocationVariation.c
Window: [0x10540bb0, 0x10540c40) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540bb0: 8b 44 24 44 8b 4c 24 40 8b 54 24 34 50 51 8b 4c
10540bc0: 24 40 83 ec 0c 8b c4 89 10 8b 54 24 50 89 48 04
10540bd0: 8b 4c 24 3c 89 50 08 8b 54 24 40 83 ec 0c 8b c4
10540be0: 89 08 8b 4c 24 50 89 50 04 8b 54 24 3c 89 48 08
10540bf0: 8b 4c 24 40 83 ec 0c 8b c4 89 10 8b 54 24 50 89
10540c00: 48 04 8b 4c 24 3c 89 50 08 8b 54 24 40 83 ec 0c
10540c10: 8b c4 89 08 8b 4c 24 50 89 50 04 8b 54 24 44 89
10540c20: 48 08 8b 44 24 40 8b 4c 24 3c 52 50 51 e8 de d5
10540c30: ff ff 83 c4 44 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540bb0 <.text+0x53fbb0>:
10540bb0:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10540bb4:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
10540bb8:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10540bbc:	50                                              	push   eax
10540bbd:	51                                              	push   ecx
10540bbe:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
10540bc2:	83 ec 0c                                        	sub    esp,0xc
10540bc5:	8b c4                                           	mov    eax,esp
10540bc7:	89 10                                           	mov    DWORD PTR [eax],edx
10540bc9:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
10540bcd:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10540bd0:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10540bd4:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10540bd7:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
10540bdb:	83 ec 0c                                        	sub    esp,0xc
10540bde:	8b c4                                           	mov    eax,esp
10540be0:	89 08                                           	mov    DWORD PTR [eax],ecx
10540be2:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
10540be6:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10540be9:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
10540bed:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10540bf0:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
10540bf4:	83 ec 0c                                        	sub    esp,0xc
10540bf7:	8b c4                                           	mov    eax,esp
10540bf9:	89 10                                           	mov    DWORD PTR [eax],edx
10540bfb:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
10540bff:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10540c02:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10540c06:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10540c09:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
10540c0d:	83 ec 0c                                        	sub    esp,0xc
10540c10:	8b c4                                           	mov    eax,esp
10540c12:	89 08                                           	mov    DWORD PTR [eax],ecx
10540c14:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
10540c18:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10540c1b:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
10540c1f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10540c22:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10540c26:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10540c2a:	52                                              	push   edx
10540c2b:	50                                              	push   eax
10540c2c:	51                                              	push   ecx
10540c2d:	e8 de d5 ff ff                                  	call   0x1053e210
10540c32:	83 c4 44                                        	add    esp,0x44
10540c35:	c3                                              	ret
10540c36:	cc                                              	int3
10540c37:	cc                                              	int3
10540c38:	cc                                              	int3
10540c39:	cc                                              	int3
10540c3a:	cc                                              	int3
10540c3b:	cc                                              	int3
10540c3c:	cc                                              	int3
10540c3d:	cc                                              	int3
10540c3e:	cc                                              	int3
10540c3f:	cc                                              	int3

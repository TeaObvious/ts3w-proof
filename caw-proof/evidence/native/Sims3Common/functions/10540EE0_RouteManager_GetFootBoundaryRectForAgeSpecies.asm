# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540ee0 (RouteManager_GetFootBoundaryRectForAgeSpecies)
Paired Ghidra pseudocode: 10540EE0_RouteManager_GetFootBoundaryRectForAgeSpecies.c
Window: [0x10540ee0, 0x10540f20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540ee0: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 8e e9
10540ef0: ff ff 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
10540f00: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
10540f10: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540ee0 <.text+0x53fee0>:
10540ee0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10540ee4:	83 ec 10                                        	sub    esp,0x10
10540ee7:	50                                              	push   eax
10540ee8:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10540eec:	51                                              	push   ecx
10540eed:	e8 8e e9 ff ff                                  	call   0x1053f880
10540ef2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10540ef6:	8b 10                                           	mov    edx,DWORD PTR [eax]
10540ef8:	89 11                                           	mov    DWORD PTR [ecx],edx
10540efa:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10540efd:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10540f00:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10540f03:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10540f06:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10540f09:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10540f0c:	8b c1                                           	mov    eax,ecx
10540f0e:	83 c4 18                                        	add    esp,0x18
10540f11:	c3                                              	ret
10540f12:	cc                                              	int3
10540f13:	cc                                              	int3
10540f14:	cc                                              	int3
10540f15:	cc                                              	int3
10540f16:	cc                                              	int3
10540f17:	cc                                              	int3
10540f18:	cc                                              	int3
10540f19:	cc                                              	int3
10540f1a:	cc                                              	int3
10540f1b:	cc                                              	int3
10540f1c:	cc                                              	int3
10540f1d:	cc                                              	int3
10540f1e:	cc                                              	int3
10540f1f:	cc                                              	int3

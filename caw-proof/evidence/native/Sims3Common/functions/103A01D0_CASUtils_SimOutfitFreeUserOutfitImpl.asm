# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a01d0 (CASUtils_SimOutfitFreeUserOutfitImpl)
Paired Ghidra pseudocode: 103A01D0_CASUtils_SimOutfitFreeUserOutfitImpl.c
Window: [0x103a01d0, 0x103a0200) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a01d0: 83 ec 10 8b 4c 24 20 8b 44 24 1c 8b 54 24 14 89
103a01e0: 4c 24 04 89 04 24 8b 44 24 18 8d 0c 24 51 89 54
103a01f0: 24 0c 89 44 24 10 e8 e5 1e 04 00 83 c4 14 c3 cc

LINEAR DISASSEMBLY
103a01d0 <.text+0x39f1d0>:
103a01d0:	83 ec 10                                        	sub    esp,0x10
103a01d3:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a01d7:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
103a01db:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
103a01df:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
103a01e3:	89 04 24                                        	mov    DWORD PTR [esp],eax
103a01e6:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a01ea:	8d 0c 24                                        	lea    ecx,[esp]
103a01ed:	51                                              	push   ecx
103a01ee:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
103a01f2:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
103a01f6:	e8 e5 1e 04 00                                  	call   0x103e20e0
103a01fb:	83 c4 14                                        	add    esp,0x14
103a01fe:	c3                                              	ret
103a01ff:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109939c0 (ITextureOp_SetOpDataKey)
Paired Ghidra pseudocode: 109939C0_ITextureOp_SetOpDataKey.c
Window: [0x109939c0, 0x10993a00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109939c0: 83 ec 10 8b 44 24 20 8b 4c 24 24 8b 54 24 28 89
109939d0: 44 24 0c 8b 44 24 1c 89 44 24 08 89 0c 24 8b 4c
109939e0: 24 14 8d 04 24 89 54 24 04 8b 11 8b 52 38 50 8b
109939f0: 44 24 1c 50 ff d2 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
109939c0 <.text+0x9929c0>:
109939c0:	83 ec 10                                        	sub    esp,0x10
109939c3:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
109939c7:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
109939cb:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
109939cf:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
109939d3:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
109939d7:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
109939db:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
109939de:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109939e2:	8d 04 24                                        	lea    eax,[esp]
109939e5:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
109939e9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109939eb:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
109939ee:	50                                              	push   eax
109939ef:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
109939f3:	50                                              	push   eax
109939f4:	ff d2                                           	call   edx
109939f6:	83 c4 10                                        	add    esp,0x10
109939f9:	c3                                              	ret
109939fa:	cc                                              	int3
109939fb:	cc                                              	int3
109939fc:	cc                                              	int3
109939fd:	cc                                              	int3
109939fe:	cc                                              	int3
109939ff:	cc                                              	int3

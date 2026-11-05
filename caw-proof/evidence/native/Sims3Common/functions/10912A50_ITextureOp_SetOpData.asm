# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10912a50 (ITextureOp_SetOpData)
Paired Ghidra pseudocode: 10912A50_ITextureOp_SetOpData.c
Window: [0x10912a50, 0x10912a70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10912a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10912a50: 8b 54 24 0c 8b 4c 24 04 8b 01 8b 40 38 52 8b 54
10912a60: 24 0c 52 ff d0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10912a50 <.text+0x911a50>:
10912a50:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10912a54:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10912a58:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10912a5a:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
10912a5d:	52                                              	push   edx
10912a5e:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10912a62:	52                                              	push   edx
10912a63:	ff d0                                           	call   eax
10912a65:	c3                                              	ret
10912a66:	cc                                              	int3
10912a67:	cc                                              	int3
10912a68:	cc                                              	int3
10912a69:	cc                                              	int3
10912a6a:	cc                                              	int3
10912a6b:	cc                                              	int3
10912a6c:	cc                                              	int3
10912a6d:	cc                                              	int3
10912a6e:	cc                                              	int3
10912a6f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563ca0 (SocialFeaturesHost_SendPost)
Paired Ghidra pseudocode: 10563CA0_SocialFeaturesHost_SendPost.c
Window: [0x10563ca0, 0x10563cc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563ca0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10563cb0: bc f1 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563ca0 <.text+0x562ca0>:
10563ca0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10563ca4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10563ca8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10563cac:	50                                              	push   eax
10563cad:	51                                              	push   ecx
10563cae:	52                                              	push   edx
10563caf:	e8 bc f1 ff ff                                  	call   0x10562e70
10563cb4:	83 c4 0c                                        	add    esp,0xc
10563cb7:	c3                                              	ret
10563cb8:	cc                                              	int3
10563cb9:	cc                                              	int3
10563cba:	cc                                              	int3
10563cbb:	cc                                              	int3
10563cbc:	cc                                              	int3
10563cbd:	cc                                              	int3
10563cbe:	cc                                              	int3
10563cbf:	cc                                              	int3

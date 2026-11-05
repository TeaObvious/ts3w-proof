# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566a80 (SocialFeaturesHost_GetGiftPostObjectParams)
Paired Ghidra pseudocode: 10566A80_SocialFeaturesHost_GetGiftPostObjectParams.c
Window: [0x10566a80, 0x10566aa0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566a80: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10566a90: 08 51 52 50 e8 27 df ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10566a80 <.text+0x565a80>:
10566a80:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10566a84:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10566a88:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10566a8c:	50                                              	push   eax
10566a8d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566a91:	51                                              	push   ecx
10566a92:	52                                              	push   edx
10566a93:	50                                              	push   eax
10566a94:	e8 27 df ff ff                                  	call   0x105649c0
10566a99:	83 c4 10                                        	add    esp,0x10
10566a9c:	c3                                              	ret
10566a9d:	cc                                              	int3
10566a9e:	cc                                              	int3
10566a9f:	cc                                              	int3

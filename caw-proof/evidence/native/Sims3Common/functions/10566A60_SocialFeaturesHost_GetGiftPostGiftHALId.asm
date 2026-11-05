# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566a60 (SocialFeaturesHost_GetGiftPostGiftHALId)
Paired Ghidra pseudocode: 10566A60_SocialFeaturesHost_GetGiftPostGiftHALId.c
Window: [0x10566a60, 0x10566a80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566a60: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10566a70: 08 51 52 50 e8 67 de ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10566a60 <.text+0x565a60>:
10566a60:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10566a64:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10566a68:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10566a6c:	50                                              	push   eax
10566a6d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566a71:	51                                              	push   ecx
10566a72:	52                                              	push   edx
10566a73:	50                                              	push   eax
10566a74:	e8 67 de ff ff                                  	call   0x105648e0
10566a79:	83 c4 10                                        	add    esp,0x10
10566a7c:	c3                                              	ret
10566a7d:	cc                                              	int3
10566a7e:	cc                                              	int3
10566a7f:	cc                                              	int3

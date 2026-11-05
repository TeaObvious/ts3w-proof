# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566aa0 (SocialFeaturesHost_GetGiftPostImageKey)
Paired Ghidra pseudocode: 10566AA0_SocialFeaturesHost_GetGiftPostImageKey.c
Window: [0x10566aa0, 0x10566ac0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566ac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566aa0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10566ab0: 08 51 52 50 e8 e7 df ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10566aa0 <.text+0x565aa0>:
10566aa0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10566aa4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10566aa8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10566aac:	50                                              	push   eax
10566aad:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566ab1:	51                                              	push   ecx
10566ab2:	52                                              	push   edx
10566ab3:	50                                              	push   eax
10566ab4:	e8 e7 df ff ff                                  	call   0x10564aa0
10566ab9:	83 c4 10                                        	add    esp,0x10
10566abc:	c3                                              	ret
10566abd:	cc                                              	int3
10566abe:	cc                                              	int3
10566abf:	cc                                              	int3

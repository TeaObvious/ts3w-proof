# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561ca0 (SocialFeaturesHost_GetNumberOfFriends)
Paired Ghidra pseudocode: 10561CA0_SocialFeaturesHost_GetNumberOfFriends.c
Window: [0x10561ca0, 0x10561cc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561ca0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10561cb0: 1c ba 2a 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561ca0 <.text+0x560ca0>:
10561ca0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10561ca4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10561ca8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10561cac:	50                                              	push   eax
10561cad:	51                                              	push   ecx
10561cae:	52                                              	push   edx
10561caf:	e8 1c ba 2a 00                                  	call   0x1080d6d0
10561cb4:	83 c4 0c                                        	add    esp,0xc
10561cb7:	c3                                              	ret
10561cb8:	cc                                              	int3
10561cb9:	cc                                              	int3
10561cba:	cc                                              	int3
10561cbb:	cc                                              	int3
10561cbc:	cc                                              	int3
10561cbd:	cc                                              	int3
10561cbe:	cc                                              	int3
10561cbf:	cc                                              	int3

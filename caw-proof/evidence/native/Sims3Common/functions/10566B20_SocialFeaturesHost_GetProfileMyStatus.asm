# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566b20 (SocialFeaturesHost_GetProfileMyStatus)
Paired Ghidra pseudocode: 10566B20_SocialFeaturesHost_GetProfileMyStatus.c
Window: [0x10566b20, 0x10566b40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566b20: 8b 44 24 08 8b 4c 24 04 50 51 e8 e1 e2 ff ff 83
10566b30: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566b20 <.text+0x565b20>:
10566b20:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566b24:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10566b28:	50                                              	push   eax
10566b29:	51                                              	push   ecx
10566b2a:	e8 e1 e2 ff ff                                  	call   0x10564e10
10566b2f:	83 c4 08                                        	add    esp,0x8
10566b32:	c3                                              	ret
10566b33:	cc                                              	int3
10566b34:	cc                                              	int3
10566b35:	cc                                              	int3
10566b36:	cc                                              	int3
10566b37:	cc                                              	int3
10566b38:	cc                                              	int3
10566b39:	cc                                              	int3
10566b3a:	cc                                              	int3
10566b3b:	cc                                              	int3
10566b3c:	cc                                              	int3
10566b3d:	cc                                              	int3
10566b3e:	cc                                              	int3
10566b3f:	cc                                              	int3

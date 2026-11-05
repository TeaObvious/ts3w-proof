# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566b00 (SocialFeaturesHost_GetProfileName)
Paired Ghidra pseudocode: 10566B00_SocialFeaturesHost_GetProfileName.c
Window: [0x10566b00, 0x10566b20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566b00: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 e2 ff ff 83
10566b10: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566b00 <.text+0x565b00>:
10566b00:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566b04:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10566b08:	50                                              	push   eax
10566b09:	51                                              	push   ecx
10566b0a:	e8 31 e2 ff ff                                  	call   0x10564d40
10566b0f:	83 c4 08                                        	add    esp,0x8
10566b12:	c3                                              	ret
10566b13:	cc                                              	int3
10566b14:	cc                                              	int3
10566b15:	cc                                              	int3
10566b16:	cc                                              	int3
10566b17:	cc                                              	int3
10566b18:	cc                                              	int3
10566b19:	cc                                              	int3
10566b1a:	cc                                              	int3
10566b1b:	cc                                              	int3
10566b1c:	cc                                              	int3
10566b1d:	cc                                              	int3
10566b1e:	cc                                              	int3
10566b1f:	cc                                              	int3

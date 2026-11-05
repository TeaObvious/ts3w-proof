# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562ab0 (SocialFeaturesHost_AcceptHostMySimInvite)
Paired Ghidra pseudocode: 10562AB0_SocialFeaturesHost_AcceptHostMySimInvite.c
Window: [0x10562ab0, 0x10562ad0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562ab0: 8b 44 24 08 8b 4c 24 04 50 51 e8 61 d5 2a 00 83
10562ac0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562ab0 <.text+0x561ab0>:
10562ab0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562ab4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562ab8:	50                                              	push   eax
10562ab9:	51                                              	push   ecx
10562aba:	e8 61 d5 2a 00                                  	call   0x10810020
10562abf:	83 c4 08                                        	add    esp,0x8
10562ac2:	c3                                              	ret
10562ac3:	cc                                              	int3
10562ac4:	cc                                              	int3
10562ac5:	cc                                              	int3
10562ac6:	cc                                              	int3
10562ac7:	cc                                              	int3
10562ac8:	cc                                              	int3
10562ac9:	cc                                              	int3
10562aca:	cc                                              	int3
10562acb:	cc                                              	int3
10562acc:	cc                                              	int3
10562acd:	cc                                              	int3
10562ace:	cc                                              	int3
10562acf:	cc                                              	int3

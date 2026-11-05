# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562c70 (SocialFeaturesHost_IsPassportPostValid)
Paired Ghidra pseudocode: 10562C70_SocialFeaturesHost_IsPassportPostValid.c
Window: [0x10562c70, 0x10562c90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562c70: 8b 44 24 08 8b 4c 24 04 50 51 e8 61 d7 2a 00 83
10562c80: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562c70 <.text+0x561c70>:
10562c70:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562c74:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562c78:	50                                              	push   eax
10562c79:	51                                              	push   ecx
10562c7a:	e8 61 d7 2a 00                                  	call   0x108103e0
10562c7f:	83 c4 08                                        	add    esp,0x8
10562c82:	c3                                              	ret
10562c83:	cc                                              	int3
10562c84:	cc                                              	int3
10562c85:	cc                                              	int3
10562c86:	cc                                              	int3
10562c87:	cc                                              	int3
10562c88:	cc                                              	int3
10562c89:	cc                                              	int3
10562c8a:	cc                                              	int3
10562c8b:	cc                                              	int3
10562c8c:	cc                                              	int3
10562c8d:	cc                                              	int3
10562c8e:	cc                                              	int3
10562c8f:	cc                                              	int3

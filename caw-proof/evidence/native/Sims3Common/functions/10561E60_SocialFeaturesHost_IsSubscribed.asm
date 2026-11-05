# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561e60 (SocialFeaturesHost_IsSubscribed)
Paired Ghidra pseudocode: 10561E60_SocialFeaturesHost_IsSubscribed.c
Window: [0x10561e60, 0x10561e80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561e60: 8b 44 24 08 8b 4c 24 04 50 51 e8 71 bc 2a 00 83
10561e70: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561e60 <.text+0x560e60>:
10561e60:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561e64:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561e68:	50                                              	push   eax
10561e69:	51                                              	push   ecx
10561e6a:	e8 71 bc 2a 00                                  	call   0x1080dae0
10561e6f:	83 c4 08                                        	add    esp,0x8
10561e72:	c3                                              	ret
10561e73:	cc                                              	int3
10561e74:	cc                                              	int3
10561e75:	cc                                              	int3
10561e76:	cc                                              	int3
10561e77:	cc                                              	int3
10561e78:	cc                                              	int3
10561e79:	cc                                              	int3
10561e7a:	cc                                              	int3
10561e7b:	cc                                              	int3
10561e7c:	cc                                              	int3
10561e7d:	cc                                              	int3
10561e7e:	cc                                              	int3
10561e7f:	cc                                              	int3

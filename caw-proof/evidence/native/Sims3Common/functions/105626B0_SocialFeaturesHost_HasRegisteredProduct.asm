# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105626b0 (SocialFeaturesHost_HasRegisteredProduct)
Paired Ghidra pseudocode: 105626B0_SocialFeaturesHost_HasRegisteredProduct.c
Window: [0x105626b0, 0x105626d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105626d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105626b0: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 ca 2a 00 83
105626c0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105626b0 <.text+0x5616b0>:
105626b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105626b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105626b8:	50                                              	push   eax
105626b9:	51                                              	push   ecx
105626ba:	e8 31 ca 2a 00                                  	call   0x1080f0f0
105626bf:	83 c4 08                                        	add    esp,0x8
105626c2:	c3                                              	ret
105626c3:	cc                                              	int3
105626c4:	cc                                              	int3
105626c5:	cc                                              	int3
105626c6:	cc                                              	int3
105626c7:	cc                                              	int3
105626c8:	cc                                              	int3
105626c9:	cc                                              	int3
105626ca:	cc                                              	int3
105626cb:	cc                                              	int3
105626cc:	cc                                              	int3
105626cd:	cc                                              	int3
105626ce:	cc                                              	int3
105626cf:	cc                                              	int3

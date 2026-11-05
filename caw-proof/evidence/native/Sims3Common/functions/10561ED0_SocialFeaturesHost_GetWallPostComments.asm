# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561ed0 (SocialFeaturesHost_GetWallPostComments)
Paired Ghidra pseudocode: 10561ED0_SocialFeaturesHost_GetWallPostComments.c
Window: [0x10561ed0, 0x10561f00) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561ed0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
10561ee0: 0c 51 8b 4c 24 0c 52 50 51 e8 c2 bc 2a 00 83 c4
10561ef0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561ed0 <.text+0x560ed0>:
10561ed0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10561ed4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10561ed8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10561edc:	50                                              	push   eax
10561edd:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10561ee1:	51                                              	push   ecx
10561ee2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10561ee6:	52                                              	push   edx
10561ee7:	50                                              	push   eax
10561ee8:	51                                              	push   ecx
10561ee9:	e8 c2 bc 2a 00                                  	call   0x1080dbb0
10561eee:	83 c4 14                                        	add    esp,0x14
10561ef1:	c3                                              	ret
10561ef2:	cc                                              	int3
10561ef3:	cc                                              	int3
10561ef4:	cc                                              	int3
10561ef5:	cc                                              	int3
10561ef6:	cc                                              	int3
10561ef7:	cc                                              	int3
10561ef8:	cc                                              	int3
10561ef9:	cc                                              	int3
10561efa:	cc                                              	int3
10561efb:	cc                                              	int3
10561efc:	cc                                              	int3
10561efd:	cc                                              	int3
10561efe:	cc                                              	int3
10561eff:	cc                                              	int3

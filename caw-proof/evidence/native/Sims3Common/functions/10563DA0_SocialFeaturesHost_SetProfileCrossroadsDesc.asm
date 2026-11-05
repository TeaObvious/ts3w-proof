# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563da0 (SocialFeaturesHost_SetProfileCrossroadsDesc)
Paired Ghidra pseudocode: 10563DA0_SocialFeaturesHost_SetProfileCrossroadsDesc.c
Window: [0x10563da0, 0x10563dc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563da0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10563db0: ec f7 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563da0 <.text+0x562da0>:
10563da0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10563da4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10563da8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10563dac:	50                                              	push   eax
10563dad:	51                                              	push   ecx
10563dae:	52                                              	push   edx
10563daf:	e8 ec f7 ff ff                                  	call   0x105635a0
10563db4:	83 c4 0c                                        	add    esp,0xc
10563db7:	c3                                              	ret
10563db8:	cc                                              	int3
10563db9:	cc                                              	int3
10563dba:	cc                                              	int3
10563dbb:	cc                                              	int3
10563dbc:	cc                                              	int3
10563dbd:	cc                                              	int3
10563dbe:	cc                                              	int3
10563dbf:	cc                                              	int3

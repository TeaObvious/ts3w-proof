# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563d80 (SocialFeaturesHost_SetProfileMyStatus)
Paired Ghidra pseudocode: 10563D80_SocialFeaturesHost_SetProfileMyStatus.c
Window: [0x10563d80, 0x10563da0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563d80: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10563d90: 3c f7 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563d80 <.text+0x562d80>:
10563d80:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10563d84:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10563d88:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10563d8c:	50                                              	push   eax
10563d8d:	51                                              	push   ecx
10563d8e:	52                                              	push   edx
10563d8f:	e8 3c f7 ff ff                                  	call   0x105634d0
10563d94:	83 c4 0c                                        	add    esp,0xc
10563d97:	c3                                              	ret
10563d98:	cc                                              	int3
10563d99:	cc                                              	int3
10563d9a:	cc                                              	int3
10563d9b:	cc                                              	int3
10563d9c:	cc                                              	int3
10563d9d:	cc                                              	int3
10563d9e:	cc                                              	int3
10563d9f:	cc                                              	int3

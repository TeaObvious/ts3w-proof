# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566ae0 (SocialFeaturesHost_GetSystemWallPostAuthor)
Paired Ghidra pseudocode: 10566AE0_SocialFeaturesHost_GetSystemWallPostAuthor.c
Window: [0x10566ae0, 0x10566b00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566ae0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10566af0: 08 51 52 50 e8 67 e1 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10566ae0 <.text+0x565ae0>:
10566ae0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10566ae4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10566ae8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10566aec:	50                                              	push   eax
10566aed:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566af1:	51                                              	push   ecx
10566af2:	52                                              	push   edx
10566af3:	50                                              	push   eax
10566af4:	e8 67 e1 ff ff                                  	call   0x10564c60
10566af9:	83 c4 10                                        	add    esp,0x10
10566afc:	c3                                              	ret
10566afd:	cc                                              	int3
10566afe:	cc                                              	int3
10566aff:	cc                                              	int3

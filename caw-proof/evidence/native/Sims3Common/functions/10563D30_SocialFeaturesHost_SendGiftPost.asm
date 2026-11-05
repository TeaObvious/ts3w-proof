# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563d30 (SocialFeaturesHost_SendGiftPost)
Paired Ghidra pseudocode: 10563D30_SocialFeaturesHost_SendGiftPost.c
Window: [0x10563d30, 0x10563d70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563d30: 8b 44 24 2c 8b 4c 24 28 8b 54 24 24 50 8b 44 24
10563d40: 24 51 8b 4c 24 24 52 8b 54 24 24 50 8b 44 24 24
10563d50: 51 8b 4c 24 24 52 8b 54 24 24 50 8b 44 24 24 51
10563d60: 8b 4c 24 24 52 50 51 e8 94 f3 ff ff 83 c4 2c c3

LINEAR DISASSEMBLY
10563d30 <.text+0x562d30>:
10563d30:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10563d34:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10563d38:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10563d3c:	50                                              	push   eax
10563d3d:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10563d41:	51                                              	push   ecx
10563d42:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10563d46:	52                                              	push   edx
10563d47:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10563d4b:	50                                              	push   eax
10563d4c:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10563d50:	51                                              	push   ecx
10563d51:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10563d55:	52                                              	push   edx
10563d56:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10563d5a:	50                                              	push   eax
10563d5b:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10563d5f:	51                                              	push   ecx
10563d60:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10563d64:	52                                              	push   edx
10563d65:	50                                              	push   eax
10563d66:	51                                              	push   ecx
10563d67:	e8 94 f3 ff ff                                  	call   0x10563100
10563d6c:	83 c4 2c                                        	add    esp,0x2c
10563d6f:	c3                                              	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563c60 (SocialFeaturesHost_SearchForFriend)
Paired Ghidra pseudocode: 10563C60_SocialFeaturesHost_SearchForFriend.c
Window: [0x10563c60, 0x10563ca0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563c60: 8b 44 24 28 8b 4c 24 24 8b 54 24 20 50 8b 44 24
10563c70: 20 51 8b 4c 24 20 52 8b 54 24 20 50 8b 44 24 20
10563c80: 51 8b 4c 24 20 52 8b 54 24 20 50 8b 44 24 20 51
10563c90: 52 50 e8 a9 f0 ff ff 83 c4 28 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10563c60 <.text+0x562c60>:
10563c60:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10563c64:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10563c68:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10563c6c:	50                                              	push   eax
10563c6d:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10563c71:	51                                              	push   ecx
10563c72:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10563c76:	52                                              	push   edx
10563c77:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10563c7b:	50                                              	push   eax
10563c7c:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10563c80:	51                                              	push   ecx
10563c81:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10563c85:	52                                              	push   edx
10563c86:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10563c8a:	50                                              	push   eax
10563c8b:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10563c8f:	51                                              	push   ecx
10563c90:	52                                              	push   edx
10563c91:	50                                              	push   eax
10563c92:	e8 a9 f0 ff ff                                  	call   0x10562d40
10563c97:	83 c4 28                                        	add    esp,0x28
10563c9a:	c3                                              	ret
10563c9b:	cc                                              	int3
10563c9c:	cc                                              	int3
10563c9d:	cc                                              	int3
10563c9e:	cc                                              	int3
10563c9f:	cc                                              	int3

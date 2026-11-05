# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569b70 (ThumbnailManager_InvalidateLotThumbnails)
Paired Ghidra pseudocode: 10569B70_ThumbnailManager_InvalidateLotThumbnails.c
Window: [0x10569b70, 0x10569ba0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569b70: 8b 0d 50 11 c7 10 85 c9 74 1e 8b 44 24 14 8b 54
10569b80: 24 10 50 8b 44 24 10 52 8b 54 24 10 50 8b 44 24
10569b90: 10 52 50 e8 e8 07 dd ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569b70 <.text+0x568b70>:
10569b70:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569b76:	85 c9                                           	test   ecx,ecx
10569b78:	74 1e                                           	je     0x10569b98
10569b7a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10569b7e:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10569b82:	50                                              	push   eax
10569b83:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10569b87:	52                                              	push   edx
10569b88:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10569b8c:	50                                              	push   eax
10569b8d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10569b91:	52                                              	push   edx
10569b92:	50                                              	push   eax
10569b93:	e8 e8 07 dd ff                                  	call   0x1033a380
10569b98:	c3                                              	ret
10569b99:	cc                                              	int3
10569b9a:	cc                                              	int3
10569b9b:	cc                                              	int3
10569b9c:	cc                                              	int3
10569b9d:	cc                                              	int3
10569b9e:	cc                                              	int3
10569b9f:	cc                                              	int3

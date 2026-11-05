# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563d00 (SocialFeaturesHost_SendComment)
Paired Ghidra pseudocode: 10563D00_SocialFeaturesHost_SendComment.c
Window: [0x10563d00, 0x10563d30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563d00: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
10563d10: 0c 51 8b 4c 24 0c 52 50 51 e8 12 f3 ff ff 83 c4
10563d20: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563d00 <.text+0x562d00>:
10563d00:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10563d04:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10563d08:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10563d0c:	50                                              	push   eax
10563d0d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10563d11:	51                                              	push   ecx
10563d12:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10563d16:	52                                              	push   edx
10563d17:	50                                              	push   eax
10563d18:	51                                              	push   ecx
10563d19:	e8 12 f3 ff ff                                  	call   0x10563030
10563d1e:	83 c4 14                                        	add    esp,0x14
10563d21:	c3                                              	ret
10563d22:	cc                                              	int3
10563d23:	cc                                              	int3
10563d24:	cc                                              	int3
10563d25:	cc                                              	int3
10563d26:	cc                                              	int3
10563d27:	cc                                              	int3
10563d28:	cc                                              	int3
10563d29:	cc                                              	int3
10563d2a:	cc                                              	int3
10563d2b:	cc                                              	int3
10563d2c:	cc                                              	int3
10563d2d:	cc                                              	int3
10563d2e:	cc                                              	int3
10563d2f:	cc                                              	int3

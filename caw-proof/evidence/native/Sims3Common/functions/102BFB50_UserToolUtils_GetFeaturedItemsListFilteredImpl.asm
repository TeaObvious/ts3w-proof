# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bfb50 (UserToolUtils_GetFeaturedItemsListFilteredImpl)
Paired Ghidra pseudocode: 102BFB50_UserToolUtils_GetFeaturedItemsListFilteredImpl.c
Window: [0x102bfb50, 0x102bfba0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bfba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bfb50: 8b 44 24 30 8b 4c 24 2c 8b 54 24 28 50 8b 44 24
102bfb60: 28 51 8b 4c 24 28 52 8b 54 24 28 50 8b 44 24 28
102bfb70: 51 8b 4c 24 28 52 8b 54 24 28 50 8b 44 24 28 51
102bfb80: 8b 4c 24 28 52 8b 54 24 28 50 51 52 e8 ff ed ff
102bfb90: ff 83 c4 30 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bfb50 <.text+0x2beb50>:
102bfb50:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
102bfb54:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
102bfb58:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102bfb5c:	50                                              	push   eax
102bfb5d:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
102bfb61:	51                                              	push   ecx
102bfb62:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
102bfb66:	52                                              	push   edx
102bfb67:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102bfb6b:	50                                              	push   eax
102bfb6c:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
102bfb70:	51                                              	push   ecx
102bfb71:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
102bfb75:	52                                              	push   edx
102bfb76:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102bfb7a:	50                                              	push   eax
102bfb7b:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
102bfb7f:	51                                              	push   ecx
102bfb80:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
102bfb84:	52                                              	push   edx
102bfb85:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102bfb89:	50                                              	push   eax
102bfb8a:	51                                              	push   ecx
102bfb8b:	52                                              	push   edx
102bfb8c:	e8 ff ed ff ff                                  	call   0x102be990
102bfb91:	83 c4 30                                        	add    esp,0x30
102bfb94:	c3                                              	ret
102bfb95:	cc                                              	int3
102bfb96:	cc                                              	int3
102bfb97:	cc                                              	int3
102bfb98:	cc                                              	int3
102bfb99:	cc                                              	int3
102bfb9a:	cc                                              	int3
102bfb9b:	cc                                              	int3
102bfb9c:	cc                                              	int3
102bfb9d:	cc                                              	int3
102bfb9e:	cc                                              	int3
102bfb9f:	cc                                              	int3

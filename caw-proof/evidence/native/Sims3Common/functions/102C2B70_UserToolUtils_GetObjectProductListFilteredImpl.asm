# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c2b70 (UserToolUtils_GetObjectProductListFilteredImpl)
Paired Ghidra pseudocode: 102C2B70_UserToolUtils_GetObjectProductListFilteredImpl.c
Window: [0x102c2b70, 0x102c2bc0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c2bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c2b70: 8b 44 24 30 8b 4c 24 2c 8b 54 24 28 50 8b 44 24
102c2b80: 28 51 8b 4c 24 28 52 8b 54 24 28 50 8b 44 24 28
102c2b90: 51 8b 4c 24 28 52 8b 54 24 28 50 8b 44 24 28 51
102c2ba0: 8b 4c 24 28 52 8b 54 24 28 50 51 52 e8 5f fd ff
102c2bb0: ff 83 c4 30 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c2b70 <.text+0x2c1b70>:
102c2b70:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
102c2b74:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
102c2b78:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102c2b7c:	50                                              	push   eax
102c2b7d:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
102c2b81:	51                                              	push   ecx
102c2b82:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
102c2b86:	52                                              	push   edx
102c2b87:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102c2b8b:	50                                              	push   eax
102c2b8c:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
102c2b90:	51                                              	push   ecx
102c2b91:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
102c2b95:	52                                              	push   edx
102c2b96:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102c2b9a:	50                                              	push   eax
102c2b9b:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
102c2b9f:	51                                              	push   ecx
102c2ba0:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
102c2ba4:	52                                              	push   edx
102c2ba5:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102c2ba9:	50                                              	push   eax
102c2baa:	51                                              	push   ecx
102c2bab:	52                                              	push   edx
102c2bac:	e8 5f fd ff ff                                  	call   0x102c2910
102c2bb1:	83 c4 30                                        	add    esp,0x30
102c2bb4:	c3                                              	ret
102c2bb5:	cc                                              	int3
102c2bb6:	cc                                              	int3
102c2bb7:	cc                                              	int3
102c2bb8:	cc                                              	int3
102c2bb9:	cc                                              	int3
102c2bba:	cc                                              	int3
102c2bbb:	cc                                              	int3
102c2bbc:	cc                                              	int3
102c2bbd:	cc                                              	int3
102c2bbe:	cc                                              	int3
102c2bbf:	cc                                              	int3

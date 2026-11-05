# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10574b40 (UIManager_SetSaveGameMetadataImpl)
Paired Ghidra pseudocode: 10574B40_UIManager_SetSaveGameMetadataImpl.c
Window: [0x10574b40, 0x10574b80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10574b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10574b40: 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 50 8b 44 24
10574b50: 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 8b 44 24 1c
10574b60: 51 8b 4c 24 1c 52 8b 54 24 1c 50 51 52 e8 8e d8
10574b70: ff ff 83 c4 24 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10574b40 <.text+0x573b40>:
10574b40:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10574b44:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10574b48:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10574b4c:	50                                              	push   eax
10574b4d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10574b51:	51                                              	push   ecx
10574b52:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10574b56:	52                                              	push   edx
10574b57:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10574b5b:	50                                              	push   eax
10574b5c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10574b60:	51                                              	push   ecx
10574b61:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10574b65:	52                                              	push   edx
10574b66:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10574b6a:	50                                              	push   eax
10574b6b:	51                                              	push   ecx
10574b6c:	52                                              	push   edx
10574b6d:	e8 8e d8 ff ff                                  	call   0x10572400
10574b72:	83 c4 24                                        	add    esp,0x24
10574b75:	c3                                              	ret
10574b76:	cc                                              	int3
10574b77:	cc                                              	int3
10574b78:	cc                                              	int3
10574b79:	cc                                              	int3
10574b7a:	cc                                              	int3
10574b7b:	cc                                              	int3
10574b7c:	cc                                              	int3
10574b7d:	cc                                              	int3
10574b7e:	cc                                              	int3
10574b7f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054db40 (RouteManager_IsSlotUnobstructed)
Paired Ghidra pseudocode: 1054DB40_RouteManager_IsSlotUnobstructed.c
Window: [0x1054db40, 0x1054db90) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054db90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054db40: 8b 44 24 30 8b 4c 24 2c 8b 54 24 28 50 8b 44 24
1054db50: 28 6a 00 51 8b 4c 24 2c 52 8b 54 24 2c 50 8b 44
1054db60: 24 2c 51 8b 4c 24 2c 52 8b 54 24 2c 50 8b 44 24
1054db70: 2c 51 8b 4c 24 2c 52 8b 54 24 2c 50 51 52 e8 dd
1054db80: cd ff ff 83 c4 34 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054db40 <.text+0x54cb40>:
1054db40:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1054db44:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1054db48:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1054db4c:	50                                              	push   eax
1054db4d:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1054db51:	6a 00                                           	push   0x0
1054db53:	51                                              	push   ecx
1054db54:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1054db58:	52                                              	push   edx
1054db59:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1054db5d:	50                                              	push   eax
1054db5e:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1054db62:	51                                              	push   ecx
1054db63:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1054db67:	52                                              	push   edx
1054db68:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1054db6c:	50                                              	push   eax
1054db6d:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1054db71:	51                                              	push   ecx
1054db72:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1054db76:	52                                              	push   edx
1054db77:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1054db7b:	50                                              	push   eax
1054db7c:	51                                              	push   ecx
1054db7d:	52                                              	push   edx
1054db7e:	e8 dd cd ff ff                                  	call   0x1054a960
1054db83:	83 c4 34                                        	add    esp,0x34
1054db86:	c3                                              	ret
1054db87:	cc                                              	int3
1054db88:	cc                                              	int3
1054db89:	cc                                              	int3
1054db8a:	cc                                              	int3
1054db8b:	cc                                              	int3
1054db8c:	cc                                              	int3
1054db8d:	cc                                              	int3
1054db8e:	cc                                              	int3
1054db8f:	cc                                              	int3

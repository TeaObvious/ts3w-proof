# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540a40 (RouteManager_IsObjectRouting)
Paired Ghidra pseudocode: 10540A40_RouteManager_IsObjectRouting.c
Window: [0x10540a40, 0x10540a60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540a40: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10540a50: 08 51 52 50 e8 87 e0 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10540a40 <.text+0x53fa40>:
10540a40:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10540a44:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10540a48:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10540a4c:	50                                              	push   eax
10540a4d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10540a51:	51                                              	push   ecx
10540a52:	52                                              	push   edx
10540a53:	50                                              	push   eax
10540a54:	e8 87 e0 ff ff                                  	call   0x1053eae0
10540a59:	83 c4 10                                        	add    esp,0x10
10540a5c:	c3                                              	ret
10540a5d:	cc                                              	int3
10540a5e:	cc                                              	int3
10540a5f:	cc                                              	int3

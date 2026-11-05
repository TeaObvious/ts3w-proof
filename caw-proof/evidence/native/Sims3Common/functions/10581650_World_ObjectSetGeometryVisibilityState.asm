# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581650 (World_ObjectSetGeometryVisibilityState)
Paired Ghidra pseudocode: 10581650_World_ObjectSetGeometryVisibilityState.c
Window: [0x10581650, 0x10581670) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581650: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10581660: cc d8 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581650 <.text+0x580650>:
10581650:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10581654:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10581658:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1058165c:	50                                              	push   eax
1058165d:	51                                              	push   ecx
1058165e:	52                                              	push   edx
1058165f:	e8 cc d8 ff ff                                  	call   0x1057ef30
10581664:	83 c4 0c                                        	add    esp,0xc
10581667:	c3                                              	ret
10581668:	cc                                              	int3
10581669:	cc                                              	int3
1058166a:	cc                                              	int3
1058166b:	cc                                              	int3
1058166c:	cc                                              	int3
1058166d:	cc                                              	int3
1058166e:	cc                                              	int3
1058166f:	cc                                              	int3

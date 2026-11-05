# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f540 (UIManager_LoadLayoutAndAddToWindowImpl)
Paired Ghidra pseudocode: 1056F540_UIManager_LoadLayoutAndAddToWindowImpl.c
Window: [0x1056f540, 0x1056f570) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f540: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
1056f550: 0c 51 8b 4c 24 0c 52 50 51 e8 42 d1 ff ff 83 c4
1056f560: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f540 <.text+0x56e540>:
1056f540:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1056f544:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1056f548:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1056f54c:	50                                              	push   eax
1056f54d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1056f551:	51                                              	push   ecx
1056f552:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056f556:	52                                              	push   edx
1056f557:	50                                              	push   eax
1056f558:	51                                              	push   ecx
1056f559:	e8 42 d1 ff ff                                  	call   0x1056c6a0
1056f55e:	83 c4 14                                        	add    esp,0x14
1056f561:	c3                                              	ret
1056f562:	cc                                              	int3
1056f563:	cc                                              	int3
1056f564:	cc                                              	int3
1056f565:	cc                                              	int3
1056f566:	cc                                              	int3
1056f567:	cc                                              	int3
1056f568:	cc                                              	int3
1056f569:	cc                                              	int3
1056f56a:	cc                                              	int3
1056f56b:	cc                                              	int3
1056f56c:	cc                                              	int3
1056f56d:	cc                                              	int3
1056f56e:	cc                                              	int3
1056f56f:	cc                                              	int3

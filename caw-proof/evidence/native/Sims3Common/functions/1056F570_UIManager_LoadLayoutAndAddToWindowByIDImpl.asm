# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f570 (UIManager_LoadLayoutAndAddToWindowByIDImpl)
Paired Ghidra pseudocode: 1056F570_UIManager_LoadLayoutAndAddToWindowByIDImpl.c
Window: [0x1056f570, 0x1056f5a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f5a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f570: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
1056f580: 0c 51 8b 4c 24 0c 52 50 51 e8 52 d2 ff ff 83 c4
1056f590: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f570 <.text+0x56e570>:
1056f570:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1056f574:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1056f578:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1056f57c:	50                                              	push   eax
1056f57d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1056f581:	51                                              	push   ecx
1056f582:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056f586:	52                                              	push   edx
1056f587:	50                                              	push   eax
1056f588:	51                                              	push   ecx
1056f589:	e8 52 d2 ff ff                                  	call   0x1056c7e0
1056f58e:	83 c4 14                                        	add    esp,0x14
1056f591:	c3                                              	ret
1056f592:	cc                                              	int3
1056f593:	cc                                              	int3
1056f594:	cc                                              	int3
1056f595:	cc                                              	int3
1056f596:	cc                                              	int3
1056f597:	cc                                              	int3
1056f598:	cc                                              	int3
1056f599:	cc                                              	int3
1056f59a:	cc                                              	int3
1056f59b:	cc                                              	int3
1056f59c:	cc                                              	int3
1056f59d:	cc                                              	int3
1056f59e:	cc                                              	int3
1056f59f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540ab0 (RouteManager_RoutingBlockerCheck2d)
Paired Ghidra pseudocode: 10540AB0_RouteManager_RoutingBlockerCheck2d.c
Window: [0x10540ab0, 0x10540b10) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540ab0: 8b 44 24 3c 8b 4c 24 38 8b 54 24 34 50 8b 44 24
10540ac0: 34 51 8b 4c 24 34 52 8b 54 24 34 50 8b 44 24 34
10540ad0: 51 8b 4c 24 34 52 8b 54 24 34 50 8b 44 24 34 51
10540ae0: 8b 4c 24 34 52 8b 54 24 34 50 8b 44 24 34 51 8b
10540af0: 4c 24 34 52 8b 54 24 34 50 51 52 e8 e0 e1 ff ff
10540b00: 83 c4 3c c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540ab0 <.text+0x53fab0>:
10540ab0:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10540ab4:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10540ab8:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10540abc:	50                                              	push   eax
10540abd:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10540ac1:	51                                              	push   ecx
10540ac2:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10540ac6:	52                                              	push   edx
10540ac7:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10540acb:	50                                              	push   eax
10540acc:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10540ad0:	51                                              	push   ecx
10540ad1:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10540ad5:	52                                              	push   edx
10540ad6:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10540ada:	50                                              	push   eax
10540adb:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10540adf:	51                                              	push   ecx
10540ae0:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10540ae4:	52                                              	push   edx
10540ae5:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10540ae9:	50                                              	push   eax
10540aea:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10540aee:	51                                              	push   ecx
10540aef:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10540af3:	52                                              	push   edx
10540af4:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10540af8:	50                                              	push   eax
10540af9:	51                                              	push   ecx
10540afa:	52                                              	push   edx
10540afb:	e8 e0 e1 ff ff                                  	call   0x1053ece0
10540b00:	83 c4 3c                                        	add    esp,0x3c
10540b03:	c3                                              	ret
10540b04:	cc                                              	int3
10540b05:	cc                                              	int3
10540b06:	cc                                              	int3
10540b07:	cc                                              	int3
10540b08:	cc                                              	int3
10540b09:	cc                                              	int3
10540b0a:	cc                                              	int3
10540b0b:	cc                                              	int3
10540b0c:	cc                                              	int3
10540b0d:	cc                                              	int3
10540b0e:	cc                                              	int3
10540b0f:	cc                                              	int3

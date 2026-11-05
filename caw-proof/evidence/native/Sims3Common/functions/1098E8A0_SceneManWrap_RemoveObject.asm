# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e8a0 (SceneManWrap_RemoveObject)
Paired Ghidra pseudocode: 1098E8A0_SceneManWrap_RemoveObject.c
Window: [0x1098e8a0, 0x1098e8d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e8d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e8a0: e8 fb b8 d9 ff 8b 4c 24 0c 8b 54 24 08 51 52 8b
1098e8b0: c8 e8 fa c2 d9 ff 85 c0 74 0d 6a 00 50 6a 0c e8
1098e8c0: 2c 9a d9 ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e8a0 <.text+0x98d8a0>:
1098e8a0:	e8 fb b8 d9 ff                                  	call   0x1072a1a0
1098e8a5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098e8a9:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098e8ad:	51                                              	push   ecx
1098e8ae:	52                                              	push   edx
1098e8af:	8b c8                                           	mov    ecx,eax
1098e8b1:	e8 fa c2 d9 ff                                  	call   0x1072abb0
1098e8b6:	85 c0                                           	test   eax,eax
1098e8b8:	74 0d                                           	je     0x1098e8c7
1098e8ba:	6a 00                                           	push   0x0
1098e8bc:	50                                              	push   eax
1098e8bd:	6a 0c                                           	push   0xc
1098e8bf:	e8 2c 9a d9 ff                                  	call   0x107282f0
1098e8c4:	83 c4 0c                                        	add    esp,0xc
1098e8c7:	c3                                              	ret
1098e8c8:	cc                                              	int3
1098e8c9:	cc                                              	int3
1098e8ca:	cc                                              	int3
1098e8cb:	cc                                              	int3
1098e8cc:	cc                                              	int3
1098e8cd:	cc                                              	int3
1098e8ce:	cc                                              	int3
1098e8cf:	cc                                              	int3

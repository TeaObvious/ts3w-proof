# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e870 (SceneManWrap_AddObject)
Paired Ghidra pseudocode: 1098E870_SceneManWrap_AddObject.c
Window: [0x1098e870, 0x1098e8a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e8a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e870: e8 2b b9 d9 ff 8b 4c 24 0c 8b 54 24 08 51 52 8b
1098e880: c8 e8 2a c3 d9 ff 85 c0 74 0d 6a 00 50 6a 0b e8
1098e890: 5c 9a d9 ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e870 <.text+0x98d870>:
1098e870:	e8 2b b9 d9 ff                                  	call   0x1072a1a0
1098e875:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098e879:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098e87d:	51                                              	push   ecx
1098e87e:	52                                              	push   edx
1098e87f:	8b c8                                           	mov    ecx,eax
1098e881:	e8 2a c3 d9 ff                                  	call   0x1072abb0
1098e886:	85 c0                                           	test   eax,eax
1098e888:	74 0d                                           	je     0x1098e897
1098e88a:	6a 00                                           	push   0x0
1098e88c:	50                                              	push   eax
1098e88d:	6a 0b                                           	push   0xb
1098e88f:	e8 5c 9a d9 ff                                  	call   0x107282f0
1098e894:	83 c4 0c                                        	add    esp,0xc
1098e897:	c3                                              	ret
1098e898:	cc                                              	int3
1098e899:	cc                                              	int3
1098e89a:	cc                                              	int3
1098e89b:	cc                                              	int3
1098e89c:	cc                                              	int3
1098e89d:	cc                                              	int3
1098e89e:	cc                                              	int3
1098e89f:	cc                                              	int3

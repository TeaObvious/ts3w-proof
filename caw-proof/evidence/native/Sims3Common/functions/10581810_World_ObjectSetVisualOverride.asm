# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581810 (World_ObjectSetVisualOverride)
Paired Ghidra pseudocode: 10581810_World_ObjectSetVisualOverride.c
Window: [0x10581810, 0x10581830) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581810: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10581820: 08 51 52 50 e8 87 dc ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10581810 <.text+0x580810>:
10581810:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10581814:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10581818:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1058181c:	50                                              	push   eax
1058181d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581821:	51                                              	push   ecx
10581822:	52                                              	push   edx
10581823:	50                                              	push   eax
10581824:	e8 87 dc ff ff                                  	call   0x1057f4b0
10581829:	83 c4 10                                        	add    esp,0x10
1058182c:	c3                                              	ret
1058182d:	cc                                              	int3
1058182e:	cc                                              	int3
1058182f:	cc                                              	int3

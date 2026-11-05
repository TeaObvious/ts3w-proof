# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581600 (World_ObjectPreloadMaterial)
Paired Ghidra pseudocode: 10581600_World_ObjectPreloadMaterial.c
Window: [0x10581600, 0x10581620) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581600: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10581610: bc d7 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581600 <.text+0x580600>:
10581600:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10581604:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10581608:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1058160c:	50                                              	push   eax
1058160d:	51                                              	push   ecx
1058160e:	52                                              	push   edx
1058160f:	e8 bc d7 ff ff                                  	call   0x1057edd0
10581614:	83 c4 0c                                        	add    esp,0xc
10581617:	c3                                              	ret
10581618:	cc                                              	int3
10581619:	cc                                              	int3
1058161a:	cc                                              	int3
1058161b:	cc                                              	int3
1058161c:	cc                                              	int3
1058161d:	cc                                              	int3
1058161e:	cc                                              	int3
1058161f:	cc                                              	int3

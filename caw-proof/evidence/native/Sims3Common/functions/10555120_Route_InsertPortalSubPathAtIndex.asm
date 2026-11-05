# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10555120 (Route_InsertPortalSubPathAtIndex)
Paired Ghidra pseudocode: 10555120_Route_InsertPortalSubPathAtIndex.c
Window: [0x10555120, 0x10555140) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10555140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10555120: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10555130: 08 51 52 50 e8 27 f6 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10555120 <.text+0x554120>:
10555120:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10555124:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10555128:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1055512c:	50                                              	push   eax
1055512d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10555131:	51                                              	push   ecx
10555132:	52                                              	push   edx
10555133:	50                                              	push   eax
10555134:	e8 27 f6 ff ff                                  	call   0x10554760
10555139:	83 c4 10                                        	add    esp,0x10
1055513c:	c3                                              	ret
1055513d:	cc                                              	int3
1055513e:	cc                                              	int3
1055513f:	cc                                              	int3

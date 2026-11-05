# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10551800 (Route_CreateRoute)
Paired Ghidra pseudocode: 10551800_Route_CreateRoute.c
Window: [0x10551800, 0x10551820) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10551820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10551800: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10551810: fc da ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10551800 <.text+0x550800>:
10551800:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10551804:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10551808:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1055180c:	50                                              	push   eax
1055180d:	51                                              	push   ecx
1055180e:	52                                              	push   edx
1055180f:	e8 fc da ff ff                                  	call   0x1054f310
10551814:	83 c4 0c                                        	add    esp,0xc
10551817:	c3                                              	ret
10551818:	cc                                              	int3
10551819:	cc                                              	int3
1055181a:	cc                                              	int3
1055181b:	cc                                              	int3
1055181c:	cc                                              	int3
1055181d:	cc                                              	int3
1055181e:	cc                                              	int3
1055181f:	cc                                              	int3

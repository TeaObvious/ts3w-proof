# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536000 (LookAt_SetTargetObjectIdImpl)
Paired Ghidra pseudocode: 10536000_LookAt_SetTargetObjectIdImpl.c
Window: [0x10536000, 0x10536020) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536000: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10536010: 7c f3 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536000 <.text+0x535000>:
10536000:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10536004:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536008:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053600c:	50                                              	push   eax
1053600d:	51                                              	push   ecx
1053600e:	52                                              	push   edx
1053600f:	e8 7c f3 ff ff                                  	call   0x10535390
10536014:	83 c4 0c                                        	add    esp,0xc
10536017:	c3                                              	ret
10536018:	cc                                              	int3
10536019:	cc                                              	int3
1053601a:	cc                                              	int3
1053601b:	cc                                              	int3
1053601c:	cc                                              	int3
1053601d:	cc                                              	int3
1053601e:	cc                                              	int3
1053601f:	cc                                              	int3

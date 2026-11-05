# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b870 (World_IsInPoolImpl)
Paired Ghidra pseudocode: 1057B870_World_IsInPoolImpl.c
Window: [0x1057b870, 0x1057b8a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b8a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b870: 8b 4c 24 04 8b 54 24 08 83 ec 0c 8b c4 89 08 8b
1057b880: 4c 24 18 89 50 04 89 48 08 e8 22 e1 ff ff 83 c4
1057b890: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b870 <.text+0x57a870>:
1057b870:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057b874:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b878:	83 ec 0c                                        	sub    esp,0xc
1057b87b:	8b c4                                           	mov    eax,esp
1057b87d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b87f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057b883:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b886:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b889:	e8 22 e1 ff ff                                  	call   0x105799b0
1057b88e:	83 c4 0c                                        	add    esp,0xc
1057b891:	c3                                              	ret
1057b892:	cc                                              	int3
1057b893:	cc                                              	int3
1057b894:	cc                                              	int3
1057b895:	cc                                              	int3
1057b896:	cc                                              	int3
1057b897:	cc                                              	int3
1057b898:	cc                                              	int3
1057b899:	cc                                              	int3
1057b89a:	cc                                              	int3
1057b89b:	cc                                              	int3
1057b89c:	cc                                              	int3
1057b89d:	cc                                              	int3
1057b89e:	cc                                              	int3
1057b89f:	cc                                              	int3

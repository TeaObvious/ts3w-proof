# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536070 (LookAt_SetTargetOffsetVectorImpl)
Paired Ghidra pseudocode: 10536070_LookAt_SetTargetOffsetVectorImpl.c
Window: [0x10536070, 0x105360a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105360a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536070: 8b 4c 24 08 8b 54 24 0c 83 ec 0c 8b c4 89 08 8b
10536080: 4c 24 1c 89 50 04 8b 54 24 10 52 89 48 08 e8 0d
10536090: f5 ff ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536070 <.text+0x535070>:
10536070:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536074:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10536078:	83 ec 0c                                        	sub    esp,0xc
1053607b:	8b c4                                           	mov    eax,esp
1053607d:	89 08                                           	mov    DWORD PTR [eax],ecx
1053607f:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10536083:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10536086:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1053608a:	52                                              	push   edx
1053608b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1053608e:	e8 0d f5 ff ff                                  	call   0x105355a0
10536093:	83 c4 10                                        	add    esp,0x10
10536096:	c3                                              	ret
10536097:	cc                                              	int3
10536098:	cc                                              	int3
10536099:	cc                                              	int3
1053609a:	cc                                              	int3
1053609b:	cc                                              	int3
1053609c:	cc                                              	int3
1053609d:	cc                                              	int3
1053609e:	cc                                              	int3
1053609f:	cc                                              	int3

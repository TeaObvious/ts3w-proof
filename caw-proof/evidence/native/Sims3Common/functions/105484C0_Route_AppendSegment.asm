# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105484c0 (Route_AppendSegment)
Paired Ghidra pseudocode: 105484C0_Route_AppendSegment.c
Window: [0x105484c0, 0x105484f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105484f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105484c0: 8b 4c 24 08 8b 54 24 0c 83 ec 0c 8b c4 89 08 8b
105484d0: 4c 24 1c 89 50 04 8b 54 24 10 52 89 48 08 e8 0d
105484e0: d9 ff ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105484c0 <.text+0x5474c0>:
105484c0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105484c4:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
105484c8:	83 ec 0c                                        	sub    esp,0xc
105484cb:	8b c4                                           	mov    eax,esp
105484cd:	89 08                                           	mov    DWORD PTR [eax],ecx
105484cf:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
105484d3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
105484d6:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105484da:	52                                              	push   edx
105484db:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
105484de:	e8 0d d9 ff ff                                  	call   0x10545df0
105484e3:	83 c4 10                                        	add    esp,0x10
105484e6:	c3                                              	ret
105484e7:	cc                                              	int3
105484e8:	cc                                              	int3
105484e9:	cc                                              	int3
105484ea:	cc                                              	int3
105484eb:	cc                                              	int3
105484ec:	cc                                              	int3
105484ed:	cc                                              	int3
105484ee:	cc                                              	int3
105484ef:	cc                                              	int3

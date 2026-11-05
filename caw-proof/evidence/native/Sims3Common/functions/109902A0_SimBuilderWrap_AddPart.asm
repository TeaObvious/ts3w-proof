# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109902a0 (SimBuilderWrap_AddPart)
Paired Ghidra pseudocode: 109902A0_SimBuilderWrap_AddPart.c
Window: [0x109902a0, 0x109902e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109902e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109902a0: 83 ec 10 8b 4c 24 24 8b 44 24 20 8b 54 24 18 89
109902b0: 4c 24 04 8d 0c 24 89 04 24 8b 44 24 1c 51 8b 4c
109902c0: 24 18 89 54 24 0c 89 44 24 10 e8 b1 fa a4 ff 83
109902d0: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109902a0 <.text+0x98f2a0>:
109902a0:	83 ec 10                                        	sub    esp,0x10
109902a3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
109902a7:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
109902ab:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
109902af:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
109902b3:	8d 0c 24                                        	lea    ecx,[esp]
109902b6:	89 04 24                                        	mov    DWORD PTR [esp],eax
109902b9:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
109902bd:	51                                              	push   ecx
109902be:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109902c2:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
109902c6:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
109902ca:	e8 b1 fa a4 ff                                  	call   0x103dfd80
109902cf:	83 c4 10                                        	add    esp,0x10
109902d2:	c3                                              	ret
109902d3:	cc                                              	int3
109902d4:	cc                                              	int3
109902d5:	cc                                              	int3
109902d6:	cc                                              	int3
109902d7:	cc                                              	int3
109902d8:	cc                                              	int3
109902d9:	cc                                              	int3
109902da:	cc                                              	int3
109902db:	cc                                              	int3
109902dc:	cc                                              	int3
109902dd:	cc                                              	int3
109902de:	cc                                              	int3
109902df:	cc                                              	int3

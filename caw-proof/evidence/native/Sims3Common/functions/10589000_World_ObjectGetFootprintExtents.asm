# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589000 (World_ObjectGetFootprintExtents)
Paired Ghidra pseudocode: 10589000_World_ObjectGetFootprintExtents.c
Window: [0x10589000, 0x10589030) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589000: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10589010: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 fd
10589020: e8 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589000 <.text+0x588000>:
10589000:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10589004:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10589008:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058900c:	50                                              	push   eax
1058900d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10589011:	51                                              	push   ecx
10589012:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10589016:	52                                              	push   edx
10589017:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058901b:	50                                              	push   eax
1058901c:	51                                              	push   ecx
1058901d:	52                                              	push   edx
1058901e:	e8 fd e8 ff ff                                  	call   0x10587920
10589023:	83 c4 18                                        	add    esp,0x18
10589026:	c3                                              	ret
10589027:	cc                                              	int3
10589028:	cc                                              	int3
10589029:	cc                                              	int3
1058902a:	cc                                              	int3
1058902b:	cc                                              	int3
1058902c:	cc                                              	int3
1058902d:	cc                                              	int3
1058902e:	cc                                              	int3
1058902f:	cc                                              	int3

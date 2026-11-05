# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581930 (World_ObjectResetBindPose)
Paired Ghidra pseudocode: 10581930_World_ObjectResetBindPose.c
Window: [0x10581930, 0x10581950) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581930: 8b 44 24 08 8b 4c 24 04 50 51 e8 a1 de ff ff 83
10581940: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581930 <.text+0x580930>:
10581930:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581934:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10581938:	50                                              	push   eax
10581939:	51                                              	push   ecx
1058193a:	e8 a1 de ff ff                                  	call   0x1057f7e0
1058193f:	83 c4 08                                        	add    esp,0x8
10581942:	c3                                              	ret
10581943:	cc                                              	int3
10581944:	cc                                              	int3
10581945:	cc                                              	int3
10581946:	cc                                              	int3
10581947:	cc                                              	int3
10581948:	cc                                              	int3
10581949:	cc                                              	int3
1058194a:	cc                                              	int3
1058194b:	cc                                              	int3
1058194c:	cc                                              	int3
1058194d:	cc                                              	int3
1058194e:	cc                                              	int3
1058194f:	cc                                              	int3

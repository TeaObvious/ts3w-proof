# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098b950 (RigResource_GetJointName)
Paired Ghidra pseudocode: 1098B950_RigResource_GetJointName.c
Window: [0x1098b950, 0x1098b970) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098b970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098b950: 8b 44 24 08 8b 4c 24 04 50 83 c1 28 e8 4f 5d 9e
1098b960: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098b950 <.text+0x98a950>:
1098b950:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098b954:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098b958:	50                                              	push   eax
1098b959:	83 c1 28                                        	add    ecx,0x28
1098b95c:	e8 4f 5d 9e ff                                  	call   0x103716b0
1098b961:	c3                                              	ret
1098b962:	cc                                              	int3
1098b963:	cc                                              	int3
1098b964:	cc                                              	int3
1098b965:	cc                                              	int3
1098b966:	cc                                              	int3
1098b967:	cc                                              	int3
1098b968:	cc                                              	int3
1098b969:	cc                                              	int3
1098b96a:	cc                                              	int3
1098b96b:	cc                                              	int3
1098b96c:	cc                                              	int3
1098b96d:	cc                                              	int3
1098b96e:	cc                                              	int3
1098b96f:	cc                                              	int3

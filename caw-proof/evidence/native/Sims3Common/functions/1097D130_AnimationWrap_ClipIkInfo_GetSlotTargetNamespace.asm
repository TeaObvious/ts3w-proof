# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d130 (AnimationWrap_ClipIkInfo_GetSlotTargetNamespace)
Paired Ghidra pseudocode: 1097D130_AnimationWrap_ClipIkInfo_GetSlotTargetNamespace.c
Window: [0x1097d130, 0x1097d150) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d130: 8b 4c 24 04 85 c9 74 10 8b 44 24 0c 8b 54 24 08
1097d140: 50 52 e8 69 6c 9f ff c3 33 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1097d130 <.text+0x97c130>:
1097d130:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097d134:	85 c9                                           	test   ecx,ecx
1097d136:	74 10                                           	je     0x1097d148
1097d138:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097d13c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1097d140:	50                                              	push   eax
1097d141:	52                                              	push   edx
1097d142:	e8 69 6c 9f ff                                  	call   0x10373db0
1097d147:	c3                                              	ret
1097d148:	33 c0                                           	xor    eax,eax
1097d14a:	c3                                              	ret
1097d14b:	cc                                              	int3
1097d14c:	cc                                              	int3
1097d14d:	cc                                              	int3
1097d14e:	cc                                              	int3
1097d14f:	cc                                              	int3

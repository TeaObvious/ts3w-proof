# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f940 (ModelComponent_SetPresetInfo)
Paired Ghidra pseudocode: 1097F940_ModelComponent_SetPresetInfo.c
Window: [0x1097f940, 0x1097f960) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f940: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 ee c1
1097f950: db ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f940 <.text+0x97e940>:
1097f940:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f944:	85 c9                                           	test   ecx,ecx
1097f946:	74 0a                                           	je     0x1097f952
1097f948:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f94c:	50                                              	push   eax
1097f94d:	e8 ee c1 db ff                                  	call   0x1073bb40
1097f952:	c3                                              	ret
1097f953:	cc                                              	int3
1097f954:	cc                                              	int3
1097f955:	cc                                              	int3
1097f956:	cc                                              	int3
1097f957:	cc                                              	int3
1097f958:	cc                                              	int3
1097f959:	cc                                              	int3
1097f95a:	cc                                              	int3
1097f95b:	cc                                              	int3
1097f95c:	cc                                              	int3
1097f95d:	cc                                              	int3
1097f95e:	cc                                              	int3
1097f95f:	cc                                              	int3

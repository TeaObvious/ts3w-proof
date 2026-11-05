# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4d10 (CASUtils_SimBuilderAttachToSceneObjectImpl)
Paired Ghidra pseudocode: 103A4D10_CASUtils_SimBuilderAttachToSceneObjectImpl.c
Window: [0x103a4d10, 0x103a4d30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4d10: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
103a4d20: 1c f6 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a4d10 <.text+0x3a3d10>:
103a4d10:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a4d14:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a4d18:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
103a4d1c:	50                                              	push   eax
103a4d1d:	51                                              	push   ecx
103a4d1e:	52                                              	push   edx
103a4d1f:	e8 1c f6 ff ff                                  	call   0x103a4340
103a4d24:	83 c4 0c                                        	add    esp,0xc
103a4d27:	c3                                              	ret
103a4d28:	cc                                              	int3
103a4d29:	cc                                              	int3
103a4d2a:	cc                                              	int3
103a4d2b:	cc                                              	int3
103a4d2c:	cc                                              	int3
103a4d2d:	cc                                              	int3
103a4d2e:	cc                                              	int3
103a4d2f:	cc                                              	int3

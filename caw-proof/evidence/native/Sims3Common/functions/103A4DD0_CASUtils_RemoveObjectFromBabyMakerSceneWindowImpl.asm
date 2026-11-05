# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4dd0 (CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl)
Paired Ghidra pseudocode: 103A4DD0_CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl.c
Window: [0x103a4dd0, 0x103a4df0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4df0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4dd0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
103a4de0: 08 51 52 50 e8 07 fa ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
103a4dd0 <.text+0x3a3dd0>:
103a4dd0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
103a4dd4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a4dd8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a4ddc:	50                                              	push   eax
103a4ddd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a4de1:	51                                              	push   ecx
103a4de2:	52                                              	push   edx
103a4de3:	50                                              	push   eax
103a4de4:	e8 07 fa ff ff                                  	call   0x103a47f0
103a4de9:	83 c4 10                                        	add    esp,0x10
103a4dec:	c3                                              	ret
103a4ded:	cc                                              	int3
103a4dee:	cc                                              	int3
103a4def:	cc                                              	int3

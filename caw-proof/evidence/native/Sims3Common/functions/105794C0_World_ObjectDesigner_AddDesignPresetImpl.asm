# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105794c0 (World_ObjectDesigner_AddDesignPresetImpl)
Paired Ghidra pseudocode: 105794C0_World_ObjectDesigner_AddDesignPresetImpl.c
Window: [0x105794c0, 0x105794f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105794f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105794c0: 56 e8 9a ef b7 ff 8b f0 e8 53 1c fe ff 8b 4c 24
105794d0: 0c 8b 10 8b 52 58 51 8b 4c 24 0c 6a 04 51 8b c8
105794e0: ff d2 50 8b ce e8 b6 7d b8 ff 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
105794c0 <.text+0x5784c0>:
105794c0:	56                                              	push   esi
105794c1:	e8 9a ef b7 ff                                  	call   0x100f8460
105794c6:	8b f0                                           	mov    esi,eax
105794c8:	e8 53 1c fe ff                                  	call   0x1055b120
105794cd:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105794d1:	8b 10                                           	mov    edx,DWORD PTR [eax]
105794d3:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
105794d6:	51                                              	push   ecx
105794d7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105794db:	6a 04                                           	push   0x4
105794dd:	51                                              	push   ecx
105794de:	8b c8                                           	mov    ecx,eax
105794e0:	ff d2                                           	call   edx
105794e2:	50                                              	push   eax
105794e3:	8b ce                                           	mov    ecx,esi
105794e5:	e8 b6 7d b8 ff                                  	call   0x101012a0
105794ea:	5e                                              	pop    esi
105794eb:	c3                                              	ret
105794ec:	cc                                              	int3
105794ed:	cc                                              	int3
105794ee:	cc                                              	int3
105794ef:	cc                                              	int3

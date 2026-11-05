# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579290 (World_ObjectDesigner_SetPresetInfoImpl)
Paired Ghidra pseudocode: 10579290_World_ObjectDesigner_SetPresetInfoImpl.c
Window: [0x10579290, 0x105792d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105792d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579290: 56 e8 ca f1 b7 ff 8b f0 e8 83 1e fe ff 85 f6 74
105792a0: 24 85 c0 74 20 8b 4c 24 10 8b 10 8b 52 58 51 8b
105792b0: c8 ff d2 8b 4c 24 08 50 8b 44 24 10 50 51 8b ce
105792c0: e8 6b 10 b8 ff 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579290 <.text+0x578290>:
10579290:	56                                              	push   esi
10579291:	e8 ca f1 b7 ff                                  	call   0x100f8460
10579296:	8b f0                                           	mov    esi,eax
10579298:	e8 83 1e fe ff                                  	call   0x1055b120
1057929d:	85 f6                                           	test   esi,esi
1057929f:	74 24                                           	je     0x105792c5
105792a1:	85 c0                                           	test   eax,eax
105792a3:	74 20                                           	je     0x105792c5
105792a5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105792a9:	8b 10                                           	mov    edx,DWORD PTR [eax]
105792ab:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
105792ae:	51                                              	push   ecx
105792af:	8b c8                                           	mov    ecx,eax
105792b1:	ff d2                                           	call   edx
105792b3:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105792b7:	50                                              	push   eax
105792b8:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105792bc:	50                                              	push   eax
105792bd:	51                                              	push   ecx
105792be:	8b ce                                           	mov    ecx,esi
105792c0:	e8 6b 10 b8 ff                                  	call   0x100fa330
105792c5:	5e                                              	pop    esi
105792c6:	c3                                              	ret
105792c7:	cc                                              	int3
105792c8:	cc                                              	int3
105792c9:	cc                                              	int3
105792ca:	cc                                              	int3
105792cb:	cc                                              	int3
105792cc:	cc                                              	int3
105792cd:	cc                                              	int3
105792ce:	cc                                              	int3
105792cf:	cc                                              	int3

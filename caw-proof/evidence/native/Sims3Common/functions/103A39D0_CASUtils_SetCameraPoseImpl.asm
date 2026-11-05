# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a39d0 (CASUtils_SetCameraPoseImpl)
Paired Ghidra pseudocode: 103A39D0_CASUtils_SetCameraPoseImpl.c
Window: [0x103a39d0, 0x103a3a00) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a39d0: 8b 44 24 14 d9 44 24 10 8b 4c 24 08 8b 54 24 04
103a39e0: 50 83 ec 08 d9 5c 24 04 d9 44 24 18 d9 1c 24 51
103a39f0: 52 e8 2a ee ff ff 83 c4 14 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a39d0 <.text+0x3a29d0>:
103a39d0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a39d4:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
103a39d8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a39dc:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
103a39e0:	50                                              	push   eax
103a39e1:	83 ec 08                                        	sub    esp,0x8
103a39e4:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
103a39e8:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
103a39ec:	d9 1c 24                                        	fstp   DWORD PTR [esp]
103a39ef:	51                                              	push   ecx
103a39f0:	52                                              	push   edx
103a39f1:	e8 2a ee ff ff                                  	call   0x103a2820
103a39f6:	83 c4 14                                        	add    esp,0x14
103a39f9:	c3                                              	ret
103a39fa:	cc                                              	int3
103a39fb:	cc                                              	int3
103a39fc:	cc                                              	int3
103a39fd:	cc                                              	int3
103a39fe:	cc                                              	int3
103a39ff:	cc                                              	int3

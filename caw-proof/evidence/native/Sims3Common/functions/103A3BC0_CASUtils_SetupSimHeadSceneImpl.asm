# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3bc0 (CASUtils_SetupSimHeadSceneImpl)
Paired Ghidra pseudocode: 103A3BC0_CASUtils_SetupSimHeadSceneImpl.c
Window: [0x103a3bc0, 0x103a3bf0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3bc0: 8b 44 24 10 d9 44 24 0c 8b 4c 24 04 50 83 ec 08
103a3bd0: d9 5c 24 04 d9 44 24 14 d9 1c 24 51 e8 0f f4 ff
103a3be0: ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3bc0 <.text+0x3a2bc0>:
103a3bc0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
103a3bc4:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
103a3bc8:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a3bcc:	50                                              	push   eax
103a3bcd:	83 ec 08                                        	sub    esp,0x8
103a3bd0:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
103a3bd4:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
103a3bd8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
103a3bdb:	51                                              	push   ecx
103a3bdc:	e8 0f f4 ff ff                                  	call   0x103a2ff0
103a3be1:	83 c4 10                                        	add    esp,0x10
103a3be4:	c3                                              	ret
103a3be5:	cc                                              	int3
103a3be6:	cc                                              	int3
103a3be7:	cc                                              	int3
103a3be8:	cc                                              	int3
103a3be9:	cc                                              	int3
103a3bea:	cc                                              	int3
103a3beb:	cc                                              	int3
103a3bec:	cc                                              	int3
103a3bed:	cc                                              	int3
103a3bee:	cc                                              	int3
103a3bef:	cc                                              	int3

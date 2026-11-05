# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581d90 (World_WinAttachToObjImpl)
Paired Ghidra pseudocode: 10581D90_World_WinAttachToObjImpl.c
Window: [0x10581d90, 0x10581de0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581d90: 8b 44 24 2c 8b 4c 24 28 8b 54 24 24 50 8b 44 24
10581da0: 24 51 8b 4c 24 24 52 8b 54 24 1c 50 51 8b 4c 24
10581db0: 28 83 ec 0c 8b c4 89 10 8b 54 24 38 89 48 04 8b
10581dc0: 4c 24 28 89 50 08 8b 44 24 2c 8b 54 24 24 50 51
10581dd0: 52 e8 4a de ff ff 83 c4 2c c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581d90 <.text+0x580d90>:
10581d90:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10581d94:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10581d98:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10581d9c:	50                                              	push   eax
10581d9d:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10581da1:	51                                              	push   ecx
10581da2:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10581da6:	52                                              	push   edx
10581da7:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10581dab:	50                                              	push   eax
10581dac:	51                                              	push   ecx
10581dad:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10581db1:	83 ec 0c                                        	sub    esp,0xc
10581db4:	8b c4                                           	mov    eax,esp
10581db6:	89 10                                           	mov    DWORD PTR [eax],edx
10581db8:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
10581dbc:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10581dbf:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10581dc3:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10581dc6:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10581dca:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10581dce:	50                                              	push   eax
10581dcf:	51                                              	push   ecx
10581dd0:	52                                              	push   edx
10581dd1:	e8 4a de ff ff                                  	call   0x1057fc20
10581dd6:	83 c4 2c                                        	add    esp,0x2c
10581dd9:	c3                                              	ret
10581dda:	cc                                              	int3
10581ddb:	cc                                              	int3
10581ddc:	cc                                              	int3
10581ddd:	cc                                              	int3
10581dde:	cc                                              	int3
10581ddf:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581df0 (World_WinAttachToWorldPositionImpl)
Paired Ghidra pseudocode: 10581DF0_World_WinAttachToWorldPositionImpl.c
Window: [0x10581df0, 0x10581e40) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581df0: 8b 44 24 28 8b 4c 24 24 8b 54 24 20 50 8b 44 24
10581e00: 20 51 8b 4c 24 20 52 8b 54 24 20 50 51 8b 4c 24
10581e10: 1c 52 8b 54 24 24 83 ec 0c 8b c4 89 08 8b 4c 24
10581e20: 34 89 50 04 8b 54 24 28 52 89 48 08 e8 bf e0 ff
10581e30: ff 83 c4 28 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581df0 <.text+0x580df0>:
10581df0:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10581df4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10581df8:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10581dfc:	50                                              	push   eax
10581dfd:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10581e01:	51                                              	push   ecx
10581e02:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10581e06:	52                                              	push   edx
10581e07:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10581e0b:	50                                              	push   eax
10581e0c:	51                                              	push   ecx
10581e0d:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10581e11:	52                                              	push   edx
10581e12:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10581e16:	83 ec 0c                                        	sub    esp,0xc
10581e19:	8b c4                                           	mov    eax,esp
10581e1b:	89 08                                           	mov    DWORD PTR [eax],ecx
10581e1d:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10581e21:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10581e24:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10581e28:	52                                              	push   edx
10581e29:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10581e2c:	e8 bf e0 ff ff                                  	call   0x1057fef0
10581e31:	83 c4 28                                        	add    esp,0x28
10581e34:	c3                                              	ret
10581e35:	cc                                              	int3
10581e36:	cc                                              	int3
10581e37:	cc                                              	int3
10581e38:	cc                                              	int3
10581e39:	cc                                              	int3
10581e3a:	cc                                              	int3
10581e3b:	cc                                              	int3
10581e3c:	cc                                              	int3
10581e3d:	cc                                              	int3
10581e3e:	cc                                              	int3
10581e3f:	cc                                              	int3

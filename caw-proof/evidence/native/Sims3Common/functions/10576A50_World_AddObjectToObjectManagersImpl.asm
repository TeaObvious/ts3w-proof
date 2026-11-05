# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576a50 (World_AddObjectToObjectManagersImpl)
Paired Ghidra pseudocode: 10576A50_World_AddObjectToObjectManagersImpl.c
Window: [0x10576a50, 0x10576ab0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576a50: 8b 44 24 30 8b 4c 24 24 8b 54 24 28 50 83 ec 0c
10576a60: 8b c4 89 08 8b 4c 24 3c 89 50 04 8b 54 24 30 52
10576a70: 8b 54 24 2c 89 48 08 8b 4c 24 28 83 ec 0c 8b c4
10576a80: 89 08 8b 4c 24 3c 89 50 04 8b 54 24 30 52 8b 54
10576a90: 24 28 89 48 08 8b 44 24 30 8b 4c 24 2c 50 51 52
10576aa0: e8 0b 50 01 00 83 c4 30 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576a50 <.text+0x575a50>:
10576a50:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10576a54:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10576a58:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10576a5c:	50                                              	push   eax
10576a5d:	83 ec 0c                                        	sub    esp,0xc
10576a60:	8b c4                                           	mov    eax,esp
10576a62:	89 08                                           	mov    DWORD PTR [eax],ecx
10576a64:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10576a68:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10576a6b:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10576a6f:	52                                              	push   edx
10576a70:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
10576a74:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10576a77:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10576a7b:	83 ec 0c                                        	sub    esp,0xc
10576a7e:	8b c4                                           	mov    eax,esp
10576a80:	89 08                                           	mov    DWORD PTR [eax],ecx
10576a82:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10576a86:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10576a89:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10576a8d:	52                                              	push   edx
10576a8e:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10576a92:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10576a95:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10576a99:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10576a9d:	50                                              	push   eax
10576a9e:	51                                              	push   ecx
10576a9f:	52                                              	push   edx
10576aa0:	e8 0b 50 01 00                                  	call   0x1058bab0
10576aa5:	83 c4 30                                        	add    esp,0x30
10576aa8:	c3                                              	ret
10576aa9:	cc                                              	int3
10576aaa:	cc                                              	int3
10576aab:	cc                                              	int3
10576aac:	cc                                              	int3
10576aad:	cc                                              	int3
10576aae:	cc                                              	int3
10576aaf:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540a60 (RouteManager_IsRouteToObjectUnobstructed)
Paired Ghidra pseudocode: 10540A60_RouteManager_IsRouteToObjectUnobstructed.c
Window: [0x10540a60, 0x10540ab0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540a60: 8b 44 24 30 8b 4c 24 2c 8b 54 24 28 50 8b 44 24
10540a70: 28 51 8b 4c 24 28 52 8b 54 24 28 50 8b 44 24 28
10540a80: 51 8b 4c 24 20 52 8b 54 24 28 50 83 ec 0c 8b c4
10540a90: 89 08 8b 4c 24 3c 89 50 04 8b 54 24 30 89 48 08
10540aa0: 8b 44 24 2c 52 50 e8 25 e1 ff ff 83 c4 30 c3 cc

LINEAR DISASSEMBLY
10540a60 <.text+0x53fa60>:
10540a60:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10540a64:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10540a68:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10540a6c:	50                                              	push   eax
10540a6d:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10540a71:	51                                              	push   ecx
10540a72:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10540a76:	52                                              	push   edx
10540a77:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10540a7b:	50                                              	push   eax
10540a7c:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10540a80:	51                                              	push   ecx
10540a81:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10540a85:	52                                              	push   edx
10540a86:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10540a8a:	50                                              	push   eax
10540a8b:	83 ec 0c                                        	sub    esp,0xc
10540a8e:	8b c4                                           	mov    eax,esp
10540a90:	89 08                                           	mov    DWORD PTR [eax],ecx
10540a92:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10540a96:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10540a99:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10540a9d:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10540aa0:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10540aa4:	52                                              	push   edx
10540aa5:	50                                              	push   eax
10540aa6:	e8 25 e1 ff ff                                  	call   0x1053ebd0
10540aab:	83 c4 30                                        	add    esp,0x30
10540aae:	c3                                              	ret
10540aaf:	cc                                              	int3

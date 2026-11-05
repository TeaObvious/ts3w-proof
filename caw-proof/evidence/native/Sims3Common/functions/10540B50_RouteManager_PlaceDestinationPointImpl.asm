# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540b50 (RouteManager_PlaceDestinationPointImpl)
Paired Ghidra pseudocode: 10540B50_RouteManager_PlaceDestinationPointImpl.c
Window: [0x10540b50, 0x10540b80) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540b50: 8b 44 24 10 8b 4c 24 04 8b 54 24 08 50 83 ec 0c
10540b60: 8b c4 89 08 8b 4c 24 1c 89 50 04 89 48 08 e8 bd
10540b70: e5 ff ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540b50 <.text+0x53fb50>:
10540b50:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10540b54:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10540b58:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10540b5c:	50                                              	push   eax
10540b5d:	83 ec 0c                                        	sub    esp,0xc
10540b60:	8b c4                                           	mov    eax,esp
10540b62:	89 08                                           	mov    DWORD PTR [eax],ecx
10540b64:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10540b68:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10540b6b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10540b6e:	e8 bd e5 ff ff                                  	call   0x1053f130
10540b73:	83 c4 10                                        	add    esp,0x10
10540b76:	c3                                              	ret
10540b77:	cc                                              	int3
10540b78:	cc                                              	int3
10540b79:	cc                                              	int3
10540b7a:	cc                                              	int3
10540b7b:	cc                                              	int3
10540b7c:	cc                                              	int3
10540b7d:	cc                                              	int3
10540b7e:	cc                                              	int3
10540b7f:	cc                                              	int3

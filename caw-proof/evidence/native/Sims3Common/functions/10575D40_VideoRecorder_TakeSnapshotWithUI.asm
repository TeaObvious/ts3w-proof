# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575d40 (VideoRecorder_TakeSnapshotWithUI)
Paired Ghidra pseudocode: 10575D40_VideoRecorder_TakeSnapshotWithUI.c
Window: [0x10575d40, 0x10575da0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575d40: 83 ec 30 e8 28 74 25 00 33 d2 3b c2 74 41 b9 01
10575d50: 00 00 00 88 4c 24 0c 89 0c 24 89 54 24 04 89 54
10575d60: 24 08 89 54 24 10 89 54 24 14 89 54 24 18 89 54
10575d70: 24 1c 89 54 24 20 89 54 24 24 89 54 24 28 89 54
10575d80: 24 2c 8b 10 8b 52 34 8d 0c 24 51 8b c8 ff d2 83
10575d90: c4 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10575d40 <.text+0x574d40>:
10575d40:	83 ec 30                                        	sub    esp,0x30
10575d43:	e8 28 74 25 00                                  	call   0x107cd170
10575d48:	33 d2                                           	xor    edx,edx
10575d4a:	3b c2                                           	cmp    eax,edx
10575d4c:	74 41                                           	je     0x10575d8f
10575d4e:	b9 01 00 00 00                                  	mov    ecx,0x1
10575d53:	88 4c 24 0c                                     	mov    BYTE PTR [esp+0xc],cl
10575d57:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10575d5a:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10575d5e:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
10575d62:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10575d66:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
10575d6a:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10575d6e:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
10575d72:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
10575d76:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
10575d7a:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
10575d7e:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
10575d82:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575d84:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
10575d87:	8d 0c 24                                        	lea    ecx,[esp]
10575d8a:	51                                              	push   ecx
10575d8b:	8b c8                                           	mov    ecx,eax
10575d8d:	ff d2                                           	call   edx
10575d8f:	83 c4 30                                        	add    esp,0x30
10575d92:	c3                                              	ret
10575d93:	cc                                              	int3
10575d94:	cc                                              	int3
10575d95:	cc                                              	int3
10575d96:	cc                                              	int3
10575d97:	cc                                              	int3
10575d98:	cc                                              	int3
10575d99:	cc                                              	int3
10575d9a:	cc                                              	int3
10575d9b:	cc                                              	int3
10575d9c:	cc                                              	int3
10575d9d:	cc                                              	int3
10575d9e:	cc                                              	int3
10575d9f:	cc                                              	int3

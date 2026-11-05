# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575cf0 (VideoRecorder_TakeSnapshot)
Paired Ghidra pseudocode: 10575CF0_VideoRecorder_TakeSnapshot.c
Window: [0x10575cf0, 0x10575d40) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575cf0: 83 ec 30 e8 78 74 25 00 33 d2 3b c2 74 3d 89 54
10575d00: 24 04 89 54 24 08 89 54 24 10 89 54 24 14 89 54
10575d10: 24 18 89 54 24 1c 89 54 24 20 89 54 24 24 89 54
10575d20: 24 28 89 54 24 2c 89 14 24 8b 10 8b 52 34 8d 0c
10575d30: 24 51 8b c8 c6 44 24 10 01 ff d2 83 c4 30 c3 cc

LINEAR DISASSEMBLY
10575cf0 <.text+0x574cf0>:
10575cf0:	83 ec 30                                        	sub    esp,0x30
10575cf3:	e8 78 74 25 00                                  	call   0x107cd170
10575cf8:	33 d2                                           	xor    edx,edx
10575cfa:	3b c2                                           	cmp    eax,edx
10575cfc:	74 3d                                           	je     0x10575d3b
10575cfe:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10575d02:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
10575d06:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10575d0a:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
10575d0e:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10575d12:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
10575d16:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
10575d1a:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
10575d1e:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
10575d22:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
10575d26:	89 14 24                                        	mov    DWORD PTR [esp],edx
10575d29:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575d2b:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
10575d2e:	8d 0c 24                                        	lea    ecx,[esp]
10575d31:	51                                              	push   ecx
10575d32:	8b c8                                           	mov    ecx,eax
10575d34:	c6 44 24 10 01                                  	mov    BYTE PTR [esp+0x10],0x1
10575d39:	ff d2                                           	call   edx
10575d3b:	83 c4 30                                        	add    esp,0x30
10575d3e:	c3                                              	ret
10575d3f:	cc                                              	int3

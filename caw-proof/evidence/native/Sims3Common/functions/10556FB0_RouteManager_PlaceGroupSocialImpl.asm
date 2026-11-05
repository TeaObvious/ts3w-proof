# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10556fb0 (RouteManager_PlaceGroupSocialImpl)
Paired Ghidra pseudocode: 10556FB0_RouteManager_PlaceGroupSocialImpl.c
Window: [0x10556fb0, 0x10556fe0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10556fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10556fb0: d9 44 24 14 8b 44 24 10 8b 54 24 08 51 8b 4c 24
10556fc0: 10 d9 1c 24 50 8b 44 24 0c 51 52 50 e8 4f f4 ff
10556fd0: ff 83 c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10556fb0 <.text+0x555fb0>:
10556fb0:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10556fb4:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10556fb8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10556fbc:	51                                              	push   ecx
10556fbd:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10556fc1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10556fc4:	50                                              	push   eax
10556fc5:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10556fc9:	51                                              	push   ecx
10556fca:	52                                              	push   edx
10556fcb:	50                                              	push   eax
10556fcc:	e8 4f f4 ff ff                                  	call   0x10556420
10556fd1:	83 c4 14                                        	add    esp,0x14
10556fd4:	c3                                              	ret
10556fd5:	cc                                              	int3
10556fd6:	cc                                              	int3
10556fd7:	cc                                              	int3
10556fd8:	cc                                              	int3
10556fd9:	cc                                              	int3
10556fda:	cc                                              	int3
10556fdb:	cc                                              	int3
10556fdc:	cc                                              	int3
10556fdd:	cc                                              	int3
10556fde:	cc                                              	int3
10556fdf:	cc                                              	int3

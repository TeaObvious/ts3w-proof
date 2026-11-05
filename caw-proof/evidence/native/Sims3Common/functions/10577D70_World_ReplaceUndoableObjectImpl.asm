# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577d70 (World_ReplaceUndoableObjectImpl)
Paired Ghidra pseudocode: 10577D70_World_ReplaceUndoableObjectImpl.c
Window: [0x10577d70, 0x10577da0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577d70: e8 3b f5 d4 ff 85 c0 74 20 8b 48 28 85 c9 74 19
10577d80: 8b 44 24 10 8b 54 24 0c 50 8b 44 24 0c 52 8b 54
10577d90: 24 0c 50 52 e8 77 93 d9 ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577d70 <.text+0x576d70>:
10577d70:	e8 3b f5 d4 ff                                  	call   0x102c72b0
10577d75:	85 c0                                           	test   eax,eax
10577d77:	74 20                                           	je     0x10577d99
10577d79:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
10577d7c:	85 c9                                           	test   ecx,ecx
10577d7e:	74 19                                           	je     0x10577d99
10577d80:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10577d84:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10577d88:	50                                              	push   eax
10577d89:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10577d8d:	52                                              	push   edx
10577d8e:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10577d92:	50                                              	push   eax
10577d93:	52                                              	push   edx
10577d94:	e8 77 93 d9 ff                                  	call   0x10311110
10577d99:	c3                                              	ret
10577d9a:	cc                                              	int3
10577d9b:	cc                                              	int3
10577d9c:	cc                                              	int3
10577d9d:	cc                                              	int3
10577d9e:	cc                                              	int3
10577d9f:	cc                                              	int3

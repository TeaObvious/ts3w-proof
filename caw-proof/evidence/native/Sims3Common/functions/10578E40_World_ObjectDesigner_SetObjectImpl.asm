# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578e40 (World_ObjectDesigner_SetObjectImpl)
Paired Ghidra pseudocode: 10578E40_World_ObjectDesigner_SetObjectImpl.c
Window: [0x10578e40, 0x10578e60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578e40: e8 1b f6 b7 ff 8b 4c 24 08 8b 54 24 04 51 52 8b
10578e50: c8 e8 fa 80 b8 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578e40 <.text+0x577e40>:
10578e40:	e8 1b f6 b7 ff                                  	call   0x100f8460
10578e45:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10578e49:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10578e4d:	51                                              	push   ecx
10578e4e:	52                                              	push   edx
10578e4f:	8b c8                                           	mov    ecx,eax
10578e51:	e8 fa 80 b8 ff                                  	call   0x10100f50
10578e56:	c3                                              	ret
10578e57:	cc                                              	int3
10578e58:	cc                                              	int3
10578e59:	cc                                              	int3
10578e5a:	cc                                              	int3
10578e5b:	cc                                              	int3
10578e5c:	cc                                              	int3
10578e5d:	cc                                              	int3
10578e5e:	cc                                              	int3
10578e5f:	cc                                              	int3

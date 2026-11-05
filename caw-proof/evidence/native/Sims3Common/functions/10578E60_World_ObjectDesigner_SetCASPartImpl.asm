# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578e60 (World_ObjectDesigner_SetCASPartImpl)
Paired Ghidra pseudocode: 10578E60_World_ObjectDesigner_SetCASPartImpl.c
Window: [0x10578e60, 0x10578ea0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578e60: 83 ec 10 e8 f8 f5 b7 ff 8b 4c 24 1c 8b 54 24 20
10578e70: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
10578e80: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 2e 80
10578e90: b8 ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578e60 <.text+0x577e60>:
10578e60:	83 ec 10                                        	sub    esp,0x10
10578e63:	e8 f8 f5 b7 ff                                  	call   0x100f8460
10578e68:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10578e6c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10578e70:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10578e73:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10578e77:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10578e7b:	8d 0c 24                                        	lea    ecx,[esp]
10578e7e:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10578e82:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10578e86:	51                                              	push   ecx
10578e87:	8b c8                                           	mov    ecx,eax
10578e89:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10578e8d:	e8 2e 80 b8 ff                                  	call   0x10100ec0
10578e92:	83 c4 10                                        	add    esp,0x10
10578e95:	c3                                              	ret
10578e96:	cc                                              	int3
10578e97:	cc                                              	int3
10578e98:	cc                                              	int3
10578e99:	cc                                              	int3
10578e9a:	cc                                              	int3
10578e9b:	cc                                              	int3
10578e9c:	cc                                              	int3
10578e9d:	cc                                              	int3
10578e9e:	cc                                              	int3
10578e9f:	cc                                              	int3

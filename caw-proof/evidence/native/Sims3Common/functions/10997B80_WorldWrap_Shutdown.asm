# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997b80 (WorldWrap_Shutdown)
Paired Ghidra pseudocode: 10997B80_WorldWrap_Shutdown.c
Window: [0x10997b80, 0x10997ba0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997b80: 56 8b 74 24 08 85 f6 74 11 8b ce e8 90 83 8a ff
10997b90: 8b 06 8b 10 6a 01 8b ce ff d2 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
10997b80 <.text+0x996b80>:
10997b80:	56                                              	push   esi
10997b81:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10997b85:	85 f6                                           	test   esi,esi
10997b87:	74 11                                           	je     0x10997b9a
10997b89:	8b ce                                           	mov    ecx,esi
10997b8b:	e8 90 83 8a ff                                  	call   0x1023ff20
10997b90:	8b 06                                           	mov    eax,DWORD PTR [esi]
10997b92:	8b 10                                           	mov    edx,DWORD PTR [eax]
10997b94:	6a 01                                           	push   0x1
10997b96:	8b ce                                           	mov    ecx,esi
10997b98:	ff d2                                           	call   edx
10997b9a:	5e                                              	pop    esi
10997b9b:	c3                                              	ret
10997b9c:	cc                                              	int3
10997b9d:	cc                                              	int3
10997b9e:	cc                                              	int3
10997b9f:	cc                                              	int3

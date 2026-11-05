# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531c60 (DataFactory_ReleasePrototypeResourceImpl)
Paired Ghidra pseudocode: 10531C60_DataFactory_ReleasePrototypeResourceImpl.c
Window: [0x10531c60, 0x10531c80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531c60: e8 bb 94 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
10531c70: d0 8b 4c 24 04 8b 10 8b 52 3c 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
10531c60 <.text+0x530c60>:
10531c60:	e8 bb 94 02 00                                  	call   0x1055b120
10531c65:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531c67:	8b c8                                           	mov    ecx,eax
10531c69:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
10531c6f:	ff d0                                           	call   eax
10531c71:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10531c75:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531c77:	8b 52 3c                                        	mov    edx,DWORD PTR [edx+0x3c]
10531c7a:	51                                              	push   ecx
10531c7b:	8b c8                                           	mov    ecx,eax
10531c7d:	ff d2                                           	call   edx
10531c7f:	c3                                              	ret

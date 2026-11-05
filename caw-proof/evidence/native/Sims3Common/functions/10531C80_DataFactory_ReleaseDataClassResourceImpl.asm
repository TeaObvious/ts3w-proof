# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531c80 (DataFactory_ReleaseDataClassResourceImpl)
Paired Ghidra pseudocode: 10531C80_DataFactory_ReleaseDataClassResourceImpl.c
Window: [0x10531c80, 0x10531ca0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531c80: e8 9b 94 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
10531c90: d0 8b 4c 24 04 8b 10 8b 52 40 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
10531c80 <.text+0x530c80>:
10531c80:	e8 9b 94 02 00                                  	call   0x1055b120
10531c85:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531c87:	8b c8                                           	mov    ecx,eax
10531c89:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
10531c8f:	ff d0                                           	call   eax
10531c91:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10531c95:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531c97:	8b 52 40                                        	mov    edx,DWORD PTR [edx+0x40]
10531c9a:	51                                              	push   ecx
10531c9b:	8b c8                                           	mov    ecx,eax
10531c9d:	ff d2                                           	call   edx
10531c9f:	c3                                              	ret

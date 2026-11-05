# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531c40 (DataFactory_GetDataClassResourceImpl)
Paired Ghidra pseudocode: 10531C40_DataFactory_GetDataClassResourceImpl.c
Window: [0x10531c40, 0x10531c60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531c40: e8 db 94 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
10531c50: d0 8b 4c 24 04 8b 10 8b 52 38 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
10531c40 <.text+0x530c40>:
10531c40:	e8 db 94 02 00                                  	call   0x1055b120
10531c45:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531c47:	8b c8                                           	mov    ecx,eax
10531c49:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
10531c4f:	ff d0                                           	call   eax
10531c51:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10531c55:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531c57:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
10531c5a:	51                                              	push   ecx
10531c5b:	8b c8                                           	mov    ecx,eax
10531c5d:	ff d2                                           	call   edx
10531c5f:	c3                                              	ret

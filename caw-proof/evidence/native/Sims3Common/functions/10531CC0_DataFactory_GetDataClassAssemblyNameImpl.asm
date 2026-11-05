# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531cc0 (DataFactory_GetDataClassAssemblyNameImpl)
Paired Ghidra pseudocode: 10531CC0_DataFactory_GetDataClassAssemblyNameImpl.c
Window: [0x10531cc0, 0x10531ce0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531cc0: e8 5b 94 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
10531cd0: d0 8b 4c 24 04 8b 10 8b 52 48 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
10531cc0 <.text+0x530cc0>:
10531cc0:	e8 5b 94 02 00                                  	call   0x1055b120
10531cc5:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531cc7:	8b c8                                           	mov    ecx,eax
10531cc9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
10531ccf:	ff d0                                           	call   eax
10531cd1:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10531cd5:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531cd7:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
10531cda:	51                                              	push   ecx
10531cdb:	8b c8                                           	mov    ecx,eax
10531cdd:	ff d2                                           	call   edx
10531cdf:	c3                                              	ret

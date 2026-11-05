# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531ca0 (DataFactory_GetDataClassNameImpl)
Paired Ghidra pseudocode: 10531CA0_DataFactory_GetDataClassNameImpl.c
Window: [0x10531ca0, 0x10531cc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531ca0: e8 7b 94 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
10531cb0: d0 8b 4c 24 04 8b 10 8b 52 44 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
10531ca0 <.text+0x530ca0>:
10531ca0:	e8 7b 94 02 00                                  	call   0x1055b120
10531ca5:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531ca7:	8b c8                                           	mov    ecx,eax
10531ca9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
10531caf:	ff d0                                           	call   eax
10531cb1:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10531cb5:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531cb7:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
10531cba:	51                                              	push   ecx
10531cbb:	8b c8                                           	mov    ecx,eax
10531cbd:	ff d2                                           	call   edx
10531cbf:	c3                                              	ret

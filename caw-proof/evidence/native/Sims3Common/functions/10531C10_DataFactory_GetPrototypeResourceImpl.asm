# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531c10 (DataFactory_GetPrototypeResourceImpl)
Paired Ghidra pseudocode: 10531C10_DataFactory_GetPrototypeResourceImpl.c
Window: [0x10531c10, 0x10531c40) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531c10: e8 0b 95 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
10531c20: d0 8b 4c 24 10 8b 10 8b 52 34 51 8b 4c 24 10 51
10531c30: 8b 4c 24 10 51 8b 4c 24 10 51 8b c8 ff d2 c3 cc

LINEAR DISASSEMBLY
10531c10 <.text+0x530c10>:
10531c10:	e8 0b 95 02 00                                  	call   0x1055b120
10531c15:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531c17:	8b c8                                           	mov    ecx,eax
10531c19:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
10531c1f:	ff d0                                           	call   eax
10531c21:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10531c25:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531c27:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
10531c2a:	51                                              	push   ecx
10531c2b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10531c2f:	51                                              	push   ecx
10531c30:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10531c34:	51                                              	push   ecx
10531c35:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10531c39:	51                                              	push   ecx
10531c3a:	8b c8                                           	mov    ecx,eax
10531c3c:	ff d2                                           	call   edx
10531c3e:	c3                                              	ret
10531c3f:	cc                                              	int3

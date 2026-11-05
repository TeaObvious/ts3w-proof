# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575e70 (VideoRecorder_SetFileName)
Paired Ghidra pseudocode: 10575E70_VideoRecorder_SetFileName.c
Window: [0x10575e70, 0x10575ea0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575e70: 56 e8 fa 72 25 00 8b f0 85 f6 74 1f 57 e8 9e 52
10575e80: fe ff 8b 4c 24 0c 8b 10 8b 52 58 8b 3e 51 8b c8
10575e90: ff d2 50 8b 47 0c 8b ce ff d0 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
10575e70 <.text+0x574e70>:
10575e70:	56                                              	push   esi
10575e71:	e8 fa 72 25 00                                  	call   0x107cd170
10575e76:	8b f0                                           	mov    esi,eax
10575e78:	85 f6                                           	test   esi,esi
10575e7a:	74 1f                                           	je     0x10575e9b
10575e7c:	57                                              	push   edi
10575e7d:	e8 9e 52 fe ff                                  	call   0x1055b120
10575e82:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10575e86:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575e88:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10575e8b:	8b 3e                                           	mov    edi,DWORD PTR [esi]
10575e8d:	51                                              	push   ecx
10575e8e:	8b c8                                           	mov    ecx,eax
10575e90:	ff d2                                           	call   edx
10575e92:	50                                              	push   eax
10575e93:	8b 47 0c                                        	mov    eax,DWORD PTR [edi+0xc]
10575e96:	8b ce                                           	mov    ecx,esi
10575e98:	ff d0                                           	call   eax
10575e9a:	5f                                              	pop    edi
10575e9b:	5e                                              	pop    esi
10575e9c:	c3                                              	ret
10575e9d:	cc                                              	int3
10575e9e:	cc                                              	int3
10575e9f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575ea0 (VideoRecorder_SetSnapshotFileName)
Paired Ghidra pseudocode: 10575EA0_VideoRecorder_SetSnapshotFileName.c
Window: [0x10575ea0, 0x10575ed0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575ea0: 56 e8 ca 72 25 00 8b f0 85 f6 74 21 57 e8 6e 52
10575eb0: fe ff 8b 4c 24 0c 8b 10 8b 52 58 8b 3e 6a 00 51
10575ec0: 8b c8 ff d2 50 8b 47 14 8b ce ff d0 5f 5e c3 cc

LINEAR DISASSEMBLY
10575ea0 <.text+0x574ea0>:
10575ea0:	56                                              	push   esi
10575ea1:	e8 ca 72 25 00                                  	call   0x107cd170
10575ea6:	8b f0                                           	mov    esi,eax
10575ea8:	85 f6                                           	test   esi,esi
10575eaa:	74 21                                           	je     0x10575ecd
10575eac:	57                                              	push   edi
10575ead:	e8 6e 52 fe ff                                  	call   0x1055b120
10575eb2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10575eb6:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575eb8:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10575ebb:	8b 3e                                           	mov    edi,DWORD PTR [esi]
10575ebd:	6a 00                                           	push   0x0
10575ebf:	51                                              	push   ecx
10575ec0:	8b c8                                           	mov    ecx,eax
10575ec2:	ff d2                                           	call   edx
10575ec4:	50                                              	push   eax
10575ec5:	8b 47 14                                        	mov    eax,DWORD PTR [edi+0x14]
10575ec8:	8b ce                                           	mov    ecx,esi
10575eca:	ff d0                                           	call   eax
10575ecc:	5f                                              	pop    edi
10575ecd:	5e                                              	pop    esi
10575ece:	c3                                              	ret
10575ecf:	cc                                              	int3

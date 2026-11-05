# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105329b0 (DeviceConfig_GetProperty)
Paired Ghidra pseudocode: 105329B0_DeviceConfig_GetProperty.c
Window: [0x105329b0, 0x105329e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105329e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105329b0: e8 6b 87 02 00 8b 4c 24 04 8b 10 8b 52 58 51 8b
105329c0: c8 ff d2 85 c0 74 14 8b 4c 24 08 51 50 68 c8 76
105329d0: ae 10 e8 19 60 e5 ff 83 c4 0c c3 8b 44 24 08 c3

LINEAR DISASSEMBLY
105329b0 <.text+0x5319b0>:
105329b0:	e8 6b 87 02 00                                  	call   0x1055b120
105329b5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105329b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
105329bb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
105329be:	51                                              	push   ecx
105329bf:	8b c8                                           	mov    ecx,eax
105329c1:	ff d2                                           	call   edx
105329c3:	85 c0                                           	test   eax,eax
105329c5:	74 14                                           	je     0x105329db
105329c7:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105329cb:	51                                              	push   ecx
105329cc:	50                                              	push   eax
105329cd:	68 c8 76 ae 10                                  	push   0x10ae76c8
105329d2:	e8 19 60 e5 ff                                  	call   0x103889f0
105329d7:	83 c4 0c                                        	add    esp,0xc
105329da:	c3                                              	ret
105329db:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105329df:	c3                                              	ret

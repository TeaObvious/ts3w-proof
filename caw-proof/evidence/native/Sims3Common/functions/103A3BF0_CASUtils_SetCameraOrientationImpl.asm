# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3bf0 (CASUtils_SetCameraOrientationImpl)
Paired Ghidra pseudocode: 103A3BF0_CASUtils_SetCameraOrientationImpl.c
Window: [0x103a3bf0, 0x103a3c20) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3bf0: d9 44 24 14 8b 44 24 04 83 ec 10 d9 5c 24 0c d9
103a3c00: 44 24 20 d9 5c 24 08 d9 44 24 1c d9 5c 24 04 d9
103a3c10: 44 24 18 d9 1c 24 50 e8 74 f4 ff ff 83 c4 14 c3

LINEAR DISASSEMBLY
103a3bf0 <.text+0x3a2bf0>:
103a3bf0:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
103a3bf4:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
103a3bf8:	83 ec 10                                        	sub    esp,0x10
103a3bfb:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
103a3bff:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
103a3c03:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
103a3c07:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
103a3c0b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
103a3c0f:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
103a3c13:	d9 1c 24                                        	fstp   DWORD PTR [esp]
103a3c16:	50                                              	push   eax
103a3c17:	e8 74 f4 ff ff                                  	call   0x103a3090
103a3c1c:	83 c4 14                                        	add    esp,0x14
103a3c1f:	c3                                              	ret

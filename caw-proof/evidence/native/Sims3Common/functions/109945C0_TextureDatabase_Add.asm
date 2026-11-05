# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109945c0 (TextureDatabase_Add)
Paired Ghidra pseudocode: 109945C0_TextureDatabase_Add.c
Window: [0x109945c0, 0x109945e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109945e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109945c0: 8b 44 24 20 8b 4c 24 1c 8b 54 24 18 50 51 8b 4c
109945d0: 24 0c 52 8d 44 24 14 50 e8 93 fe ff ff c3 cc cc

LINEAR DISASSEMBLY
109945c0 <.text+0x9935c0>:
109945c0:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
109945c4:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109945c8:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
109945cc:	50                                              	push   eax
109945cd:	51                                              	push   ecx
109945ce:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
109945d2:	52                                              	push   edx
109945d3:	8d 44 24 14                                     	lea    eax,[esp+0x14]
109945d7:	50                                              	push   eax
109945d8:	e8 93 fe ff ff                                  	call   0x10994470
109945dd:	c3                                              	ret
109945de:	cc                                              	int3
109945df:	cc                                              	int3

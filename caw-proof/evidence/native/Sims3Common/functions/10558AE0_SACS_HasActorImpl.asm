# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558ae0 (SACS_HasActorImpl)
Paired Ghidra pseudocode: 10558AE0_SACS_HasActorImpl.c
Window: [0x10558ae0, 0x10558b10) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558ae0: e8 3b 26 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558af0: 00 51 8b c8 ff d2 85 c0 74 0d 8b 4c 24 08 51 8b
10558b00: c8 e8 4a 91 09 00 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558ae0 <.text+0x557ae0>:
10558ae0:	e8 3b 26 00 00                                  	call   0x1055b120
10558ae5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558ae9:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558aeb:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558af1:	51                                              	push   ecx
10558af2:	8b c8                                           	mov    ecx,eax
10558af4:	ff d2                                           	call   edx
10558af6:	85 c0                                           	test   eax,eax
10558af8:	74 0d                                           	je     0x10558b07
10558afa:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10558afe:	51                                              	push   ecx
10558aff:	8b c8                                           	mov    ecx,eax
10558b01:	e8 4a 91 09 00                                  	call   0x105f1c50
10558b06:	c3                                              	ret
10558b07:	32 c0                                           	xor    al,al
10558b09:	c3                                              	ret
10558b0a:	cc                                              	int3
10558b0b:	cc                                              	int3
10558b0c:	cc                                              	int3
10558b0d:	cc                                              	int3
10558b0e:	cc                                              	int3
10558b0f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558ea0 (SACS_GetDefaultPriorityImpl)
Paired Ghidra pseudocode: 10558EA0_SACS_GetDefaultPriorityImpl.c
Window: [0x10558ea0, 0x10558ed0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558ea0: e8 7b 22 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558eb0: 00 51 8b c8 ff d2 85 c0 74 07 8b c8 e9 af 8f 09
10558ec0: 00 b8 fd ff ff ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558ea0 <.text+0x557ea0>:
10558ea0:	e8 7b 22 00 00                                  	call   0x1055b120
10558ea5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558ea9:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558eab:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558eb1:	51                                              	push   ecx
10558eb2:	8b c8                                           	mov    ecx,eax
10558eb4:	ff d2                                           	call   edx
10558eb6:	85 c0                                           	test   eax,eax
10558eb8:	74 07                                           	je     0x10558ec1
10558eba:	8b c8                                           	mov    ecx,eax
10558ebc:	e9 af 8f 09 00                                  	jmp    0x105f1e70
10558ec1:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
10558ec6:	c3                                              	ret
10558ec7:	cc                                              	int3
10558ec8:	cc                                              	int3
10558ec9:	cc                                              	int3
10558eca:	cc                                              	int3
10558ecb:	cc                                              	int3
10558ecc:	cc                                              	int3
10558ecd:	cc                                              	int3
10558ece:	cc                                              	int3
10558ecf:	cc                                              	int3

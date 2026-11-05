# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558bf0 (SACS_SetParamStringImpl)
Paired Ghidra pseudocode: 10558BF0_SACS_SetParamStringImpl.c
Window: [0x10558bf0, 0x10558c30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558bf0: 56 57 e8 29 25 00 00 8b 4c 24 0c 8b f0 8b 06 8b
10558c00: 90 cc 00 00 00 51 8b ce ff d2 8b f8 85 ff 74 1b
10558c10: 8b 4c 24 14 8b 06 8b 50 58 51 8b ce ff d2 50 8b
10558c20: 44 24 14 50 8b cf e8 75 ab 09 00 5f 5e c3 cc cc

LINEAR DISASSEMBLY
10558bf0 <.text+0x557bf0>:
10558bf0:	56                                              	push   esi
10558bf1:	57                                              	push   edi
10558bf2:	e8 29 25 00 00                                  	call   0x1055b120
10558bf7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10558bfb:	8b f0                                           	mov    esi,eax
10558bfd:	8b 06                                           	mov    eax,DWORD PTR [esi]
10558bff:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
10558c05:	51                                              	push   ecx
10558c06:	8b ce                                           	mov    ecx,esi
10558c08:	ff d2                                           	call   edx
10558c0a:	8b f8                                           	mov    edi,eax
10558c0c:	85 ff                                           	test   edi,edi
10558c0e:	74 1b                                           	je     0x10558c2b
10558c10:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10558c14:	8b 06                                           	mov    eax,DWORD PTR [esi]
10558c16:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10558c19:	51                                              	push   ecx
10558c1a:	8b ce                                           	mov    ecx,esi
10558c1c:	ff d2                                           	call   edx
10558c1e:	50                                              	push   eax
10558c1f:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10558c23:	50                                              	push   eax
10558c24:	8b cf                                           	mov    ecx,edi
10558c26:	e8 75 ab 09 00                                  	call   0x105f37a0
10558c2b:	5f                                              	pop    edi
10558c2c:	5e                                              	pop    esi
10558c2d:	c3                                              	ret
10558c2e:	cc                                              	int3
10558c2f:	cc                                              	int3

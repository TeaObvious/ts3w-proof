# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055ec80 (Simulator_CreateObjectImpl)
Paired Ghidra pseudocode: 1055EC80_Simulator_CreateObjectImpl.c
Window: [0x1055ec80, 0x1055ecc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055ecc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055ec80: e8 9b c4 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055ec90: d0 8b 4c 24 14 8b 10 8b 52 04 51 8b 4c 24 14 51
1055eca0: 8b 4c 24 14 51 8b 4c 24 14 51 8b 4c 24 14 51 8b
1055ecb0: c8 ff d2 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055ec80 <.text+0x55dc80>:
1055ec80:	e8 9b c4 ff ff                                  	call   0x1055b120
1055ec85:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055ec87:	8b c8                                           	mov    ecx,eax
1055ec89:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055ec8f:	ff d0                                           	call   eax
1055ec91:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055ec95:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055ec97:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
1055ec9a:	51                                              	push   ecx
1055ec9b:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055ec9f:	51                                              	push   ecx
1055eca0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055eca4:	51                                              	push   ecx
1055eca5:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055eca9:	51                                              	push   ecx
1055ecaa:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055ecae:	51                                              	push   ecx
1055ecaf:	8b c8                                           	mov    ecx,eax
1055ecb1:	ff d2                                           	call   edx
1055ecb3:	c3                                              	ret
1055ecb4:	cc                                              	int3
1055ecb5:	cc                                              	int3
1055ecb6:	cc                                              	int3
1055ecb7:	cc                                              	int3
1055ecb8:	cc                                              	int3
1055ecb9:	cc                                              	int3
1055ecba:	cc                                              	int3
1055ecbb:	cc                                              	int3
1055ecbc:	cc                                              	int3
1055ecbd:	cc                                              	int3
1055ecbe:	cc                                              	int3
1055ecbf:	cc                                              	int3

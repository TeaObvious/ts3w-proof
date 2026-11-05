# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992d30 (SimServiceWrap_GetOptions)
Paired Ghidra pseudocode: 10992D30_SimServiceWrap_GetOptions.c
Window: [0x10992d30, 0x10992d60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992d30: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
10992d40: 0c 51 8b 4c 24 0c 52 50 51 e8 92 32 a5 ff 8b c8
10992d50: e8 9b 32 a5 ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992d30 <.text+0x991d30>:
10992d30:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10992d34:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10992d38:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10992d3c:	50                                              	push   eax
10992d3d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10992d41:	51                                              	push   ecx
10992d42:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10992d46:	52                                              	push   edx
10992d47:	50                                              	push   eax
10992d48:	51                                              	push   ecx
10992d49:	e8 92 32 a5 ff                                  	call   0x103e5fe0
10992d4e:	8b c8                                           	mov    ecx,eax
10992d50:	e8 9b 32 a5 ff                                  	call   0x103e5ff0
10992d55:	c3                                              	ret
10992d56:	cc                                              	int3
10992d57:	cc                                              	int3
10992d58:	cc                                              	int3
10992d59:	cc                                              	int3
10992d5a:	cc                                              	int3
10992d5b:	cc                                              	int3
10992d5c:	cc                                              	int3
10992d5d:	cc                                              	int3
10992d5e:	cc                                              	int3
10992d5f:	cc                                              	int3

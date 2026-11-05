# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558b50 (SACS_SetParamImpl)
Paired Ghidra pseudocode: 10558B50_SACS_SetParamImpl.c
Window: [0x10558b50, 0x10558b80) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558b50: e8 cb 25 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558b60: 00 51 8b c8 ff d2 85 c0 74 11 8b 4c 24 0c 8b 54
10558b70: 24 08 51 52 8b c8 e8 45 ac 09 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
10558b50 <.text+0x557b50>:
10558b50:	e8 cb 25 00 00                                  	call   0x1055b120
10558b55:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558b59:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558b5b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558b61:	51                                              	push   ecx
10558b62:	8b c8                                           	mov    ecx,eax
10558b64:	ff d2                                           	call   edx
10558b66:	85 c0                                           	test   eax,eax
10558b68:	74 11                                           	je     0x10558b7b
10558b6a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10558b6e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10558b72:	51                                              	push   ecx
10558b73:	52                                              	push   edx
10558b74:	8b c8                                           	mov    ecx,eax
10558b76:	e8 45 ac 09 00                                  	call   0x105f37c0
10558b7b:	c3                                              	ret
10558b7c:	cc                                              	int3
10558b7d:	cc                                              	int3
10558b7e:	cc                                              	int3
10558b7f:	cc                                              	int3

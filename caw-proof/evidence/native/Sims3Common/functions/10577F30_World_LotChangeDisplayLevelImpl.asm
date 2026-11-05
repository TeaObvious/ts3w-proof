# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577f30 (World_LotChangeDisplayLevelImpl)
Paired Ghidra pseudocode: 10577F30_World_LotChangeDisplayLevelImpl.c
Window: [0x10577f30, 0x10577f60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577f30: 8b 0d c4 00 c7 10 85 c9 74 21 8b 44 24 08 8b 54
10577f40: 24 04 6a 00 50 52 e8 c5 f0 cb ff 85 c0 74 0c 8b
10577f50: 4c 24 0c 51 8b c8 e8 65 f1 b0 ff c3 cc cc cc cc

LINEAR DISASSEMBLY
10577f30 <.text+0x576f30>:
10577f30:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577f36:	85 c9                                           	test   ecx,ecx
10577f38:	74 21                                           	je     0x10577f5b
10577f3a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10577f3e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577f42:	6a 00                                           	push   0x0
10577f44:	50                                              	push   eax
10577f45:	52                                              	push   edx
10577f46:	e8 c5 f0 cb ff                                  	call   0x10237010
10577f4b:	85 c0                                           	test   eax,eax
10577f4d:	74 0c                                           	je     0x10577f5b
10577f4f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10577f53:	51                                              	push   ecx
10577f54:	8b c8                                           	mov    ecx,eax
10577f56:	e8 65 f1 b0 ff                                  	call   0x100870c0
10577f5b:	c3                                              	ret
10577f5c:	cc                                              	int3
10577f5d:	cc                                              	int3
10577f5e:	cc                                              	int3
10577f5f:	cc                                              	int3

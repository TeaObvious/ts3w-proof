# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bdb0 (UIManager_LoadUIHitMaskImpl)
Paired Ghidra pseudocode: 1056BDB0_UIManager_LoadUIHitMaskImpl.c
Window: [0x1056bdb0, 0x1056bdd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bdd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bdb0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
1056bdc0: 08 51 52 50 e8 a7 f7 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
1056bdb0 <.text+0x56adb0>:
1056bdb0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1056bdb4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056bdb8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056bdbc:	50                                              	push   eax
1056bdbd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1056bdc1:	51                                              	push   ecx
1056bdc2:	52                                              	push   edx
1056bdc3:	50                                              	push   eax
1056bdc4:	e8 a7 f7 ff ff                                  	call   0x1056b570
1056bdc9:	83 c4 10                                        	add    esp,0x10
1056bdcc:	c3                                              	ret
1056bdcd:	cc                                              	int3
1056bdce:	cc                                              	int3
1056bdcf:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be300 (UserToolUtils_GetObjectProductPresetIdListImpl)
Paired Ghidra pseudocode: 102BE300_UserToolUtils_GetObjectProductPresetIdListImpl.c
Window: [0x102be300, 0x102be320) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be300: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
102be310: 08 51 52 50 e8 d7 f7 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
102be300 <.text+0x2bd300>:
102be300:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
102be304:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
102be308:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
102be30c:	50                                              	push   eax
102be30d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102be311:	51                                              	push   ecx
102be312:	52                                              	push   edx
102be313:	50                                              	push   eax
102be314:	e8 d7 f7 ff ff                                  	call   0x102bdaf0
102be319:	83 c4 10                                        	add    esp,0x10
102be31c:	c3                                              	ret
102be31d:	cc                                              	int3
102be31e:	cc                                              	int3
102be31f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be320 (UserToolUtils_GetMoodletIconInfoImpl)
Paired Ghidra pseudocode: 102BE320_UserToolUtils_GetMoodletIconInfoImpl.c
Window: [0x102be320, 0x102be350) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be320: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
102be330: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 cd
102be340: f8 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be320 <.text+0x2bd320>:
102be320:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
102be324:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
102be328:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
102be32c:	50                                              	push   eax
102be32d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
102be331:	51                                              	push   ecx
102be332:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
102be336:	52                                              	push   edx
102be337:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
102be33b:	50                                              	push   eax
102be33c:	51                                              	push   ecx
102be33d:	52                                              	push   edx
102be33e:	e8 cd f8 ff ff                                  	call   0x102bdc10
102be343:	83 c4 18                                        	add    esp,0x18
102be346:	c3                                              	ret
102be347:	cc                                              	int3
102be348:	cc                                              	int3
102be349:	cc                                              	int3
102be34a:	cc                                              	int3
102be34b:	cc                                              	int3
102be34c:	cc                                              	int3
102be34d:	cc                                              	int3
102be34e:	cc                                              	int3
102be34f:	cc                                              	int3

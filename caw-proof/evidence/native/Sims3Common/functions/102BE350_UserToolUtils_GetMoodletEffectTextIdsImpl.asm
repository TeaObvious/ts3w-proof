# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be350 (UserToolUtils_GetMoodletEffectTextIdsImpl)
Paired Ghidra pseudocode: 102BE350_UserToolUtils_GetMoodletEffectTextIdsImpl.c
Window: [0x102be350, 0x102be370) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be370
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be350: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
102be360: 08 51 52 50 e8 07 f9 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
102be350 <.text+0x2bd350>:
102be350:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
102be354:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
102be358:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
102be35c:	50                                              	push   eax
102be35d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102be361:	51                                              	push   ecx
102be362:	52                                              	push   edx
102be363:	50                                              	push   eax
102be364:	e8 07 f9 ff ff                                  	call   0x102bdc70
102be369:	83 c4 10                                        	add    esp,0x10
102be36c:	c3                                              	ret
102be36d:	cc                                              	int3
102be36e:	cc                                              	int3
102be36f:	cc                                              	int3

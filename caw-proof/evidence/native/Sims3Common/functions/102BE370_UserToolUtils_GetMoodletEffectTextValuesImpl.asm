# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be370 (UserToolUtils_GetMoodletEffectTextValuesImpl)
Paired Ghidra pseudocode: 102BE370_UserToolUtils_GetMoodletEffectTextValuesImpl.c
Window: [0x102be370, 0x102be390) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be390
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be370: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
102be380: 08 51 52 50 e8 37 fa ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
102be370 <.text+0x2bd370>:
102be370:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
102be374:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
102be378:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
102be37c:	50                                              	push   eax
102be37d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102be381:	51                                              	push   ecx
102be382:	52                                              	push   edx
102be383:	50                                              	push   eax
102be384:	e8 37 fa ff ff                                  	call   0x102bddc0
102be389:	83 c4 10                                        	add    esp,0x10
102be38c:	c3                                              	ret
102be38d:	cc                                              	int3
102be38e:	cc                                              	int3
102be38f:	cc                                              	int3

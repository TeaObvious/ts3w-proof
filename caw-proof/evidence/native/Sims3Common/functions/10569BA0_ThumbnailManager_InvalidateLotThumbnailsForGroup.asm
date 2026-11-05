# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569ba0 (ThumbnailManager_InvalidateLotThumbnailsForGroup)
Paired Ghidra pseudocode: 10569BA0_ThumbnailManager_InvalidateLotThumbnailsForGroup.c
Window: [0x10569ba0, 0x10569bd0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569bd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569ba0: 8b 0d 50 11 c7 10 85 c9 74 23 8b 44 24 18 8b 54
10569bb0: 24 14 50 8b 44 24 14 52 8b 54 24 14 50 8b 44 24
10569bc0: 14 52 8b 54 24 14 50 52 e8 c3 ff dc ff c3 cc cc

LINEAR DISASSEMBLY
10569ba0 <.text+0x568ba0>:
10569ba0:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569ba6:	85 c9                                           	test   ecx,ecx
10569ba8:	74 23                                           	je     0x10569bcd
10569baa:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10569bae:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10569bb2:	50                                              	push   eax
10569bb3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10569bb7:	52                                              	push   edx
10569bb8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10569bbc:	50                                              	push   eax
10569bbd:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10569bc1:	52                                              	push   edx
10569bc2:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10569bc6:	50                                              	push   eax
10569bc7:	52                                              	push   edx
10569bc8:	e8 c3 ff dc ff                                  	call   0x10339b90
10569bcd:	c3                                              	ret
10569bce:	cc                                              	int3
10569bcf:	cc                                              	int3

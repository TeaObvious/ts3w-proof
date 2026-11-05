# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982630 (ConfigRegistry_GetValueAsString)
Paired Ghidra pseudocode: 10982630_ConfigRegistry_GetValueAsString.c
Window: [0x10982630, 0x10982670) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982630: 51 8b 0d 30 7f cb 10 85 c9 74 23 8b 54 24 0c 8d
10982640: 04 24 50 8b 44 24 0c 52 50 e8 e2 7e a0 ff 84 c0
10982650: 74 0c 8b 0c 24 51 ff 15 c4 b6 aa 10 59 c3 8b 54
10982660: 24 10 52 ff 15 c4 b6 aa 10 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10982630 <.text+0x981630>:
10982630:	51                                              	push   ecx
10982631:	8b 0d 30 7f cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7f30
10982637:	85 c9                                           	test   ecx,ecx
10982639:	74 23                                           	je     0x1098265e
1098263b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098263f:	8d 04 24                                        	lea    eax,[esp]
10982642:	50                                              	push   eax
10982643:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10982647:	52                                              	push   edx
10982648:	50                                              	push   eax
10982649:	e8 e2 7e a0 ff                                  	call   0x1038a530
1098264e:	84 c0                                           	test   al,al
10982650:	74 0c                                           	je     0x1098265e
10982652:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
10982655:	51                                              	push   ecx
10982656:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098265c:	59                                              	pop    ecx
1098265d:	c3                                              	ret
1098265e:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10982662:	52                                              	push   edx
10982663:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10982669:	59                                              	pop    ecx
1098266a:	c3                                              	ret
1098266b:	cc                                              	int3
1098266c:	cc                                              	int3
1098266d:	cc                                              	int3
1098266e:	cc                                              	int3
1098266f:	cc                                              	int3

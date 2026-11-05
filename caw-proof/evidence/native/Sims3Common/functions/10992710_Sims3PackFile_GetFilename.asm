# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992710 (Sims3PackFile_GetFilename)
Paired Ghidra pseudocode: 10992710_Sims3PackFile_GetFilename.c
Window: [0x10992710, 0x10992740) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992710: 8b 44 24 08 8b 4c 24 04 50 e8 42 1b e2 ff 85 c0
10992720: 74 0b 8b 40 28 50 ff 15 c4 b6 aa 10 c3 68 fc 24
10992730: b6 10 ff 15 c4 b6 aa 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992710 <.text+0x991710>:
10992710:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10992714:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10992718:	50                                              	push   eax
10992719:	e8 42 1b e2 ff                                  	call   0x107b4260
1099271e:	85 c0                                           	test   eax,eax
10992720:	74 0b                                           	je     0x1099272d
10992722:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
10992725:	50                                              	push   eax
10992726:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1099272c:	c3                                              	ret
1099272d:	68 fc 24 b6 10                                  	push   0x10b624fc
10992732:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10992738:	c3                                              	ret
10992739:	cc                                              	int3
1099273a:	cc                                              	int3
1099273b:	cc                                              	int3
1099273c:	cc                                              	int3
1099273d:	cc                                              	int3
1099273e:	cc                                              	int3
1099273f:	cc                                              	int3

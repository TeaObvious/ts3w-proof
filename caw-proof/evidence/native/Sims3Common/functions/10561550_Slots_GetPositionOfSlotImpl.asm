# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561550 (Slots_GetPositionOfSlotImpl)
Paired Ghidra pseudocode: 10561550_Slots_GetPositionOfSlotImpl.c
Window: [0x10561550, 0x10561590) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561550: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 83 ec 0c 50
10561560: 8b 44 24 1c 51 8b 4c 24 1c 52 50 51 8d 54 24 14
10561570: 52 e8 fa f8 ff ff 8b 10 8b 4c 24 28 89 11 8b 50
10561580: 04 8b 40 08 89 51 04 89 41 08 8b c1 83 c4 24 c3

LINEAR DISASSEMBLY
10561550 <.text+0x560550>:
10561550:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10561554:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10561558:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1056155c:	83 ec 0c                                        	sub    esp,0xc
1056155f:	50                                              	push   eax
10561560:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10561564:	51                                              	push   ecx
10561565:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10561569:	52                                              	push   edx
1056156a:	50                                              	push   eax
1056156b:	51                                              	push   ecx
1056156c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10561570:	52                                              	push   edx
10561571:	e8 fa f8 ff ff                                  	call   0x10560e70
10561576:	8b 10                                           	mov    edx,DWORD PTR [eax]
10561578:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1056157c:	89 11                                           	mov    DWORD PTR [ecx],edx
1056157e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10561581:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10561584:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10561587:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
1056158a:	8b c1                                           	mov    eax,ecx
1056158c:	83 c4 24                                        	add    esp,0x24
1056158f:	c3                                              	ret

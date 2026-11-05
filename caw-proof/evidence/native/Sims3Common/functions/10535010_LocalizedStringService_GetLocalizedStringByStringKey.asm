# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535010 (LocalizedStringService_GetLocalizedStringByStringKey)
Paired Ghidra pseudocode: 10535010_LocalizedStringService_GetLocalizedStringByStringKey.c
Window: [0x10535010, 0x10535040) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535010: e8 0b 61 02 00 8b 4c 24 04 8b 10 8b 52 58 51 8b
10535020: c8 ff d2 50 e8 27 02 e6 ff 8b c8 e8 30 1c e6 ff
10535030: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535010 <.text+0x534010>:
10535010:	e8 0b 61 02 00                                  	call   0x1055b120
10535015:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10535019:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053501b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1053501e:	51                                              	push   ecx
1053501f:	8b c8                                           	mov    ecx,eax
10535021:	ff d2                                           	call   edx
10535023:	50                                              	push   eax
10535024:	e8 27 02 e6 ff                                  	call   0x10395250
10535029:	8b c8                                           	mov    ecx,eax
1053502b:	e8 30 1c e6 ff                                  	call   0x10396c60
10535030:	c3                                              	ret
10535031:	cc                                              	int3
10535032:	cc                                              	int3
10535033:	cc                                              	int3
10535034:	cc                                              	int3
10535035:	cc                                              	int3
10535036:	cc                                              	int3
10535037:	cc                                              	int3
10535038:	cc                                              	int3
10535039:	cc                                              	int3
1053503a:	cc                                              	int3
1053503b:	cc                                              	int3
1053503c:	cc                                              	int3
1053503d:	cc                                              	int3
1053503e:	cc                                              	int3
1053503f:	cc                                              	int3

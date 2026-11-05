# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535040 (LocalizedStringService_GetLocalizedStringByString)
Paired Ghidra pseudocode: 10535040_LocalizedStringService_GetLocalizedStringByString.c
Window: [0x10535040, 0x10535070) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535040: e8 db 60 02 00 8b 4c 24 04 8b 10 8b 52 58 51 8b
10535050: c8 ff d2 50 e8 f7 01 e6 ff 8b c8 e8 50 1c e6 ff
10535060: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535040 <.text+0x534040>:
10535040:	e8 db 60 02 00                                  	call   0x1055b120
10535045:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10535049:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053504b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1053504e:	51                                              	push   ecx
1053504f:	8b c8                                           	mov    ecx,eax
10535051:	ff d2                                           	call   edx
10535053:	50                                              	push   eax
10535054:	e8 f7 01 e6 ff                                  	call   0x10395250
10535059:	8b c8                                           	mov    ecx,eax
1053505b:	e8 50 1c e6 ff                                  	call   0x10396cb0
10535060:	c3                                              	ret
10535061:	cc                                              	int3
10535062:	cc                                              	int3
10535063:	cc                                              	int3
10535064:	cc                                              	int3
10535065:	cc                                              	int3
10535066:	cc                                              	int3
10535067:	cc                                              	int3
10535068:	cc                                              	int3
10535069:	cc                                              	int3
1053506a:	cc                                              	int3
1053506b:	cc                                              	int3
1053506c:	cc                                              	int3
1053506d:	cc                                              	int3
1053506e:	cc                                              	int3
1053506f:	cc                                              	int3

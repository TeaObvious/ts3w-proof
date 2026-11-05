# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567130 (StopWatch_StartStopwatch)
Paired Ghidra pseudocode: 10567130_StopWatch_StartStopwatch.c
Window: [0x10567130, 0x10567170) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567130: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10567140: 10 75 1e e8 d8 3f ff ff 8b 10 8b c8 8b 82 cc 00
10567150: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 af 51 aa
10567160: ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567130 <.text+0x566130>:
10567130:	56                                              	push   esi
10567131:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567135:	8b c6                                           	mov    eax,esi
10567137:	25 00 00 00 ff                                  	and    eax,0xff000000
1056713c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10567141:	75 1e                                           	jne    0x10567161
10567143:	e8 d8 3f ff ff                                  	call   0x1055b120
10567148:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056714a:	8b c8                                           	mov    ecx,eax
1056714c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567152:	56                                              	push   esi
10567153:	ff d0                                           	call   eax
10567155:	85 c0                                           	test   eax,eax
10567157:	74 08                                           	je     0x10567161
10567159:	8b c8                                           	mov    ecx,eax
1056715b:	5e                                              	pop    esi
1056715c:	e9 af 51 aa ff                                  	jmp    0x1000c310
10567161:	5e                                              	pop    esi
10567162:	c3                                              	ret
10567163:	cc                                              	int3
10567164:	cc                                              	int3
10567165:	cc                                              	int3
10567166:	cc                                              	int3
10567167:	cc                                              	int3
10567168:	cc                                              	int3
10567169:	cc                                              	int3
1056716a:	cc                                              	int3
1056716b:	cc                                              	int3
1056716c:	cc                                              	int3
1056716d:	cc                                              	int3
1056716e:	cc                                              	int3
1056716f:	cc                                              	int3

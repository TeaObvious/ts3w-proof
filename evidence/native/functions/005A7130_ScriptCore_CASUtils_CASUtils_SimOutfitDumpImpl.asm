# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7130 (ScriptCore.CASUtils::CASUtils_SimOutfitDumpImpl)
Paired Ghidra pseudocode: 005A7130_ScriptCore_CASUtils_CASUtils_SimOutfitDumpImpl.c
Window: [0x005a7130, 0x005a7170) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7130: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7140: 35 75 1e e8 48 22 1c 00 8b 10 8b c8 8b 82 cc 00
005a7150: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 6f e9 03
005a7160: 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7130 <.text+0x1a6130>:
  5a7130:	56                                              	push   esi
  5a7131:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7135:	8b c6                                           	mov    eax,esi
  5a7137:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a713c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7141:	75 1e                                           	jne    0x5a7161
  5a7143:	e8 48 22 1c 00                                  	call   0x769390
  5a7148:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a714a:	8b c8                                           	mov    ecx,eax
  5a714c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7152:	56                                              	push   esi
  5a7153:	ff d0                                           	call   eax
  5a7155:	85 c0                                           	test   eax,eax
  5a7157:	74 08                                           	je     0x5a7161
  5a7159:	8b c8                                           	mov    ecx,eax
  5a715b:	5e                                              	pop    esi
  5a715c:	e9 6f e9 03 00                                  	jmp    0x5e5ad0
  5a7161:	5e                                              	pop    esi
  5a7162:	c3                                              	ret
  5a7163:	cc                                              	int3
  5a7164:	cc                                              	int3
  5a7165:	cc                                              	int3
  5a7166:	cc                                              	int3
  5a7167:	cc                                              	int3
  5a7168:	cc                                              	int3
  5a7169:	cc                                              	int3
  5a716a:	cc                                              	int3
  5a716b:	cc                                              	int3
  5a716c:	cc                                              	int3
  5a716d:	cc                                              	int3
  5a716e:	cc                                              	int3
  5a716f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074a970 (ScriptCore.Random::Random_NextDoubleImpl)
Paired Ghidra pseudocode: 0074A970_ScriptCore_Random_Random_NextDoubleImpl.c
Window: [0x0074a970, 0x0074a990) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074a990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074a970: e8 1b ea 01 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
0074a980: d0 8b 10 8b c8 8b 42 28 ff e0 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074a970 <.text+0x349970>:
  74a970:	e8 1b ea 01 00                                  	call   0x769390
  74a975:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74a977:	8b c8                                           	mov    ecx,eax
  74a979:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  74a97f:	ff d0                                           	call   eax
  74a981:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74a983:	8b c8                                           	mov    ecx,eax
  74a985:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  74a988:	ff e0                                           	jmp    eax
  74a98a:	cc                                              	int3
  74a98b:	cc                                              	int3
  74a98c:	cc                                              	int3
  74a98d:	cc                                              	int3
  74a98e:	cc                                              	int3
  74a98f:	cc                                              	int3

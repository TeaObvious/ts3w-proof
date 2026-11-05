# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007439b0 (ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedStringByStringKey)
Paired Ghidra pseudocode: 007439B0_ScriptCore_LocalizedStringService_LocalizedStringService_GetLocalizedStringByStringKey.c
Window: [0x007439b0, 0x007439e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007439e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007439b0: e8 db 59 02 00 8b 4c 24 04 8b 10 8b 52 58 51 8b
007439c0: c8 ff d2 50 e8 e7 7d e5 ff 8b c8 e8 d0 97 e5 ff
007439d0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007439b0 <.text+0x3429b0>:
  7439b0:	e8 db 59 02 00                                  	call   0x769390
  7439b5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7439b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7439bb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7439be:	51                                              	push   ecx
  7439bf:	8b c8                                           	mov    ecx,eax
  7439c1:	ff d2                                           	call   edx
  7439c3:	50                                              	push   eax
  7439c4:	e8 e7 7d e5 ff                                  	call   0x59b7b0
  7439c9:	8b c8                                           	mov    ecx,eax
  7439cb:	e8 d0 97 e5 ff                                  	call   0x59d1a0
  7439d0:	c3                                              	ret
  7439d1:	cc                                              	int3
  7439d2:	cc                                              	int3
  7439d3:	cc                                              	int3
  7439d4:	cc                                              	int3
  7439d5:	cc                                              	int3
  7439d6:	cc                                              	int3
  7439d7:	cc                                              	int3
  7439d8:	cc                                              	int3
  7439d9:	cc                                              	int3
  7439da:	cc                                              	int3
  7439db:	cc                                              	int3
  7439dc:	cc                                              	int3
  7439dd:	cc                                              	int3
  7439de:	cc                                              	int3
  7439df:	cc                                              	int3

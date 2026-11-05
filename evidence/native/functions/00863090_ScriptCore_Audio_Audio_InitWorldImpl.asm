# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863090 (ScriptCore.Audio::Audio_InitWorldImpl)
Paired Ghidra pseudocode: 00863090_ScriptCore_Audio_Audio_InitWorldImpl.c
Window: [0x00863090, 0x008630b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x008630b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863090: a1 40 9c 1d 01 85 c0 74 14 8d 88 30 84 fd ff 85
008630a0: c9 74 0a 8b 01 8b 90 48 02 00 00 ff e2 32 c0 c3

LINEAR DISASSEMBLY
00863090 <.text+0x462090>:
  863090:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  863095:	85 c0                                           	test   eax,eax
  863097:	74 14                                           	je     0x8630ad
  863099:	8d 88 30 84 fd ff                               	lea    ecx,[eax-0x27bd0]
  86309f:	85 c9                                           	test   ecx,ecx
  8630a1:	74 0a                                           	je     0x8630ad
  8630a3:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  8630a5:	8b 90 48 02 00 00                               	mov    edx,DWORD PTR [eax+0x248]
  8630ab:	ff e2                                           	jmp    edx
  8630ad:	32 c0                                           	xor    al,al
  8630af:	c3                                              	ret

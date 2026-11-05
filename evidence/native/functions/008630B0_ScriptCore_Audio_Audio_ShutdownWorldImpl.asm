# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008630b0 (ScriptCore.Audio::Audio_ShutdownWorldImpl)
Paired Ghidra pseudocode: 008630B0_ScriptCore_Audio_Audio_ShutdownWorldImpl.c
Window: [0x008630b0, 0x008630d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x008630d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008630b0: a1 40 9c 1d 01 85 c0 74 14 8d 88 30 84 fd ff 85
008630c0: c9 74 0a 8b 01 8b 90 4c 02 00 00 ff e2 c3 cc cc

LINEAR DISASSEMBLY
008630b0 <.text+0x4620b0>:
  8630b0:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  8630b5:	85 c0                                           	test   eax,eax
  8630b7:	74 14                                           	je     0x8630cd
  8630b9:	8d 88 30 84 fd ff                               	lea    ecx,[eax-0x27bd0]
  8630bf:	85 c9                                           	test   ecx,ecx
  8630c1:	74 0a                                           	je     0x8630cd
  8630c3:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  8630c5:	8b 90 4c 02 00 00                               	mov    edx,DWORD PTR [eax+0x24c]
  8630cb:	ff e2                                           	jmp    edx
  8630cd:	c3                                              	ret
  8630ce:	cc                                              	int3
  8630cf:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740080 (ScriptCore.DataFactory::DataFactory_ReleasePrototypeResourceImpl)
Paired Ghidra pseudocode: 00740080_ScriptCore_DataFactory_DataFactory_ReleasePrototypeResourceImpl.c
Window: [0x00740080, 0x007400a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007400a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740080: e8 0b 93 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
00740090: d0 8b 4c 24 04 8b 10 8b 52 3c 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
00740080 <.text+0x33f080>:
  740080:	e8 0b 93 02 00                                  	call   0x769390
  740085:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740087:	8b c8                                           	mov    ecx,eax
  740089:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  74008f:	ff d0                                           	call   eax
  740091:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  740095:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740097:	8b 52 3c                                        	mov    edx,DWORD PTR [edx+0x3c]
  74009a:	51                                              	push   ecx
  74009b:	8b c8                                           	mov    ecx,eax
  74009d:	ff d2                                           	call   edx
  74009f:	c3                                              	ret

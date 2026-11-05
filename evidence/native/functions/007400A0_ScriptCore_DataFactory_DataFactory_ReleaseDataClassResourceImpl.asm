# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007400a0 (ScriptCore.DataFactory::DataFactory_ReleaseDataClassResourceImpl)
Paired Ghidra pseudocode: 007400A0_ScriptCore_DataFactory_DataFactory_ReleaseDataClassResourceImpl.c
Window: [0x007400a0, 0x007400c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007400c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007400a0: e8 eb 92 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
007400b0: d0 8b 4c 24 04 8b 10 8b 52 40 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
007400a0 <.text+0x33f0a0>:
  7400a0:	e8 eb 92 02 00                                  	call   0x769390
  7400a5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7400a7:	8b c8                                           	mov    ecx,eax
  7400a9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  7400af:	ff d0                                           	call   eax
  7400b1:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7400b5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7400b7:	8b 52 40                                        	mov    edx,DWORD PTR [edx+0x40]
  7400ba:	51                                              	push   ecx
  7400bb:	8b c8                                           	mov    ecx,eax
  7400bd:	ff d2                                           	call   edx
  7400bf:	c3                                              	ret

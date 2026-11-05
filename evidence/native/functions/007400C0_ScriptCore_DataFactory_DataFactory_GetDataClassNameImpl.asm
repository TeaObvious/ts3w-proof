# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007400c0 (ScriptCore.DataFactory::DataFactory_GetDataClassNameImpl)
Paired Ghidra pseudocode: 007400C0_ScriptCore_DataFactory_DataFactory_GetDataClassNameImpl.c
Window: [0x007400c0, 0x007400e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007400e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007400c0: e8 cb 92 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
007400d0: d0 8b 4c 24 04 8b 10 8b 52 44 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
007400c0 <.text+0x33f0c0>:
  7400c0:	e8 cb 92 02 00                                  	call   0x769390
  7400c5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7400c7:	8b c8                                           	mov    ecx,eax
  7400c9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  7400cf:	ff d0                                           	call   eax
  7400d1:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7400d5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7400d7:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
  7400da:	51                                              	push   ecx
  7400db:	8b c8                                           	mov    ecx,eax
  7400dd:	ff d2                                           	call   edx
  7400df:	c3                                              	ret

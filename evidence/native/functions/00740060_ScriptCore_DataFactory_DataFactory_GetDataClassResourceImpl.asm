# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740060 (ScriptCore.DataFactory::DataFactory_GetDataClassResourceImpl)
Paired Ghidra pseudocode: 00740060_ScriptCore_DataFactory_DataFactory_GetDataClassResourceImpl.c
Window: [0x00740060, 0x00740080) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740060: e8 2b 93 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
00740070: d0 8b 4c 24 04 8b 10 8b 52 38 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
00740060 <.text+0x33f060>:
  740060:	e8 2b 93 02 00                                  	call   0x769390
  740065:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740067:	8b c8                                           	mov    ecx,eax
  740069:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  74006f:	ff d0                                           	call   eax
  740071:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  740075:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740077:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
  74007a:	51                                              	push   ecx
  74007b:	8b c8                                           	mov    ecx,eax
  74007d:	ff d2                                           	call   edx
  74007f:	c3                                              	ret

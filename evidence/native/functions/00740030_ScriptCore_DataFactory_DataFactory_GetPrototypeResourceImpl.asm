# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740030 (ScriptCore.DataFactory::DataFactory_GetPrototypeResourceImpl)
Paired Ghidra pseudocode: 00740030_ScriptCore_DataFactory_DataFactory_GetPrototypeResourceImpl.c
Window: [0x00740030, 0x00740060) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740030: e8 5b 93 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
00740040: d0 8b 4c 24 10 8b 10 8b 52 34 51 8b 4c 24 10 51
00740050: 8b 4c 24 10 51 8b 4c 24 10 51 8b c8 ff d2 c3 cc

LINEAR DISASSEMBLY
00740030 <.text+0x33f030>:
  740030:	e8 5b 93 02 00                                  	call   0x769390
  740035:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740037:	8b c8                                           	mov    ecx,eax
  740039:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  74003f:	ff d0                                           	call   eax
  740041:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  740045:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740047:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  74004a:	51                                              	push   ecx
  74004b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  74004f:	51                                              	push   ecx
  740050:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  740054:	51                                              	push   ecx
  740055:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  740059:	51                                              	push   ecx
  74005a:	8b c8                                           	mov    ecx,eax
  74005c:	ff d2                                           	call   edx
  74005e:	c3                                              	ret
  74005f:	cc                                              	int3

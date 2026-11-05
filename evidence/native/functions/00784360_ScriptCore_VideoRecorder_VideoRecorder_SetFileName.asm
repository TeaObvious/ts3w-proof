# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784360 (ScriptCore.VideoRecorder::VideoRecorder_SetFileName)
Paired Ghidra pseudocode: 00784360_ScriptCore_VideoRecorder_VideoRecorder_SetFileName.c
Window: [0x00784360, 0x00784390) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784390
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784360: 56 e8 2a bc 25 00 8b f0 85 f6 74 1f 57 e8 1e 50
00784370: fe ff 8b 4c 24 0c 8b 10 8b 52 58 8b 3e 51 8b c8
00784380: ff d2 50 8b 47 0c 8b ce ff d0 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
00784360 <.text+0x383360>:
  784360:	56                                              	push   esi
  784361:	e8 2a bc 25 00                                  	call   0x9dff90
  784366:	8b f0                                           	mov    esi,eax
  784368:	85 f6                                           	test   esi,esi
  78436a:	74 1f                                           	je     0x78438b
  78436c:	57                                              	push   edi
  78436d:	e8 1e 50 fe ff                                  	call   0x769390
  784372:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  784376:	8b 10                                           	mov    edx,DWORD PTR [eax]
  784378:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  78437b:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  78437d:	51                                              	push   ecx
  78437e:	8b c8                                           	mov    ecx,eax
  784380:	ff d2                                           	call   edx
  784382:	50                                              	push   eax
  784383:	8b 47 0c                                        	mov    eax,DWORD PTR [edi+0xc]
  784386:	8b ce                                           	mov    ecx,esi
  784388:	ff d0                                           	call   eax
  78438a:	5f                                              	pop    edi
  78438b:	5e                                              	pop    esi
  78438c:	c3                                              	ret
  78438d:	cc                                              	int3
  78438e:	cc                                              	int3
  78438f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00742750 (ScriptCore.EventQueue::EventQueue_ReleaseEventQueueImpl)
Paired Ghidra pseudocode: 00742750_ScriptCore_EventQueue_EventQueue_ReleaseEventQueueImpl.c
Window: [0x00742750, 0x007427a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007427a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00742750: 56 e8 3a 6c 02 00 8b f0 85 f6 74 42 8b 06 8b 90
00742760: 18 01 00 00 8b ce ff d2 8b 44 24 08 8b c8 81 e1
00742770: 00 00 00 ff 81 f9 00 00 00 22 75 22 8b 16 50 8b
00742780: 82 d8 00 00 00 8b ce ff d0 85 c0 74 11 8b 10 c7
00742790: 40 08 00 00 00 00 8b c8 8b 42 04 5e ff e0 5e c3

LINEAR DISASSEMBLY
00742750 <.text+0x341750>:
  742750:	56                                              	push   esi
  742751:	e8 3a 6c 02 00                                  	call   0x769390
  742756:	8b f0                                           	mov    esi,eax
  742758:	85 f6                                           	test   esi,esi
  74275a:	74 42                                           	je     0x74279e
  74275c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  74275e:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  742764:	8b ce                                           	mov    ecx,esi
  742766:	ff d2                                           	call   edx
  742768:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74276c:	8b c8                                           	mov    ecx,eax
  74276e:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  742774:	81 f9 00 00 00 22                               	cmp    ecx,0x22000000
  74277a:	75 22                                           	jne    0x74279e
  74277c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74277e:	50                                              	push   eax
  74277f:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  742785:	8b ce                                           	mov    ecx,esi
  742787:	ff d0                                           	call   eax
  742789:	85 c0                                           	test   eax,eax
  74278b:	74 11                                           	je     0x74279e
  74278d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74278f:	c7 40 08 00 00 00 00                            	mov    DWORD PTR [eax+0x8],0x0
  742796:	8b c8                                           	mov    ecx,eax
  742798:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74279b:	5e                                              	pop    esi
  74279c:	ff e0                                           	jmp    eax
  74279e:	5e                                              	pop    esi
  74279f:	c3                                              	ret

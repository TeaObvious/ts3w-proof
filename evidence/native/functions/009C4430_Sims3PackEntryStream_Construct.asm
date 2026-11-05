# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009c4430 (Sims3PackEntryStream_Construct)
Full Ghidra function-body envelope: 0x009c4430..0x009c4476 (exclusive end)
Ghidra body ranges: [[009c4430, 009c4475]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c4430 <.text+0x5c3430>:
  9c4430:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  9c4434:	8b c1                                           	mov    eax,ecx
  9c4436:	c7 40 04 a4 bb 02 01                            	mov    DWORD PTR [eax+0x4],0x102bba4
  9c443d:	33 c9                                           	xor    ecx,ecx
  9c443f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  9c4442:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  9c4445:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  9c4449:	89 48 10                                        	mov    DWORD PTR [eax+0x10],ecx
  9c444c:	89 48 20                                        	mov    DWORD PTR [eax+0x20],ecx
  9c444f:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  9c4453:	89 50 18                                        	mov    DWORD PTR [eax+0x18],edx
  9c4456:	c7 00 1c 0a 05 01                               	mov    DWORD PTR [eax],0x1050a1c
  9c445c:	c7 40 04 18 0a 05 01                            	mov    DWORD PTR [eax+0x4],0x1050a18
  9c4463:	8b 51 24                                        	mov    edx,DWORD PTR [ecx+0x24]
  9c4466:	03 54 24 0c                                     	add    edx,DWORD PTR [esp+0xc]
  9c446a:	89 50 14                                        	mov    DWORD PTR [eax+0x14],edx
  9c446d:	8b 49 20                                        	mov    ecx,DWORD PTR [ecx+0x20]
  9c4470:	89 48 1c                                        	mov    DWORD PTR [eax+0x1c],ecx
  9c4473:	c2 10 00                                        	ret    0x10

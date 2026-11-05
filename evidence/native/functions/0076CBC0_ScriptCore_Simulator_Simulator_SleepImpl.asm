# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cbc0 (ScriptCore.Simulator::Simulator_SleepImpl)
Paired Ghidra pseudocode: 0076CBC0_ScriptCore_Simulator_Simulator_SleepImpl.c
Window: [0x0076cbc0, 0x0076cbf0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cbf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cbc0: 56 8b 74 24 08 81 fe 17 fc ff ff 72 05 be 17 fc
0076cbd0: ff ff e8 b9 c7 ff ff 8b 10 8b c8 8b 82 7c 01 00
0076cbe0: 00 ff d0 8b 10 8b c8 8b 42 20 56 ff d0 5e c3 cc

LINEAR DISASSEMBLY
0076cbc0 <.text+0x36bbc0>:
  76cbc0:	56                                              	push   esi
  76cbc1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  76cbc5:	81 fe 17 fc ff ff                               	cmp    esi,0xfffffc17
  76cbcb:	72 05                                           	jb     0x76cbd2
  76cbcd:	be 17 fc ff ff                                  	mov    esi,0xfffffc17
  76cbd2:	e8 b9 c7 ff ff                                  	call   0x769390
  76cbd7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cbd9:	8b c8                                           	mov    ecx,eax
  76cbdb:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  76cbe1:	ff d0                                           	call   eax
  76cbe3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cbe5:	8b c8                                           	mov    ecx,eax
  76cbe7:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  76cbea:	56                                              	push   esi
  76cbeb:	ff d0                                           	call   eax
  76cbed:	5e                                              	pop    esi
  76cbee:	c3                                              	ret
  76cbef:	cc                                              	int3

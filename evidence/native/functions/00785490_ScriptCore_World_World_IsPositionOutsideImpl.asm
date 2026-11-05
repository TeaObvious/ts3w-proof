# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00785490,0x007854a0); analyst name ScriptCore.World::World_IsPositionOutsideImpl.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00785490 <.text+0x384490>:
  785490:	8d 44 24 04          	lea    eax,[esp+0x4]
  785494:	6a 00                	push   0x0
  785496:	50                   	push   eax
  785497:	e8 b4 d8 37 00       	call   0xb02d50
  78549c:	83 c4 08             	add    esp,0x8
  78549f:	c3                   	ret

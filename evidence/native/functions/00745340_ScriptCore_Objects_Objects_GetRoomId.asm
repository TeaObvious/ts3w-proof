# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00745340,0x00745374); analyst name ScriptCore.Objects::Objects_GetRoomId.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00745340 <.text+0x344340>:
  745340:	e8 2b 22 1f 00       	call   0x937570
  745345:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  745349:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  74534d:	51                   	push   ecx
  74534e:	52                   	push   edx
  74534f:	8b c8                	mov    ecx,eax
  745351:	e8 2a 2c 1f 00       	call   0x937f80
  745356:	85 c0                	test   eax,eax
  745358:	74 16                	je     0x745370
  74535a:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  745360:	51                   	push   ecx
  745361:	8b c8                	mov    ecx,eax
  745363:	e8 f8 ee 1e 00       	call   0x934260
  745368:	85 c0                	test   eax,eax
  74536a:	74 04                	je     0x745370
  74536c:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
  74536f:	c3                   	ret
  745370:	83 c8 ff             	or     eax,0xffffffff
  745373:	c3                   	ret

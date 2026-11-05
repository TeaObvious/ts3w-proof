# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00ec1330,0x00ec1341); analyst name ScriptCore.GameUtils::GameUtils_TransitionToNotInWorldImpl.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ec1330 <.text+0xac0330>:
  ec1330:	a1 ac 07 20 01       	mov    eax,ds:0x12007ac
  ec1335:	85 c0                	test   eax,eax
  ec1337:	74 07                	je     0xec1340
  ec1339:	50                   	push   eax
  ec133a:	e8 71 5e 00 00       	call   0xec71b0
  ec133f:	59                   	pop    ecx
  ec1340:	c3                   	ret

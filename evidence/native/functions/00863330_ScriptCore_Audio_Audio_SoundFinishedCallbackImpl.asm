# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00863330 (ScriptCore.Audio::Audio_SoundFinishedCallbackImpl)
Full Ghidra function-body envelope: 0x00863330..0x00863353 (exclusive end)
Ghidra body ranges: [[00863330, 00863352]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

00863330 <.text+0x462330>:
  863330:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  863335:	85 c0                                           	test   eax,eax
  863337:	74 19                                           	je     0x863352
  863339:	8d 88 30 84 fd ff                               	lea    ecx,[eax-0x27bd0]
  86333f:	85 c9                                           	test   ecx,ecx
  863341:	74 0f                                           	je     0x863352
  863343:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  863347:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  86334b:	50                                              	push   eax
  86334c:	52                                              	push   edx
  86334d:	e8 6e 2f 00 00                                  	call   0x8662c0
  863352:	c3                                              	ret

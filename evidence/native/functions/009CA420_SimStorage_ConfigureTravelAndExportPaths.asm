# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009ca420,0x009ca485); analyst name SimStorage_ConfigureTravelAndExportPaths.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009ca420 <.text+0x5c9420>:
  9ca420:	53                   	push   ebx
  9ca421:	56                   	push   esi
  9ca422:	57                   	push   edi
  9ca423:	6a 00                	push   0x0
  9ca425:	6a 00                	push   0x0
  9ca427:	8b f1                	mov    esi,ecx
  9ca429:	6a 00                	push   0x0
  9ca42b:	8d 86 a8 00 00 00    	lea    eax,[esi+0xa8]
  9ca431:	50                   	push   eax
  9ca432:	e8 49 fe ff ff       	call   0x9ca280
  9ca437:	8d be 10 01 00 00    	lea    edi,[esi+0x110]
  9ca43d:	57                   	push   edi
  9ca43e:	ff 15 2c 61 f9 00    	call   DWORD PTR ds:0xf9612c
  9ca444:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  9ca448:	6a 01                	push   0x1
  9ca44a:	68 94 19 05 01       	push   0x1051994
  9ca44f:	53                   	push   ebx
  9ca450:	8d 4e 40             	lea    ecx,[esi+0x40]
  9ca453:	51                   	push   ecx
  9ca454:	8b ce                	mov    ecx,esi
  9ca456:	e8 25 fe ff ff       	call   0x9ca280
  9ca45b:	57                   	push   edi
  9ca45c:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  9ca462:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  9ca466:	6a 00                	push   0x0
  9ca468:	52                   	push   edx
  9ca469:	53                   	push   ebx
  9ca46a:	8d 46 74             	lea    eax,[esi+0x74]
  9ca46d:	50                   	push   eax
  9ca46e:	8b ce                	mov    ecx,esi
  9ca470:	e8 0b fe ff ff       	call   0x9ca280
  9ca475:	8a 4c 24 18          	mov    cl,BYTE PTR [esp+0x18]
  9ca479:	5f                   	pop    edi
  9ca47a:	88 8e 05 01 00 00    	mov    BYTE PTR [esi+0x105],cl
  9ca480:	5e                   	pop    esi
  9ca481:	5b                   	pop    ebx
  9ca482:	c2 0c 00             	ret    0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0099a9d0,0x0099a9e9); analyst name DownloadContent_GenerateSimRecordKey.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0099a9d0 <.text+0x5999d0>:
  99a9d0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  99a9d4:	56                   	push   esi
  99a9d5:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  99a9d9:	6a 00                	push   0x0
  99a9db:	50                   	push   eax
  99a9dc:	56                   	push   esi
  99a9dd:	e8 ce f8 ff ff       	call   0x99a2b0
  99a9e2:	83 c4 0c             	add    esp,0xc
  99a9e5:	8b c6                	mov    eax,esi
  99a9e7:	5e                   	pop    esi
  99a9e8:	c3                   	ret

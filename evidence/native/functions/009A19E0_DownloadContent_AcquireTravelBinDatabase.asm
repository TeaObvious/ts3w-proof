# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009a19e0,0x009a1a10); analyst name DownloadContent_AcquireTravelBinDatabase.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009a19e0 <.text+0x5a09e0>:
  9a19e0:	83 b9 88 00 00 00 00 	cmp    DWORD PTR [ecx+0x88],0x0
  9a19e7:	56                   	push   esi
  9a19e8:	8d b1 88 00 00 00    	lea    esi,[ecx+0x88]
  9a19ee:	75 06                	jne    0x9a19f6
  9a19f0:	56                   	push   esi
  9a19f1:	e8 7a fe ff ff       	call   0x9a1870
  9a19f6:	8b 36                	mov    esi,DWORD PTR [esi]
  9a19f8:	85 f6                	test   esi,esi
  9a19fa:	74 10                	je     0x9a1a0c
  9a19fc:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  9a1a00:	89 30                	mov    DWORD PTR [eax],esi
  9a1a02:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  9a1a05:	8b 02                	mov    eax,DWORD PTR [edx]
  9a1a07:	8d 4e 04             	lea    ecx,[esi+0x4]
  9a1a0a:	ff d0                	call   eax
  9a1a0c:	5e                   	pop    esi
  9a1a0d:	c2 04 00             	ret    0x4

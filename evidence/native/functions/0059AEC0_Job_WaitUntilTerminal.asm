# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059aec0..0059aef5; Job_WaitUntilTerminal
  59aec0:	85 c9                	test   ecx,ecx
  59aec2:	53                   	push   ebx
  59aec3:	56                   	push   esi
  59aec4:	57                   	push   edi
  59aec5:	74 07                	je     0x59aece
  59aec7:	8d 59 f8             	lea    ebx,[ecx-0x8]
  59aeca:	8b c3                	mov    eax,ebx
  59aecc:	eb 04                	jmp    0x59aed2
  59aece:	33 db                	xor    ebx,ebx
  59aed0:	33 c0                	xor    eax,eax
  59aed2:	8b 70 34             	mov    esi,DWORD PTR [eax+0x34]
  59aed5:	8d 7e 08             	lea    edi,[esi+0x8]
  59aed8:	68 ac a7 fd 00       	push   0xfda7ac
  59aedd:	8b cf                	mov    ecx,edi
  59aedf:	e8 1c 6d f4 ff       	call   0x4e1c00
  59aee4:	53                   	push   ebx
  59aee5:	8b ce                	mov    ecx,esi
  59aee7:	e8 f4 fc ff ff       	call   0x59abe0
  59aeec:	8b cf                	mov    ecx,edi
  59aeee:	5f                   	pop    edi
  59aeef:	5e                   	pop    esi
  59aef0:	5b                   	pop    ebx
  59aef1:	e9 ca 6d f4 ff       	jmp    0x4e1cc0

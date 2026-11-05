# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00582bc0, 0x00582bef); analyst name AnimationTrackManager_StopAll.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00582bc0 <.text+0x181bc0>:
  582bc0:	53                   	push   ebx
  582bc1:	56                   	push   esi
  582bc2:	57                   	push   edi
  582bc3:	8b f9                	mov    edi,ecx
  582bc5:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  582bc8:	8d 5f 04             	lea    ebx,[edi+0x4]
  582bcb:	3b f3                	cmp    esi,ebx
  582bcd:	74 1c                	je     0x582beb
  582bcf:	90                   	nop
  582bd0:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  582bd3:	85 c9                	test   ecx,ecx
  582bd5:	74 0e                	je     0x582be5
  582bd7:	e8 54 50 fe ff       	call   0x567c30
  582bdc:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  582bdf:	57                   	push   edi
  582be0:	e8 7b 40 fe ff       	call   0x566c60
  582be5:	8b 36                	mov    esi,DWORD PTR [esi]
  582be7:	3b f3                	cmp    esi,ebx
  582be9:	75 e5                	jne    0x582bd0
  582beb:	5f                   	pop    edi
  582bec:	5e                   	pop    esi
  582bed:	5b                   	pop    ebx
  582bee:	c3                   	ret

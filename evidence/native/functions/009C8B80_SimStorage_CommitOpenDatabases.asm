# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009c8b80,0x009c8bac); analyst name SimStorage_CommitOpenDatabases.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c8b80 <.text+0x5c7b80>:
  9c8b80:	56                   	push   esi
  9c8b81:	8b f1                	mov    esi,ecx
  9c8b83:	83 7e 70 00          	cmp    DWORD PTR [esi+0x70],0x0
  9c8b87:	74 0a                	je     0x9c8b93
  9c8b89:	8b 4e 70             	mov    ecx,DWORD PTR [esi+0x70]
  9c8b8c:	8b 01                	mov    eax,DWORD PTR [ecx]
  9c8b8e:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  9c8b91:	ff d2                	call   edx
  9c8b93:	83 be a4 00 00 00 00 	cmp    DWORD PTR [esi+0xa4],0x0
  9c8b9a:	74 0e                	je     0x9c8baa
  9c8b9c:	8b 8e a4 00 00 00    	mov    ecx,DWORD PTR [esi+0xa4]
  9c8ba2:	8b 01                	mov    eax,DWORD PTR [ecx]
  9c8ba4:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  9c8ba7:	5e                   	pop    esi
  9c8ba8:	ff e2                	jmp    edx
  9c8baa:	5e                   	pop    esi
  9c8bab:	c3                   	ret

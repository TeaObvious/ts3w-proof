# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074ff70, 0x0074ffa5); analyst name RouteGoal_GetFirstTargetObjectId.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074ff70 <.text+0x34ef70>:
  74ff70:	56                   	push   esi
  74ff71:	8b 71 18             	mov    esi,DWORD PTR [ecx+0x18]
  74ff74:	57                   	push   edi
  74ff75:	8d 79 18             	lea    edi,[ecx+0x18]
  74ff78:	3b f7                	cmp    esi,edi
  74ff7a:	74 22                	je     0x74ff9e
  74ff7c:	8d 64 24 00          	lea    esp,[esp+0x0]
  74ff80:	85 f6                	test   esi,esi
  74ff82:	74 05                	je     0x74ff89
  74ff84:	8d 4e fc             	lea    ecx,[esi-0x4]
  74ff87:	eb 02                	jmp    0x74ff8b
  74ff89:	33 c9                	xor    ecx,ecx
  74ff8b:	8b 01                	mov    eax,DWORD PTR [ecx]
  74ff8d:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  74ff90:	ff d2                	call   edx
  74ff92:	8b c8                	mov    ecx,eax
  74ff94:	0b ca                	or     ecx,edx
  74ff96:	75 0a                	jne    0x74ffa2
  74ff98:	8b 36                	mov    esi,DWORD PTR [esi]
  74ff9a:	3b f7                	cmp    esi,edi
  74ff9c:	75 e2                	jne    0x74ff80
  74ff9e:	33 c0                	xor    eax,eax
  74ffa0:	33 d2                	xor    edx,edx
  74ffa2:	5f                   	pop    edi
  74ffa3:	5e                   	pop    esi
  74ffa4:	c3                   	ret

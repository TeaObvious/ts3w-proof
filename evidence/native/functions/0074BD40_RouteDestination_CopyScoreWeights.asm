# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074bd40, 0x0074bdd6); analyst name RouteDestination_CopyScoreWeights.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074bd40 <.text+0x34ad40>:
  74bd40:	55                   	push   ebp
  74bd41:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
  74bd45:	85 ed                	test   ebp,ebp
  74bd47:	0f 84 85 00 00 00    	je     0x74bdd2
  74bd4d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  74bd51:	85 c0                	test   eax,eax
  74bd53:	0f 86 79 00 00 00    	jbe    0x74bdd2
  74bd59:	83 f8 07             	cmp    eax,0x7
  74bd5c:	c7 44 24 08 07 00 00 00 	mov    DWORD PTR [esp+0x8],0x7
  74bd64:	8d 44 24 08          	lea    eax,[esp+0x8]
  74bd68:	77 04                	ja     0x74bd6e
  74bd6a:	8d 44 24 0c          	lea    eax,[esp+0xc]
  74bd6e:	53                   	push   ebx
  74bd6f:	8b 18                	mov    ebx,DWORD PTR [eax]
  74bd71:	56                   	push   esi
  74bd72:	33 f6                	xor    esi,esi
  74bd74:	83 fb 04             	cmp    ebx,0x4
  74bd77:	7c 3b                	jl     0x74bdb4
  74bd79:	57                   	push   edi
  74bd7a:	8d 7b fc             	lea    edi,[ebx-0x4]
  74bd7d:	c1 ef 02             	shr    edi,0x2
  74bd80:	83 c7 01             	add    edi,0x1
  74bd83:	8d 55 08             	lea    edx,[ebp+0x8]
  74bd86:	8d 41 10             	lea    eax,[ecx+0x10]
  74bd89:	8d 34 bd 00 00 00 00 	lea    esi,[edi*4+0x0]
  74bd90:	d9 42 f8             	fld    DWORD PTR [edx-0x8]
  74bd93:	83 c0 10             	add    eax,0x10
  74bd96:	d9 58 ec             	fstp   DWORD PTR [eax-0x14]
  74bd99:	83 c2 10             	add    edx,0x10
  74bd9c:	83 ef 01             	sub    edi,0x1
  74bd9f:	d9 42 ec             	fld    DWORD PTR [edx-0x14]
  74bda2:	d9 58 f0             	fstp   DWORD PTR [eax-0x10]
  74bda5:	d9 42 f0             	fld    DWORD PTR [edx-0x10]
  74bda8:	d9 58 f4             	fstp   DWORD PTR [eax-0xc]
  74bdab:	d9 42 f4             	fld    DWORD PTR [edx-0xc]
  74bdae:	d9 58 f8             	fstp   DWORD PTR [eax-0x8]
  74bdb1:	75 dd                	jne    0x74bd90
  74bdb3:	5f                   	pop    edi
  74bdb4:	3b f3                	cmp    esi,ebx
  74bdb6:	73 18                	jae    0x74bdd0
  74bdb8:	8d 44 b1 0c          	lea    eax,[ecx+esi*4+0xc]
  74bdbc:	8d 64 24 00          	lea    esp,[esp+0x0]
  74bdc0:	d9 44 b5 00          	fld    DWORD PTR [ebp+esi*4+0x0]
  74bdc4:	83 c6 01             	add    esi,0x1
  74bdc7:	d9 18                	fstp   DWORD PTR [eax]
  74bdc9:	83 c0 04             	add    eax,0x4
  74bdcc:	3b f3                	cmp    esi,ebx
  74bdce:	72 f0                	jb     0x74bdc0
  74bdd0:	5e                   	pop    esi
  74bdd1:	5b                   	pop    ebx
  74bdd2:	5d                   	pop    ebp
  74bdd3:	c2 08 00             	ret    0x8

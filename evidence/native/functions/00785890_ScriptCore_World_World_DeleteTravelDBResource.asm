# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00785890,0x007858db); analyst name ScriptCore.World::World_DeleteTravelDBResource.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00785890 <.text+0x384890>:
  785890:	83 ec 10             	sub    esp,0x10
  785893:	53                   	push   ebx
  785894:	32 db                	xor    bl,bl
  785896:	e8 c5 d5 1f 00       	call   0x982e60
  78589b:	8b 88 64 06 00 00    	mov    ecx,DWORD PTR [eax+0x664]
  7858a1:	85 c9                	test   ecx,ecx
  7858a3:	74 2f                	je     0x7858d4
  7858a5:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  7858a9:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  7858ad:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  7858b1:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  7858b5:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  7858b9:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  7858bd:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  7858c1:	8d 44 24 04          	lea    eax,[esp+0x4]
  7858c5:	50                   	push   eax
  7858c6:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  7858ca:	e8 91 32 24 00       	call   0x9c8b60
  7858cf:	5b                   	pop    ebx
  7858d0:	83 c4 10             	add    esp,0x10
  7858d3:	c3                   	ret
  7858d4:	8a c3                	mov    al,bl
  7858d6:	5b                   	pop    ebx
  7858d7:	83 c4 10             	add    esp,0x10
  7858da:	c3                   	ret

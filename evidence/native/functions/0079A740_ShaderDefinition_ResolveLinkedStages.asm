# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079a740, 0x0079a7a8); analyst name ShaderDefinition_ResolveLinkedStages.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079a740 <.text+0x399740>:
  79a740:	56                   	push   esi
  79a741:	8b f1                	mov    esi,ecx
  79a743:	f7 46 18 00 0c 00 00 	test   DWORD PTR [esi+0x18],0xc00
  79a74a:	74 53                	je     0x79a79f
  79a74c:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  79a74f:	85 c0                	test   eax,eax
  79a751:	74 19                	je     0x79a76c
  79a753:	3b 06                	cmp    eax,DWORD PTR [esi]
  79a755:	74 15                	je     0x79a76c
  79a757:	8b 0d 3c 85 1d 01    	mov    ecx,DWORD PTR ds:0x11d853c
  79a75d:	6a 00                	push   0x0
  79a75f:	6a 00                	push   0x0
  79a761:	50                   	push   eax
  79a762:	e8 f9 13 00 00       	call   0x79bb60
  79a767:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  79a76a:	eb 03                	jmp    0x79a76f
  79a76c:	89 76 2c             	mov    DWORD PTR [esi+0x2c],esi
  79a76f:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  79a772:	85 c9                	test   ecx,ecx
  79a774:	74 19                	je     0x79a78f
  79a776:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  79a779:	85 c0                	test   eax,eax
  79a77b:	74 0b                	je     0x79a788
  79a77d:	50                   	push   eax
  79a77e:	e8 7d ff ff ff       	call   0x79a700
  79a783:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  79a786:	eb 07                	jmp    0x79a78f
  79a788:	c7 46 30 00 00 00 00 	mov    DWORD PTR [esi+0x30],0x0
  79a78f:	81 7e 30 ff 00 00 00 	cmp    DWORD PTR [esi+0x30],0xff
  79a796:	72 0e                	jb     0x79a7a6
  79a798:	81 66 18 ff f3 ff ff 	and    DWORD PTR [esi+0x18],0xfffff3ff
  79a79f:	c7 46 2c 00 00 00 00 	mov    DWORD PTR [esi+0x2c],0x0
  79a7a6:	5e                   	pop    esi
  79a7a7:	c3                   	ret

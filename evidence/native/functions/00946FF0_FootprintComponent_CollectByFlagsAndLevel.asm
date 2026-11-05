# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00946ff0, 0x0094709e); analyst name FootprintComponent_CollectByFlagsAndLevel.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00946ff0 <.text+0x545ff0>:
  946ff0:	56                   	push   esi
  946ff1:	8b f1                	mov    esi,ecx
  946ff3:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  946ff6:	85 c9                	test   ecx,ecx
  946ff8:	75 0e                	jne    0x947008
  946ffa:	39 4e 2c             	cmp    DWORD PTR [esi+0x2c],ecx
  946ffd:	75 09                	jne    0x947008
  946fff:	39 4e 34             	cmp    DWORD PTR [esi+0x34],ecx
  947002:	0f 84 92 00 00 00    	je     0x94709a
  947008:	85 c9                	test   ecx,ecx
  94700a:	57                   	push   edi
  94700b:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  94700f:	74 2e                	je     0x94703f
  947011:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  947014:	85 c0                	test   eax,eax
  947016:	57                   	push   edi
  947017:	74 15                	je     0x94702e
  947019:	8d 4e 58             	lea    ecx,[esi+0x58]
  94701c:	51                   	push   ecx
  94701d:	8b c8                	mov    ecx,eax
  94701f:	e8 2c bd fe ff       	call   0x932d50
  947024:	50                   	push   eax
  947025:	8b ce                	mov    ecx,esi
  947027:	e8 94 fc ff ff       	call   0x946cc0
  94702c:	eb 11                	jmp    0x94703f
  94702e:	8d 56 58             	lea    edx,[esi+0x58]
  947031:	52                   	push   edx
  947032:	e8 19 bd fe ff       	call   0x932d50
  947037:	50                   	push   eax
  947038:	8b ce                	mov    ecx,esi
  94703a:	e8 71 fb ff ff       	call   0x946bb0
  94703f:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  947042:	85 c9                	test   ecx,ecx
  947044:	74 12                	je     0x947058
  947046:	57                   	push   edi
  947047:	8d 46 48             	lea    eax,[esi+0x48]
  94704a:	50                   	push   eax
  94704b:	e8 00 bd fe ff       	call   0x932d50
  947050:	50                   	push   eax
  947051:	8b ce                	mov    ecx,esi
  947053:	e8 58 fb ff ff       	call   0x946bb0
  947058:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  94705b:	85 c9                	test   ecx,ecx
  94705d:	75 09                	jne    0x947068
  94705f:	39 4e 34             	cmp    DWORD PTR [esi+0x34],ecx
  947062:	74 35                	je     0x947099
  947064:	85 c9                	test   ecx,ecx
  947066:	74 31                	je     0x947099
  947068:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  94706b:	85 c0                	test   eax,eax
  94706d:	57                   	push   edi
  94706e:	74 18                	je     0x947088
  947070:	8d 4e 68             	lea    ecx,[esi+0x68]
  947073:	51                   	push   ecx
  947074:	8b c8                	mov    ecx,eax
  947076:	e8 e5 bc fe ff       	call   0x932d60
  94707b:	50                   	push   eax
  94707c:	8b ce                	mov    ecx,esi
  94707e:	e8 3d fc ff ff       	call   0x946cc0
  947083:	5f                   	pop    edi
  947084:	5e                   	pop    esi
  947085:	c2 04 00             	ret    0x4
  947088:	8d 56 68             	lea    edx,[esi+0x68]
  94708b:	52                   	push   edx
  94708c:	e8 cf bc fe ff       	call   0x932d60
  947091:	50                   	push   eax
  947092:	8b ce                	mov    ecx,esi
  947094:	e8 17 fb ff ff       	call   0x946bb0
  947099:	5f                   	pop    edi
  94709a:	5e                   	pop    esi
  94709b:	c2 04 00             	ret    0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00752140, 0x007521a4); analyst name RouteGoal_Initialize.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00752140 <.text+0x351140>:
  752140:	8b c1                	mov    eax,ecx
  752142:	c7 00 94 b3 03 01    	mov    DWORD PTR [eax],0x103b394
  752148:	c7 40 04 78 4a ff 00 	mov    DWORD PTR [eax+0x4],0xff4a78
  75214f:	33 c9                	xor    ecx,ecx
  752151:	8d 50 08             	lea    edx,[eax+0x8]
  752154:	87 0a                	xchg   DWORD PTR [edx],ecx
  752156:	33 c9                	xor    ecx,ecx
  752158:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  75215b:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  75215e:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  752161:	c7 00 98 54 00 01    	mov    DWORD PTR [eax],0x1005498
  752167:	c7 40 04 88 54 00 01 	mov    DWORD PTR [eax+0x4],0x1005488
  75216e:	8d 50 18             	lea    edx,[eax+0x18]
  752171:	89 52 04             	mov    DWORD PTR [edx+0x4],edx
  752174:	89 12                	mov    DWORD PTR [edx],edx
  752176:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  752179:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  75217c:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  75217f:	c7 40 2c 2c 53 00 01 	mov    DWORD PTR [eax+0x2c],0x100532c
  752186:	c7 40 30 02 00 00 00 	mov    DWORD PTR [eax+0x30],0x2
  75218d:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
  752190:	89 48 3c             	mov    DWORD PTR [eax+0x3c],ecx
  752193:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  752196:	89 48 44             	mov    DWORD PTR [eax+0x44],ecx
  752199:	88 48 48             	mov    BYTE PTR [eax+0x48],cl
  75219c:	c6 40 49 01          	mov    BYTE PTR [eax+0x49],0x1
  7521a0:	88 48 4a             	mov    BYTE PTR [eax+0x4a],cl
  7521a3:	c3                   	ret

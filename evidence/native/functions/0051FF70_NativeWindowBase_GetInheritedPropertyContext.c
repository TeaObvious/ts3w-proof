/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 inherited property-context callback. Physical caller-clean stack4 output context
   and stack8 parent context; stackC and stack10 are unused raw32 words, not inferred
   signed/unsigned semantic values. Canonical511CA0 pushes allocator,row,parent,output, calls
   inherited table+8, removes16 bytes and tests AL. This callback reads parent+4 as receiver,
   invokes514770 into a local4-DWORD buffer, copies first3 DWORDs to output and sets AL1; plain RET.
   Exact selected existing Listing16 instructions48 bytes ends51FF9F. No following51FFA0 code
   belongs to this definition; no disassembly, byte, child or neighboring function change. */

bool __cdecl
NativeWindowBase_GetInheritedPropertyContext
          (void *outContext,void *parentContext,undefined4 unusedDescriptorWord,
          undefined4 unusedAllocatorWord)

{
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  NativeWindowBase_WritePropertyContext(*(void **)((int)parentContext + 4),&uStack_10);
  *(undefined4 *)((int)outContext + 4) = uStack_c;
  *(undefined4 *)((int)outContext + 8) = uStack_8;
  *(undefined4 *)outContext = uStack_10;
  return true;
}


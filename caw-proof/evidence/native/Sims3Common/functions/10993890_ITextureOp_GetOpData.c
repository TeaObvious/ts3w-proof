/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ITextureOp_GetOpData. Export ordinal(s): 1865.
   Entry VA: 0x10993890. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B81. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl ITextureOp_GetOpData(int *param_1,undefined4 param_2,undefined4 param_3)

{
  char cVar1;
  
                    /* 0x993890  1865  ITextureOp_GetOpData */
  cVar1 = (**(code **)(*param_1 + 0x3c))(param_2,param_3);
  return (bool)('\x01' - (cVar1 != '\x01'));
}


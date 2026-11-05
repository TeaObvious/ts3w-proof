/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ITextureOp_GetUIVisible. Export ordinal(s): 1866.
   Entry VA: 0x109938b0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B85. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl ITextureOp_GetUIVisible(int *param_1)

{
  char cVar1;
  
                    /* 0x9938b0  1866  ITextureOp_GetUIVisible */
  cVar1 = (**(code **)(*param_1 + 0x20))();
  return cVar1 != '\0';
}


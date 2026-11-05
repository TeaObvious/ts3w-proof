/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ITextureOp_SetUIVisible. Export ordinal(s): 1869.
   Entry VA: 0x109938d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B86. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl ITextureOp_SetUIVisible(int *param_1,int param_2)

{
                    /* 0x9938d0  1869  ITextureOp_SetUIVisible */
  (**(code **)(*param_1 + 0x24))(param_2 == 1);
  return;
}


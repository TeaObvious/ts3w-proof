/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ITextureOp_GetId;
   ThumbnailManager_ReleaseNotifier. Export ordinal(s): 1863; 2515. Entry VA: 0x10994660. Original
   managed P/Invoke MethodDef(s): CSHostWrap:0x060003EF; CSHostWrap:0x06000B7E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void ITextureOp_GetId(int *param_1)

{
                    /* 0x994660  1863  ITextureOp_GetId
                       0x994660  2515  ThumbnailManager_ReleaseNotifier */
                    /* WARNING: Could not recover jumptable at 0x10994669. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*param_1 + 8))();
  return;
}


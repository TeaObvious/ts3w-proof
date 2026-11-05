/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_InvertMaskWeight. Export ordinal(s):
   2671. Entry VA: 0x109990a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004F7. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WorldWrap_InvertMaskWeight(int param_1)

{
  void *this;
  
                    /* 0x9990a0  2671  WorldWrap_InvertMaskWeight */
  if ((*(int *)(param_1 + 0x54) != 0) &&
     (this = (void *)FUN_106b6a50(*(int *)(param_1 + 0x54)), this != (void *)0x0)) {
    FUN_101f03c0(this,1);
    FUN_101f0490((int)this);
    return;
  }
  return;
}


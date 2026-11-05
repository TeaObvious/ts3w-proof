/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_GetBlendAmount. Export ordinal(s):
   2322. Entry VA: 0x10990b20. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000C7C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

float10 __cdecl SimBuilderWrap_GetBlendAmount(int param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  
                    /* 0x990b20  2322  SimBuilderWrap_GetBlendAmount */
  puVar1 = *(undefined4 **)(param_1 + 0x208);
  iVar2 = 0;
  while( true ) {
    if (puVar1 == (undefined4 *)(param_1 + 0x208)) {
      return (float10)0.0;
    }
    if (iVar2 == param_2) break;
    puVar1 = (undefined4 *)*puVar1;
    iVar2 = iVar2 + 1;
  }
  return (float10)(float)puVar1[6];
}


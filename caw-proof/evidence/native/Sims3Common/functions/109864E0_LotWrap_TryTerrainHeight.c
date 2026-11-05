/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_TryTerrainHeight. Export ordinal(s):
   1930. Entry VA: 0x109864e0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A87. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl LotWrap_TryTerrainHeight(void *param_1,int param_2,int param_3,float *param_4)

{
  undefined4 uVar1;
  
                    /* 0x9864e0  1930  LotWrap_TryTerrainHeight */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_1007b0b0(param_1,param_2,param_3,param_4);
    return (char)uVar1 != '\0';
  }
  return false;
}


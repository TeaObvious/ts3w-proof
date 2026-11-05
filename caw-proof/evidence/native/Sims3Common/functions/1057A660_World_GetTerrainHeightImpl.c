/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetTerrainHeightImpl. Export ordinal(s):
   1383. Entry VA: 0x1057a660. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000B9C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

float10 __cdecl World_GetTerrainHeightImpl(float param_1,float param_2,char param_3)

{
  float10 fVar1;
  
                    /* 0x57a660  1383  World_GetTerrainHeightImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    fVar1 = FUN_1023e930(DAT_10c700c4,param_1,param_2,0,'\x01',param_3,(undefined1 *)0x0,
                         (undefined1 *)0x0,'\0','\0');
    return fVar1;
  }
  return (float10)0.0;
}


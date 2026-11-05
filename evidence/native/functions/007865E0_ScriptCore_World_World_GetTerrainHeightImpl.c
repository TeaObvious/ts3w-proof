/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163240 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetTerrainHeightImpl [assembly=ScriptCore token=0x06000744; x:
   System.Single, z: System.Single, considerBridges: System.Boolean; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_World__World_GetTerrainHeightImpl(float param_1,float param_2,char param_3)

{
  float10 fVar1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    fVar1 = FUN_00c6a090(DAT_011edbc4,param_1,param_2,0,'\x01',param_3,(undefined1 *)0x0,
                         (undefined1 *)0x0,'\0','\0');
    return fVar1;
  }
  return (float10)0;
}


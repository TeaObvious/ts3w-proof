/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163270 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetTerrainSurfaceTypeImpl [assembly=ScriptCore token=0x0600074B; x:
   System.Single, z: System.Single, level: System.Int32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_GetTerrainSurfaceTypeImpl(float param_1,float param_2,int param_3)

{
  uint uVar1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    uVar1 = FUN_00c6bf00(DAT_011edbc4,param_1,param_2,param_3,0xffff);
    return uVar1;
  }
  return 0;
}


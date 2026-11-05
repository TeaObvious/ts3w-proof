/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163260 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetLevelHeightImpl [assembly=ScriptCore token=0x06000748; x:
   System.Single, z: System.Single, level: System.Int32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_World__World_GetLevelHeightImpl(float param_1,float param_2,undefined4 param_3)

{
  float10 fVar1;
  
  if (DAT_011edbc4 == (void *)0x0) {
    return (float10)0;
  }
  fVar1 = WorldSurface_QueryHeight
                    (DAT_011edbc4,param_1,param_2,param_3,'\x01','\0',(undefined1 *)0x0,
                     (undefined1 *)0x0,'\0','\0');
  return fVar1;
}


/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163d58 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasAnySnowAtPoint [assembly=ScriptCore token=0x060008A6; worldPos:
   Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 __cdecl
ScriptCore.World::World_HasAnySnowAtPoint(float param_1,undefined4 param_2,undefined4 param_3)

{
  void *pvVar1;
  short sVar2;
  char local_31;
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  float local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  if ((DAT_011edbc4 != 0) && (pvVar1 = *(void **)(DAT_011edbc4 + 0x74), pvVar1 != (void *)0x0)) {
    sVar2 = FUN_00d69aa0((int)pvVar1);
    if ((sVar2 == 1) || (sVar2 == 2)) {
      uStack_28 = param_3;
      fStack_24 = param_1;
      uStack_2c = param_2;
      local_30 = param_1;
      local_20 = param_1;
      uStack_1c = param_2;
      uStack_18 = param_3;
      fStack_14 = param_1;
      local_31 = '\0';
      Seasons_QuerySnowPresenceAndDepth(pvVar1,&local_20,&local_31);
      return local_31;
    }
  }
  return 0;
}


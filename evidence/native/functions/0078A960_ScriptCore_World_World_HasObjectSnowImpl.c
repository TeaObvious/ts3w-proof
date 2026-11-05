/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011632f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasObjectSnowImpl [assembly=ScriptCore token=0x0600075C; scriptHandle:
   System.UInt64, bCheckOnlyScript: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_World__World_HasObjectSnowImpl(undefined4 param_1,undefined4 param_2,char param_3)

{
  bool bVar1;
  void *pvVar2;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 != (void *)0x0) {
    pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
    if (pvVar2 != (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea2a8);
      if (pvVar2 != (void *)0x0) {
        bVar1 = Seasons_TestObjectSnowEnableBits(pvVar2,param_3);
        return bVar1;
      }
    }
  }
  return true;
}


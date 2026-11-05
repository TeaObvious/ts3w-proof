/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011639d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_SetLotType [assembly=ScriptCore token=0x06000834; lotId: System.UInt64,
   lotType: System.Int32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_SetLotType(int param_1,int param_2,int param_3)

{
  int *piVar1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if ((piVar1 != (int *)0x0) && (piVar1[0x102] != param_3)) {
      piVar1[0x103] = 0;
      piVar1[0x102] = param_3;
    }
  }
  return;
}


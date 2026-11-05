/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161890 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_CreateRoute [assembly=ScriptCore token=0x060010EF; handle: System.UInt64,
   ageGenderFlags: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl ScriptCore.Route::Route_CreateRoute(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  void *this;
  int *piVar2;
  
  if (param_1 != 0 || param_2 != 0) {
    GetGlobalInterfacePointer_11D5BBC();
    this = (void *)FUN_004e4500(0x200,"Routing/Route",0);
    if (this != (void *)0x0) {
      piVar2 = FUN_0075d540(this,param_1,param_2,param_3);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 0x10))();
        if (DAT_011d50c4 != (void *)0x0) {
          FUN_0074e5a0(DAT_011d50c4,piVar2 + 1);
          iVar1 = piVar2[6];
          (**(code **)(*piVar2 + 0x14))();
          return iVar1;
        }
        (**(code **)(*piVar2 + 0x14))();
      }
    }
  }
  return 0;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a08 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetOption [assembly=ScriptCore token=0x06001123; handle: System.UInt32,
   optionType: System.Int64, bOptions2: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Route__Route_GetOption(uint param_1,uint param_2,uint param_3,char param_4)

{
  uint in_EAX;
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar1 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      uVar2 = FUN_0081c4e0(piVar1 + 0x56,param_2,param_3,param_4);
      uVar3 = (**(code **)(*piVar1 + 0x14))();
      return CONCAT31((int3)((uint)uVar3 >> 8),(char)uVar2);
    }
  }
  return in_EAX & 0xffffff00;
}


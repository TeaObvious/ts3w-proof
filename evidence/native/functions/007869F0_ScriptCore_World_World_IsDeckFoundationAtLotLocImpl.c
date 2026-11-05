/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163370 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_IsDeckFoundationAtLotLocImpl [assembly=ScriptCore token=0x0600076B;
   lotId: System.UInt64, x: System.Single, z: System.Single, level: System.Int32;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_IsDeckFoundationAtLotLocImpl
               (int param_1,int param_2,float param_3,undefined4 param_4,undefined4 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  float fStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      fStack_c = param_3;
      uStack_8 = param_4;
      uStack_4 = param_5;
      uVar2 = FUN_00afee10(piVar1,&fStack_c);
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}


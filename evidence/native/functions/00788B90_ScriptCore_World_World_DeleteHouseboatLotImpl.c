/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163d68 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_DeleteHouseboatLotImpl [assembly=ScriptCore token=0x060008AC; lotId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_DeleteHouseboatLotImpl(int param_1,int param_2)

{
  void *pvVar1;
  int *in_EAX;
  undefined4 uVar2;
  int iStack_4;
  
  pvVar1 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    in_EAX = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if ((in_EAX != (int *)0x0) && ((char)in_EAX[0x12f] != '\0')) {
      FUN_00799140(&iStack_4,in_EAX);
      uVar2 = FUN_00b01c70((int)in_EAX,'\x01');
      if ((char)uVar2 == '\0') {
        FUN_00a47400(&iStack_4);
        FUN_00a475d0(&iStack_4);
      }
      FUN_00b03180(pvVar1,in_EAX);
      uVar2 = ScriptCore.Animation::Animation_SetMissingAnimationCallback();
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01167810 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_SetSoundArrayGainImpl [assembly=ScriptCore token=0x060011ED; instanceId:
   System.UInt32, val: System.Single; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Audio__Audio_SetSoundArrayGainImpl(int param_1)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 unaff_ESI;
  
  if (((DAT_011d9c40 != 0) && (piVar1 = (int *)(DAT_011d9c40 - 0x27bd0), piVar1 != (int *)0x0)) &&
     (param_1 != 0)) {
    (**(code **)(*piVar1 + 0x44))(0xcc8f7e5);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,param_1);
    (**(code **)(*piVar1 + 0x48))(0x34753a4,unaff_ESI);
    uVar2 = (**(code **)(*piVar1 + 0x68))();
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  return DAT_011d9c40 & 0xffffff00;
}


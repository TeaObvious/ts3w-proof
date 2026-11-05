/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01167780 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_StartSoundByIdImpl [assembly=ScriptCore token=0x060011DB; handle:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Audio__Audio_StartSoundByIdImpl(void)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)FUN_008afe00();
  uVar2 = 0;
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x44))(0x3475365);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,unaff_retaddr);
    uVar2 = (**(code **)(*piVar1 + 0x68))();
  }
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}


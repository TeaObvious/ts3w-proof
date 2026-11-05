/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01167760 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Audio::Audio_StartSoundImpl [assembly=ScriptCore token=0x060011D7; name:
   System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Audio__Audio_StartSoundImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  ushort *inputCodeUnits;
  undefined4 uVar3;
  undefined8 uVar4;
  uint inputUnitLimit;
  byte abStack_7e [126];
  
  if ((DAT_011d9c40 == 0) || (piVar1 = (int *)(DAT_011d9c40 + -0x27bd0), piVar1 == (int *)0x0)) {
    return 0;
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  inputUnitLimit = 0x80;
  inputCodeUnits = (ushort *)(**(code **)(*piVar2 + 0x58))(param_1,0x80,0xffffffff);
  CodeUnits16_EncodeBoundedBytes(abStack_7e + -6,inputCodeUnits,param_1,inputUnitLimit);
  uVar4 = (**(code **)(*piVar1 + 0x118))(abStack_7e + -6);
  uVar3 = (**(code **)(*piVar1 + 0x28))();
  (**(code **)(*piVar1 + 0x44))(0x3475365);
  (**(code **)(*piVar1 + 0x50))(0x3475381,uVar4);
  (**(code **)(*piVar1 + 0x4c))(0x3475385,uVar3);
  (**(code **)(*piVar1 + 0x68))();
  return uVar3;
}


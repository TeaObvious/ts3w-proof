/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01167778 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_CreateSoundImpl [assembly=ScriptCore token=0x060011DA; name:
   System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Audio__Audio_CreateSoundImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  ushort *puVar3;
  undefined4 uVar4;
  undefined8 uVar5;
  int iVar6;
  
  if ((DAT_011d9c40 != 0) && (piVar1 = (int *)(DAT_011d9c40 + -0x27bd0), piVar1 != (int *)0x0)) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar6 = 0x80;
    puVar3 = (ushort *)(**(code **)(*piVar2 + 0x58))(param_1,0x80,0xffffffff);
    FUN_004fdfa0(&stack0xffffff7c,puVar3,param_1,iVar6);
    uVar5 = (**(code **)(*piVar1 + 0x118))(&stack0xffffff7c);
    uVar4 = (**(code **)(*piVar1 + 0x28))();
    (**(code **)(*piVar1 + 0x44))(0x3475331);
    (**(code **)(*piVar1 + 0x50))(0x3475381,uVar5);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,uVar4);
    (**(code **)(*piVar1 + 0x68))();
    return uVar4;
  }
  return 0;
}


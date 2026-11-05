/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01167768 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_StartSoundMP3Impl [assembly=ScriptCore token=0x060011D8; name:
   System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Audio__Audio_StartSoundMP3Impl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  short *psVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
  if ((DAT_011d9c40 != 0) && (piVar1 = (int *)(DAT_011d9c40 + -0x27bd0), piVar1 != (int *)0x0)) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
    FUN_004ff550(&stack0xfffffdf4,psVar3,param_1);
    uVar4 = (**(code **)(*piVar1 + 0x118))();
    uVar5 = (**(code **)(*piVar1 + 0x28))();
    (**(code **)(*piVar1 + 0x44))();
    (**(code **)(*piVar1 + 0x50))(0x3475381,uVar4);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,uVar5);
    (**(code **)(*piVar1 + 0x5c))(0x9fa9372e,&stack0xfffffdd8,0x208);
    (**(code **)(*piVar1 + 0x68))();
    return uVar5;
  }
  return 0;
}


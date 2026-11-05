/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01167800 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Audio::Audio_UpdateSoundArrayImpl [assembly=ScriptCore token=0x060011EB; instanceId:
   System.UInt32, soundNames: System.String, objIds: System.UInt64[]; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Audio__Audio_UpdateSoundArrayImpl(undefined4 param_1,int param_2)

{
  void *pvVar1;
  int *piVar2;
  short *psVar3;
  undefined4 uVar4;
  int *extraout_EAX;
  int *extraout_EAX_00;
  int *unaff_ESI;
  int *piVar5;
  int unaff_EDI;
  int iStack_2c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  int iStack_10;
  undefined4 uStack_c;
  char *pcStack_8;
  
  if (DAT_011d9c40 == 0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = (int *)(DAT_011d9c40 + -0x27bd0);
  }
  pvVar1 = ObjectRegistry_GetGlobal();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((piVar5 != (int *)0x0) && (pvVar1 != (void *)0x0)) && (piVar2 != (int *)0x0)) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
    uStack_14 = 0;
    iStack_10 = 0;
    uStack_c = 0;
    pcStack_8 = "Audio/soundNames";
    FUN_0040b590(&uStack_14,psVar3);
    uStack_18 = 0;
    (**(code **)(*piVar2 + 0x68))(param_2,(int)register0x00000010 + -0x1c,&uStack_18);
    (**(code **)(*piVar5 + 0x44))(0xa29e8e6);
    uVar4 = FUN_00863d80(iStack_10,unaff_EDI,(int *)((int)register0x00000010 + -0x24),param_2,piVar5
                         ,(int)pvVar1);
    if ((char)uVar4 != '\0') {
      (**(code **)(*piVar5 + 0x68))();
      if ((2 < (int)(-(int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (int *)0x0)) {
        Memory_FreeIfNonNull(unaff_ESI);
        unaff_ESI = extraout_EAX_00;
      }
      return CONCAT31((int3)((uint)unaff_ESI >> 8),1);
    }
    (**(code **)(*piVar5 + 0x6c))();
    piVar2 = unaff_ESI;
    if ((2 < (int)(-(int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (int *)0x0)) {
      Memory_FreeIfNonNull(unaff_ESI);
      piVar2 = extraout_EAX;
    }
  }
  return (uint)piVar2 & 0xffffff00;
}


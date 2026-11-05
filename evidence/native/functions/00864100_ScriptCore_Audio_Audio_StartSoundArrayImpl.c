/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00864277) */
/* WARNING: Removing unreachable block (ram,0x008642e0) */
/* Verified PC 1.67 registration table at 0x011677f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Audio::Audio_StartSoundArrayImpl [assembly=ScriptCore token=0x060011EA; name:
   System.String, soundNames: System.String, objIds: System.UInt64[]; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * ScriptCore_Audio__Audio_StartSoundArrayImpl(int param_1)

{
  void *pvVar1;
  int *piVar2;
  short *psVar3;
  undefined4 uVar4;
  int *piVar5;
  int unaff_EDI;
  undefined1 *puVar6;
  void *allocation;
  undefined1 auStack_3a [2];
  undefined4 uStack_38;
  void *pvStack_34;
  undefined4 uStack_30;
  char *pcStack_2c;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  char *pcStack_18;
  
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
    uStack_24 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    pcStack_18 = "Audio/soundArrayName";
    FUN_0040b590(&uStack_24,psVar3);
    allocation = (void *)param_1;
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
    uStack_38 = 0;
    pvStack_34 = (void *)0x0;
    uStack_30 = 0;
    pcStack_2c = "Audio/soundNames";
    FUN_0040b590(&uStack_38,psVar3);
    puVar6 = auStack_3a + -6;
    (**(code **)(*piVar2 + 0x68))();
    FUN_004f3df0(&uStack_24,&pvStack_34);
    uVar4 = uStack_24;
    (**(code **)(*piVar5 + 0x28))();
    (**(code **)(*piVar5 + 0x44))(0xa29e8be);
    (**(code **)(*piVar5 + 0x54))(0x347537e,uVar4,0);
    uVar4 = FUN_00863d80((int)puVar6,(int)(auStack_3a + -10),(int *)(auStack_3a + -0x1a),param_1,
                         piVar5,(int)pvVar1);
    if ((char)uVar4 != '\0') {
      (**(code **)(*piVar5 + 0x68))();
      if ((1 < (int)pcStack_2c - (int)pvStack_34) && (pvStack_34 != (void *)0x0)) {
        Memory_FreeIfNonNull(pvStack_34);
      }
      if ((2 < (int)(unaff_EDI - (int)allocation & 0xfffffffeU)) && (allocation != (void *)0x0)) {
        Memory_FreeIfNonNull(allocation);
      }
      return puVar6;
    }
    (**(code **)(*piVar5 + 0x6c))();
    if ((1 < (int)pcStack_2c - (int)pvStack_34) && (pvStack_34 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvStack_34);
    }
    if ((2 < (int)(unaff_EDI - (int)allocation & 0xfffffffeU)) && (allocation != (void *)0x0)) {
      Memory_FreeIfNonNull(allocation);
    }
  }
  return (undefined1 *)0x0;
}


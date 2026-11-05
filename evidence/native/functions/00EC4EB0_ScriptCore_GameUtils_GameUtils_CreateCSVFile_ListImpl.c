/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011970f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_CreateCSVFile_ListImpl [assembly=ScriptCore token=0x0600022F;
   filePath: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.GameUtils::GameUtils_CreateCSVFile_ListImpl(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  undefined4 *puVar3;
  uint uVar4;
  ushort **ppuVar5;
  void *pvVar6;
  undefined4 uVar7;
  undefined1 *unaff_EBX;
  int *piVar8;
  void *unaff_ESI;
  ushort *allocation;
  void *local_3c [2];
  ushort *local_34;
  ushort *puStack_30;
  void *pvStack_2c;
  char *pcStack_28;
  undefined1 *puStack_24;
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined *local_18;
  char *local_14 [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_18 = &DAT_011c8e55;
  local_14[0] = "SIGS/OnlineHost/AuthToken8";
  local_20 = &DAT_011c8e54;
  local_1c = &DAT_011c8e54;
  local_34 = (ushort *)0x10f3a4c;
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  piVar8 = (int *)0x0;
  local_34 = (ushort *)0x0;
  puStack_30 = (ushort *)0x0;
  pvStack_2c = (void *)0x0;
  pcStack_28 = "SIGS/sCreateCSVFile_List/manifestPath";
  FUN_0040b590(&local_34,psVar2);
  puVar3 = EaString_FromUtf8Bytes
                     (local_14,PTR_s_defaultUserManifest__011503dc,0xffffffff,(byte *)0x0);
  allocation = local_34;
  uVar4 = FUN_009f0a90(local_34,(int)puStack_30,(ushort *)*puVar3,puVar3[1]);
  if ((2 < (int)(iStack_c - (int)local_14[0] & 0xfffffffeU)) && (local_14[0] != (char *)0x0)) {
    Memory_FreeIfNonNull(local_14[0]);
  }
  if (uVar4 == 0) {
    if (DAT_011d5068 == 0) {
      pvVar6 = (void *)0x0;
    }
    else {
      pvVar6 = (void *)(DAT_011d5068 + -8);
    }
    ppuVar5 = (ushort **)FUN_0088c5b0(pvVar6,local_14,(int *)&puStack_24,local_3c + -2);
    if (ppuVar5 != &local_34) {
      FUN_00408d60(&local_34,*ppuVar5,ppuVar5[1]);
      allocation = local_34;
    }
    if ((2 < (int)(iStack_c - (int)local_14[0] & 0xfffffffeU)) && (local_14[0] != (char *)0x0)) {
      Memory_FreeIfNonNull(local_14[0]);
    }
    if (((allocation == puStack_30) || (unaff_EBX == &DAT_011c8e54)) || (puStack_24 == local_20)) {
      if ((2 < (int)((int)pvStack_2c - (int)allocation & 0xfffffffeU)) &&
         (allocation != (ushort *)0x0)) {
        Memory_FreeIfNonNull(allocation);
      }
      if ((1 < (int)&DAT_011c8e54 - (int)unaff_EBX) && (unaff_EBX != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(unaff_EBX);
      }
      if ((1 < (int)local_1c - (int)puStack_24) && (puStack_24 != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(puStack_24);
      }
      return 0;
    }
  }
  pvVar6 = (void *)FUN_004e4500(100,"Services/GameHost/sCreateCSVFile",0);
  if (pvVar6 != (void *)0x0) {
    piVar8 = FUN_009d3b90(pvVar6,(short *)allocation,(undefined4 *)0x0);
  }
  if (local_3c + -2 != (void **)(piVar8 + 7)) {
    FUN_00405910(piVar8 + 7,unaff_EBX,&DAT_011c8e54);
  }
  FUN_007cb580(piVar8);
  uVar7 = (**(code **)(*piVar1 + 200))(piVar8,0x40);
  if ((2 < (int)((int)local_34 - (int)allocation & 0xfffffffeU)) && (allocation != (ushort *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  if ((1 < (int)unaff_EBX - (int)unaff_ESI) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  if ((1 < (int)puStack_24 - (int)pvStack_2c) && (pvStack_2c != (void *)0x0)) {
    Memory_FreeIfNonNull(pvStack_2c);
  }
  return uVar7;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011970f8 (original PC 1.67 TS3W.exe).
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
  int unaff_ESI;
  ushort *puVar9;
  ushort *local_34;
  ushort *puStack_30;
  int iStack_2c;
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
  iStack_2c = 0;
  pcStack_28 = "SIGS/sCreateCSVFile_List/manifestPath";
  FUN_0040b590(&local_34,psVar2);
  puVar3 = FUN_004f3b50(local_14,(LPCWSTR)PTR_s_defaultUserManifest__011503dc,0xffffffff,(char *)0x0
                       );
  puVar9 = local_34;
  uVar4 = FUN_009f0a90(local_34,(int)puStack_30,(ushort *)*puVar3,puVar3[1]);
  if ((2 < (int)(iStack_c - (int)local_14[0] & 0xfffffffeU)) && (local_14[0] != (char *)0x0)) {
    FUN_004e44e0((int)local_14[0]);
  }
  if (uVar4 == 0) {
    if (DAT_011d5068 == 0) {
      pvVar6 = (void *)0x0;
    }
    else {
      pvVar6 = (void *)(DAT_011d5068 + -8);
    }
    ppuVar5 = (ushort **)FUN_0088c5b0(pvVar6,local_14,(int *)&puStack_24,(void **)&stack0xffffffbc);
    if (ppuVar5 != &local_34) {
      FUN_00408d60(&local_34,*ppuVar5,ppuVar5[1]);
      puVar9 = local_34;
    }
    if ((2 < (int)(iStack_c - (int)local_14[0] & 0xfffffffeU)) && (local_14[0] != (char *)0x0)) {
      FUN_004e44e0((int)local_14[0]);
    }
    if (((puVar9 == puStack_30) || (unaff_EBX == &DAT_011c8e54)) || (puStack_24 == local_20)) {
      if ((2 < (int)(iStack_2c - (int)puVar9 & 0xfffffffeU)) && (puVar9 != (ushort *)0x0)) {
        FUN_004e44e0((int)puVar9);
      }
      if ((1 < (int)&DAT_011c8e54 - (int)unaff_EBX) && (unaff_EBX != (undefined1 *)0x0)) {
        FUN_004e44e0((int)unaff_EBX);
      }
      if ((1 < (int)local_1c - (int)puStack_24) && (puStack_24 != (undefined1 *)0x0)) {
        FUN_004e44e0((int)puStack_24);
      }
      return 0;
    }
  }
  pvVar6 = (void *)FUN_004e4500(100,"Services/GameHost/sCreateCSVFile",0);
  if (pvVar6 != (void *)0x0) {
    piVar8 = FUN_009d3b90(pvVar6,(short *)puVar9,(undefined4 *)0x0);
  }
  if ((int *)&stack0xffffffbc != piVar8 + 7) {
    FUN_00405910(piVar8 + 7,unaff_EBX,&DAT_011c8e54);
  }
  FUN_007cb580(piVar8);
  uVar7 = (**(code **)(*piVar1 + 200))(piVar8,0x40);
  if ((2 < (int)((int)local_34 - (int)puVar9 & 0xfffffffeU)) && (puVar9 != (ushort *)0x0)) {
    FUN_004e44e0((int)puVar9);
  }
  if ((1 < (int)unaff_EBX - unaff_ESI) && (unaff_ESI != 0)) {
    FUN_004e44e0(unaff_ESI);
  }
  if ((1 < (int)puStack_24 - iStack_2c) && (iStack_2c != 0)) {
    FUN_004e44e0(iStack_2c);
  }
  return uVar7;
}


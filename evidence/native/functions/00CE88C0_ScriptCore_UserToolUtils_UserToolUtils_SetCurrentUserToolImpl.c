/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189de8 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_SetCurrentUserToolImpl [assembly=ScriptCore
   token=0x06000BE5; toolID: System.Int32, arg1: Sims3.SimIFace.ResourceKey, arg2:
   Sims3.SimIFace.ResourceKey, arg3: Sims3.SimIFace.ResourceKey, arg4: System.String, flags:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_UserToolUtils__UserToolUtils_SetCurrentUserToolImpl
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
               undefined4 param_13,int param_14,undefined4 param_15)

{
  short sVar1;
  int iVar2;
  void *this;
  int *piVar3;
  short *psVar4;
  short *psVar5;
  undefined1 *puStack_c8;
  undefined1 *puStack_c4;
  undefined2 *puStack_c0;
  char *pcStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined **appuStack_88 [2];
  undefined2 uStack_80;
  undefined2 uStack_7e;
  undefined **appuStack_68 [2];
  ushort uStack_60;
  undefined2 uStack_5e;
  undefined **appuStack_48 [2];
  ushort uStack_40;
  undefined2 uStack_3e;
  undefined **appuStack_28 [2];
  ushort uStack_20;
  undefined2 uStack_1e;
  undefined4 uStack_8;
  
  this = (void *)FUN_00cef500();
  if (this == (void *)0x0) {
    return false;
  }
  uStack_98 = param_4;
  uStack_94 = param_5;
  uStack_90 = param_2;
  uStack_8c = param_3;
  uStack_b8 = param_8;
  uStack_b4 = param_9;
  uStack_b0 = param_6;
  uStack_ac = param_7;
  uStack_a8 = param_12;
  uStack_a4 = param_13;
  uStack_a0 = param_10;
  uStack_9c = param_11;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_14 == 0) || (piVar3 == (int *)0x0)) {
    psVar4 = (short *)0x0;
  }
  else {
    psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(param_14);
  }
  appuStack_88[0] = &PTR_FUN_00fba6f4;
  uStack_80 = 0;
  uStack_7e = 0;
  appuStack_68[0] = &PTR_FUN_00fba6f4;
  uStack_60 = 0;
  uStack_5e = 0;
  appuStack_48[0] = &PTR_FUN_00fba6f4;
  uStack_40 = 0;
  uStack_3e = 0;
  appuStack_28[0] = &PTR_FUN_00fba6f4;
  uStack_20 = 0;
  uStack_1e = 0;
  uStack_8 = 0;
  FUN_004f59c0(appuStack_88,0x201,0,&uStack_98,0x10,1);
  if ((uStack_60 & 4) != 0) {
    FUN_004f5760(appuStack_68,'\x01');
  }
  FUN_004f59c0(appuStack_68,0x201,0,&uStack_b8,0x10,1);
  if ((uStack_40 & 4) != 0) {
    FUN_004f5760(appuStack_48,'\x01');
  }
  FUN_004f59c0(appuStack_48,0x201,0,&uStack_a8,0x10,1);
  if (psVar4 != (short *)0x0) {
    sVar1 = *psVar4;
    puStack_c8 = &DAT_011c8e54;
    puStack_c4 = &DAT_011c8e54;
    pcStack_bc = "World/MiscLotUtils/ParseKeyFromString";
    puStack_c0 = &DAT_011c8e56;
    psVar5 = psVar4;
    while (sVar1 != 0) {
      psVar5 = psVar5 + 1;
      sVar1 = *psVar5;
    }
    FUN_00408d60(&puStack_c8,psVar4,psVar4 + ((int)psVar5 - (int)psVar4 >> 1));
    if ((uStack_20 & 4) != 0) {
      FUN_004f5760(appuStack_28,'\x01');
    }
    FUN_004f59c0(appuStack_28,0x13,9,&puStack_c8,0x10,1);
    if ((2 < (int)((int)puStack_c0 - (int)puStack_c8 & 0xfffffffeU)) &&
       (puStack_c8 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)puStack_c8);
    }
  }
  uStack_8 = param_15;
  FUN_00ceffc0(this,param_1,(int)appuStack_88);
  iVar2 = *(int *)((int)this + 0x30);
  FUN_00c9fa30(appuStack_88);
  return iVar2 == param_1;
}


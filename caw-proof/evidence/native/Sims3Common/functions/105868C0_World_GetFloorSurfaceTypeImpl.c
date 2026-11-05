/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetFloorSurfaceTypeImpl. Export ordinal(s):
   1326. Entry VA: 0x105868c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CB5. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
World_GetFloorSurfaceTypeImpl
          (int param_1,int param_2,undefined2 *param_3,undefined4 param_4,float param_5)

{
  void *this;
  int *piVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined2 **ppuVar4;
  int iVar5;
  void *pvVar6;
  LPCWSTR pWVar7;
  int unaff_EBX;
  char local_b4 [4];
  undefined2 *local_b0;
  undefined *puStack_ac;
  undefined2 *puStack_a8;
  char *pcStack_a4;
  undefined4 uStack_9c;
  undefined1 local_94 [4];
  undefined2 *local_90;
  undefined4 uStack_8c;
  float fStack_88;
  undefined2 *puStack_84;
  undefined **local_7c;
  undefined **local_78;
  int local_74;
  undefined **local_70 [2];
  undefined2 local_68;
  undefined2 local_66;
  uint local_50;
  int local_4c;
  int local_48;
  int local_44;
  
                    /* 0x5868c0  1326  World_GetFloorSurfaceTypeImpl */
  this = DAT_10c700c4;
  if (((DAT_10c700c4 != (void *)0x0) &&
      (piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0), piVar1 != (int *)0x0)) &&
     (uVar2 = FUN_100c4a50(piVar1,(float)param_3,param_5), (char)uVar2 != '\0')) {
    local_7c = DAT_10aae184;
    local_78 = DAT_10aae184;
    puStack_a8 = (undefined2 *)param_5;
    pcStack_a4 = (char *)param_3;
    puStack_ac = (undefined *)param_4;
    local_b0 = param_3;
    local_74 = 0;
    local_90 = param_3;
    uStack_8c = param_4;
    fStack_88 = param_5;
    puStack_84 = param_3;
    FUN_100a30e0(piVar1,(float *)&local_90,(float *)&local_7c);
    local_b4[0] = -1;
    local_b4[1] = 0xff;
    local_b4[2] = 0;
    local_b4[3] = 0xff;
    FUN_100be930((float *)&local_7c,local_b4);
    pvVar6 = (void *)piVar1[0xa4];
    FUN_100c2750(&local_50);
    FUN_10051590(pvVar6,local_b4,&local_50);
    if (((local_50 == DAT_10c6ed80) && (local_48 == DAT_10c6ed88)) &&
       ((local_44 == DAT_10c6ed8c && (local_4c == DAT_10c6ed84)))) {
      pvVar6 = (void *)thunk_FUN_10627370();
      uVar3 = FUN_10240a10(this,(float)param_3,param_5,local_74,0x27);
      piVar1 = (int *)FUN_1055b120();
      pWVar7 = (LPCWSTR)FUN_1061b110(pvVar6,uVar3,(undefined4 *)0x0);
      pcStack_a4 = "World/WorldHost";
      local_b0 = (undefined2 *)&_Dst_10ca8244;
      puStack_ac = &_Dst_10ca8244;
      puStack_a8 = &DAT_10ca8246;
      ppuVar4 = FUN_10926db0(&local_90,pWVar7,0xffffffff,(char *)0x0);
      if (ppuVar4 != &local_b0) {
        FUN_1001f8c0(&local_b0,*ppuVar4,(int *)ppuVar4[1]);
      }
      if ((2 < (int)((int)fStack_88 - (int)local_90 & 0xfffffffeU)) &&
         (local_90 != (undefined2 *)0x0)) {
        FUN_10918e90((int)local_90);
      }
      local_70[0] = &PTR_FUN_10aca5b4;
      local_66 = 0x13;
      local_68 = 0xb;
      FUN_10928b90(local_70,0x13,9,&local_b0,0x10,1);
      iVar5 = *piVar1;
    }
    else {
      uVar3 = FUN_10265600(DAT_10c70534,&local_50);
      if (uVar3 == 0) {
        return 0;
      }
      piVar1 = (int *)FUN_1055b120();
      local_b0 = (undefined2 *)&_Dst_10ca8244;
      puStack_ac = &_Dst_10ca8244;
      pcStack_a4 = "World/WorldHost";
      puStack_a8 = &DAT_10ca8246;
      ppuVar4 = FUN_10926ef0(&local_90,(undefined4 *)(uVar3 + 0xa4));
      if (ppuVar4 != &local_b0) {
        FUN_1001f8c0(&local_b0,*ppuVar4,(int *)ppuVar4[1]);
      }
      if ((2 < (int)((int)fStack_88 - (int)local_90 & 0xfffffffeU)) &&
         (local_90 != (undefined2 *)0x0)) {
        FUN_10918e90((int)local_90);
      }
      FUN_102c0de0(local_70,&local_b0);
      iVar5 = *piVar1;
    }
    (**(code **)(iVar5 + 0x50))(local_70,local_94);
    local_78 = &PTR_FUN_10aca5b4;
    if (((uint)local_70[0] & 4) != 0) {
      FUN_10928a90(&local_78,'\0');
    }
    if ((2 < (int)((int)local_b0 - unaff_EBX & 0xfffffffeU)) && (unaff_EBX != 0)) {
      FUN_10918e90(unaff_EBX);
    }
    return uStack_9c;
  }
  return 0;
}


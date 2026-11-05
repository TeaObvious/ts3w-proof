/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_ExportPatternThumbnail. Export
   ordinal(s): 2508. Entry VA: 0x10994ee0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003F9. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
ThumbnailManager_ExportPatternThumbnail
          (uint param_1,uint param_2,void *param_3,void *param_4,size_t param_5,int param_6,
          uint param_7)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  void *this;
  int iVar4;
  void *this_00;
  undefined4 *puVar5;
  uint uVar6;
  short *in_stack_00000030;
  uint local_3c;
  DWORD DStack_34;
  short *local_30;
  undefined *local_2c;
  undefined2 *local_28;
  char *local_24;
  undefined4 local_20;
  undefined4 local_1c;
  int local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
                    /* 0x994ee0  2508  ThumbnailManager_ExportPatternThumbnail */
  this = (void *)FUN_100f8460();
  if (this == (void *)0x0) {
    return 0;
  }
  FUN_1055daa0(&local_10,(undefined4 *)&stack0x00000020);
  uVar6 = 0;
  local_3c = 1;
  do {
    if (((local_3c & param_7) != 0) &&
       (iVar4 = FUN_100ff520(this,param_1,param_2,param_3,param_4,param_5,param_6), uVar3 = local_c,
       uVar2 = local_10, iVar4 != 0)) {
      local_30 = (short *)&_Dst_10ca8244;
      local_2c = &_Dst_10ca8244;
      local_24 = "CSHost/ThumbnailManger/ExportModelThumbnail/keyName";
      local_28 = &DAT_10ca8246;
      local_18 = FUN_10788af0((int)&local_10);
      local_18 = local_18 + uVar6;
      local_20 = uVar2;
      local_1c = uVar3;
      local_14 = 0;
      FUN_108e4b30((int)&local_20,&local_30,(int *)0x0,(int *)0x0,(short *)0x0);
      this_00 = (void *)FUN_10918eb0(0x34,"ThumbnailManager_ExportPatternThumbnail",0);
      if (this_00 == (void *)0x0) {
        puVar5 = (undefined4 *)0x0;
      }
      else {
        puVar5 = FUN_10994970(this_00,iVar4,local_30,in_stack_00000030);
        if (puVar5 != (undefined4 *)0x0) {
          (**(code **)puVar5[2])();
        }
      }
      FUN_100fcc10(this,(int)puVar5);
      cVar1 = *(char *)(puVar5 + 3);
      while (cVar1 == '\0') {
        DStack_34 = 1;
        FUN_109162d0(&DStack_34);
        App3D_UpdateApp3D(DAT_10abe5cc,DAT_10abe5cc);
        cVar1 = *(char *)(puVar5 + 3);
      }
      if (*(char *)((int)puVar5 + 0xd) == '\0') {
        (**(code **)(puVar5[2] + 4))();
        if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (short *)0x0))
        {
          local_30 = (short *)FUN_10918e90((int)local_30);
        }
        return (uint)local_30 & 0xffffff00;
      }
      (**(code **)(puVar5[2] + 4))();
      if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (short *)0x0)) {
        FUN_10918e90((int)local_30);
      }
    }
    uVar6 = uVar6 + 1;
    local_3c = local_3c * 2;
    if (3 < uVar6) {
      return CONCAT31((int3)(local_3c >> 8),1);
    }
  } while( true );
}


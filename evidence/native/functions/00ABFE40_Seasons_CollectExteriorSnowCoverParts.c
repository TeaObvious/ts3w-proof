/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_CollectExteriorSnowCoverParts:


/* Analyst-assigned name. Original snow-cover subset admission from top lot level downward. Visits
   exterior/outdoor room tile parts; own B94E00 roof and above-floor predicates and ground-height
   admission decide cover. Distinct from generic ACF100 eave shelter query. Output compressed tile
   vector ABI remains inferred. */

void __thiscall Seasons_CollectExteriorSnowCoverParts(void *this,int *param_1,int param_2)

{
  bool bVar1;
  ushort uVar2;
  void *_Dst;
  undefined4 uVar3;
  byte *pbVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  float10 fVar8;
  undefined4 local_4c;
  void *local_48;
  int local_44;
  float local_40;
  uint local_3c;
  void *local_38;
  undefined2 local_34;
  undefined1 local_32;
  undefined4 local_31;
  float local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  float fStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;

  if (DAT_011edbc4 != 0) {
    fVar8 = FUN_00c61090(DAT_011edbc4);
    uVar5 = *(int *)((int)this + 0x174) * *(int *)((int)this + 0x178);
    local_20 = *(undefined4 *)((int)this + 400);
    fStack_1c = *(float *)((int)this + 0x194);
    uStack_18 = *(undefined4 *)((int)this + 0x198);
    uStack_14 = *(undefined4 *)((int)this + 0x19c);
    local_40 = (float)(fVar8 - (float10)fStack_1c);
    if (uVar5 == 0) {
      local_48 = (void *)0x0;
      _Dst = (void *)0x0;
    }
    else {
      _Dst = (void *)FUN_004e4500(uVar5,"Lot/GetExteriorTilesUnderRoofAndFloors/roofFootprints",0);
      local_48 = _Dst;
      memset(_Dst,0,uVar5);
    }
    if ((*(int *)((int)this + 0x2ac) != 0) && (param_1[1] - *param_1 >> 5 == param_2)) {
      local_44 = 0;
      if (0 < *(int *)((int)this + 0x178)) {
        do {
          iVar6 = 0;
          if (0 < *(int *)((int)this + 0x174)) {
            do {
              iVar7 = 0;
              do {
                local_4c = CONCAT13('\x01' << ((byte)iVar7 & 0x1f),
                                    (int3)CONCAT31((int3)local_44,(char)iVar6)) & 0xff00ffff;
                local_2c = -1.0;
                local_28 = 0xbf800000;
                local_24 = 0;
                FUN_00af81a0((char *)&local_4c,&local_2c);
                uVar3 = FUN_00b94e00(*(void **)((int)this + 0x2ac),&local_2c,(LPCRITICAL_SECTION)0x1
                                     ,'\0');
                if ((char)uVar3 != '\0') {
                  pbVar4 = (byte *)((int)local_48 + iVar6 + *(int *)((int)this + 0x174) * local_44);
                  *pbVar4 = *pbVar4 | local_4c._3_1_;
                }
                iVar7 = iVar7 + 1;
              } while (iVar7 < 4);
              iVar6 = iVar6 + 1;
              _Dst = local_48;
            } while (iVar6 < *(int *)((int)this + 0x174));
          }
          local_44 = local_44 + 1;
        } while (local_44 < *(int *)((int)this + 0x178));
      }
      for (local_44 = *(int *)((int)this + 0x180); -1 < local_44; local_44 = local_44 + -1) {
        local_38 = (void *)(local_44 * 0x20 + *param_1);
        local_4c = 0;
        if (0 < *(int *)((int)this + 0x178)) {
          do {
            iVar6 = 0;
            if (0 < *(int *)((int)this + 0x174)) {
              do {
                local_48 = (void *)0x0;
                do {
                  local_32 = (undefined1)local_44;
                  local_34._1_1_ = (char)local_4c;
                  local_34._0_1_ = (char)iVar6;
                  local_31 = CONCAT31(local_31._1_3_,'\x01' << ((byte)local_48 & 0x1f));
                  local_2c = -1.0;
                  local_28 = 0xbf800000;
                  local_24 = 0;
                  FUN_00af81a0((char *)&local_34,&local_2c);
                  uVar3 = FUN_00b94e00(*(void **)((int)this + 0x2ac),&local_2c,
                                       (LPCRITICAL_SECTION)0x1,'\x01');
                  if ((char)uVar3 != '\0') {
                    pbVar4 = (byte *)((int)_Dst + iVar6 + *(int *)((int)this + 0x174) * local_4c);
                    *pbVar4 = *pbVar4 | (byte)local_31;
                  }
                  uVar5 = FUN_00a8e170(*(void **)((int)this + 0x290),&local_34,(byte)local_31,1);
                  if ((char)uVar5 != '\0') {
                    if ((*(byte *)((int)_Dst + iVar6 + *(int *)((int)this + 0x174) * local_4c) &
                        (byte)local_31) != 0) {
                      uVar2 = FUN_00b470e0(*(void **)((int)this + 0x298),(char *)&local_34,0,'\x01')
                      ;
                      if ((((uVar2 == 0) ||
                           (bVar1 = FUN_00b4c3e0(*(void **)((int)this + 0x298),(uint)uVar2,1), bVar1
                           )) && (uVar3 = FUN_00acf820(this,(char *)&local_34,'\x01',
                                                       (undefined1 *)0x0), (char)uVar3 == '\0')) &&
                         ((local_44 != 0 ||
                          (fVar8 = FUN_00a8c690(*(void **)((int)this + 0x290),&local_2c),
                          (float10)local_40 + (float10)1.0 <= fVar8)))) {
                        local_3c = local_3c & 0xffffff00;
                        FUN_00a56160(local_38,&local_20,(char *)&local_34);
                      }
                    }
                    pbVar4 = (byte *)((int)_Dst + iVar6 + *(int *)((int)this + 0x174) * local_4c);
                    *pbVar4 = *pbVar4 | (byte)local_31;
                  }
                  local_48 = (void *)((int)local_48 + 1);
                } while ((int)local_48 < 4);
                iVar6 = iVar6 + 1;
              } while (iVar6 < *(int *)((int)this + 0x174));
            }
            local_4c = local_4c + 1;
          } while ((int)local_4c < *(int *)((int)this + 0x178));
        }
      }
    }
    if (_Dst != (void *)0x0) {
      FUN_004e44e0((int)_Dst);
    }
  }
  return;
}



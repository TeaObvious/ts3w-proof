/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 audio callback instruction review. ECX is audio interface base+4; on outer
   message03A127DC reads inner event at payload+8,soundId+10,stopReason+18, resolves ownerGUID via
   separate map, calls finish helper then dispatcher on base this-4. Other branches handle many
   audio events and are retained without full semantic claims. Return predicates use AL; upperEAX
   unspecified on those paths. */

uint __thiscall Audio_HandleManagerEvent(void *this,uint messageKey,void *payload)

{
  void *pvVar1;
  short sVar2;
  undefined4 in_EAX;
  void *pvVar3;
  undefined4 uVar4;
  uint extraout_EAX;
  undefined *puVar5;
  DWORD DVar6;
  int *piVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  int iVar11;
  uint uVar12;
  float fStack_64;
  TS3WPortalXZLevel local_60;
  float fStack_54;
  uint local_50;
  uint local_4c;
  TS3WPortalXZLevel local_48 [2];
  float fStack_2c;
  int iStack_28;
  float fStack_24;
  float fStack_20;
  
  if (messageKey < 0x38e4e2a) {
    if (messageKey == 0x38e4e29) {
      *(bool *)((int)this + 0x27d05) = *(int *)((int)payload + 0x158) == 300;
      if (*(int *)((int)this + 0x27bec) != 0) {
        *(undefined1 *)(*(int *)((int)this + 0x27bec) + 0xa61) = 1;
        uVar12 = FUN_008b11a0(this,0x38e4e29);
        return uVar12;
      }
    }
    else if (messageKey < 0x1ee1007) {
      if (messageKey == 0x1ee1006) {
LAB_00865f3a:
        if (*(char *)((int)this + 0x27d04) != '\0') {
          in_EAX = FUN_00865560((void *)((int)this + -4),'\x01');
        }
        return CONCAT31((int3)((uint)in_EAX >> 8),1);
      }
      if ((undefined *)messageKey == &DAT_00ff0ec1) {
        piVar7 = (int *)((int)this + -4);
        (**(code **)(*(int *)((int)this + -4) + 0x44))(0x3475365);
        if ((*(byte *)((int)payload + 0x88) & 1) != 0) {
          (**(code **)(*piVar7 + 0x54))(0x347537e,*(undefined4 *)((int)payload + 8),0);
        }
        if ((*(uint *)((int)payload + 0x88) >> 1 & 1) != 0) {
          (**(code **)(*piVar7 + 0x50))
                    (0x3475381,*(undefined4 *)((int)payload + 0x10),
                     *(undefined4 *)((int)payload + 0x14));
        }
        iVar11 = 0x3475385;
        (**(code **)(*piVar7 + 0x4c))(0x3475385,*(undefined4 *)((int)payload + 0x18));
        if ((*(uint *)((int)payload + 0x88) >> 4 & 1) != 0) {
          (**(code **)(*piVar7 + 0x4c))(0x347538c,*(undefined4 *)((int)payload + 0x28));
        }
        if ((*(uint *)((int)payload + 0x88) >> 8 & 1) != 0) {
          (**(code **)(*piVar7 + 0x58))(0x347539c,*(undefined4 *)((int)payload + 0x48));
        }
        uVar12 = *(uint *)((int)payload + 0x88);
        if ((((uVar12 >> 5 & 1) != 0) && ((uVar12 >> 6 & 1) != 0)) && ((uVar12 >> 7 & 1) != 0)) {
          fVar9 = *(float *)((int)payload + 0x30);
          local_60.level = *(int *)((int)payload + 0x38);
          fVar10 = *(float *)((int)payload + 0x40);
          fStack_54 = fVar9;
          (**(code **)(*piVar7 + 0x48))(0x3475391,fVar9);
          (**(code **)(*piVar7 + 0x48))(0x3475395,local_60.x);
          (**(code **)(*piVar7 + 0x48))(0x3475398,fVar9);
          if (DAT_011edbc4 != (void *)0x0) {
            pvVar3 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,fStack_54,fVar10);
            if (pvVar3 != (void *)0x0) {
              local_60.z = 0.0;
              pvVar1 = *(void **)((int)pvVar3 + 0x298);
              if (pvVar1 != (void *)0x0) {
                local_48[0].x = DAT_00fab218;
                local_48[0].z = DAT_00fab218;
                local_60.x = fStack_54;
                local_48[0].level = 0;
                fStack_2c = fStack_54;
                iStack_28 = local_60.level;
                fStack_20 = fStack_54;
                fStack_24 = fVar10;
                Lot_WorldPositionToPortalLocalXZLevel(pvVar3,&fStack_2c,local_48);
                sVar2 = LotRoom_ResolveForLocalLocation(pvVar1,&local_48[0].x,0,1);
                local_60.z = (float)(int)sVar2;
                fStack_64 = fVar10;
              }
              (**(code **)(*piVar7 + 0x58))(0x2081b4e6,pvVar3);
              (**(code **)(*piVar7 + 0x48))(0x5dbed967,(float)(int)fStack_64);
              (**(code **)(*piVar7 + 0x48))(0x39ff78d1,(float)iVar11);
            }
          }
        }
        uVar4 = (**(code **)(*piVar7 + 0x68))();
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
      if (messageKey == 0xff0f31) {
        piVar7 = (int *)((int)this + -4);
        uVar12 = 0x3475373;
        (**(code **)(*(int *)((int)this + -4) + 0x44))(0x3475373);
        fVar9 = *(float *)((int)payload + 8);
        fVar10 = 5.857672e-37;
        (**(code **)(*piVar7 + 0x4c))(0x3475385,fVar9);
        uVar4 = *(undefined4 *)((int)payload + 0x10);
        local_60.z = *(float *)((int)payload + 0x18);
        fVar8 = 5.8576773e-37;
        (**(code **)(*piVar7 + 0x48))(0x3475391,uVar4);
        (**(code **)(*piVar7 + 0x48))(0x3475395);
        (**(code **)(*piVar7 + 0x48))(0x3475398,uVar4);
        if (DAT_011edbc4 != (void *)0x0) {
          pvVar3 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,fVar8,fStack_64);
          if (pvVar3 != (void *)0x0) {
            pvVar1 = *(void **)((int)pvVar3 + 0x298);
            if (pvVar1 != (void *)0x0) {
              local_60.x = DAT_00fab218;
              local_60.z = DAT_00fab218;
              local_60.level = 0;
              fStack_54 = fVar8;
              local_50 = uVar12;
              local_48[0].x = fVar8;
              Lot_WorldPositionToPortalLocalXZLevel(pvVar3,&fStack_54,&local_60);
              LotRoom_ResolveForLocalLocation(pvVar1,&local_60.x,0,1);
              fVar10 = fStack_64;
              fVar9 = fVar8;
            }
            (**(code **)(*piVar7 + 0x58))(0x2081b4e6,pvVar3);
            (**(code **)(*piVar7 + 0x48))(0x5dbed967,(float)(int)fVar9);
            (**(code **)(*piVar7 + 0x48))(0x39ff78d1,(float)(int)fVar10);
          }
        }
        uVar4 = (**(code **)(*piVar7 + 0x68))();
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
    }
    else if (0x1ee1006 < messageKey) {
      if (messageKey < 0x1ee1009) {
        if (*(char *)((int)this + 0x27d04) != '\0') {
          in_EAX = FUN_00865560((void *)((int)this + -4),'\0');
        }
        return CONCAT31((int3)((uint)in_EAX >> 8),1);
      }
      if (messageKey == 0x1ee1010) goto LAB_00865f3a;
    }
  }
  else if (messageKey < 0xf0707d66) {
    if (messageKey == 0xf0707d65) {
      puVar5 = FUN_0059b580((int)payload);
      FUN_00864780((void *)((int)this + -4),(int)puVar5);
      uVar12 = FUN_008b11a0(this,0xf0707d65);
      return uVar12;
    }
    if (messageKey == 0x3a127dc) {
      local_4c = *(uint *)((int)payload + 8);
      uVar12 = *(uint *)((int)payload + 0x10);
      local_48[0].x = *(float *)((int)payload + 0x18);
      local_60.x = 0.0;
      local_60.z = 0.0;
      local_50 = uVar12;
      piVar7 = (int *)FUN_005325c0((void *)((int)this + 0x27bcc),&local_48[0].z,&local_50);
      iVar11 = *piVar7;
      if (iVar11 != *(int *)(*(int *)((int)this + 0x27bd0) + *(int *)((int)this + 0x27bd4) * 4)) {
        local_60.x = *(float *)(iVar11 + 8);
        local_60.z = *(float *)(iVar11 + 0xc);
        FUN_00864db0(local_60.x,local_60.z,local_4c,uVar12);
      }
      Audio_DispatchFinishedSoundCallbackEvent
                ((void *)((int)this + -4),local_4c,uVar12,(ulonglong *)&local_60,(uint)local_48[0].x
                );
      return extraout_EAX & 0xffffff00;
    }
    if (messageKey == 0x487c406) {
      FUN_008647d0((void *)((int)this + -4),*(int *)((int)payload + 8));
      uVar12 = FUN_008b11a0(this,0x487c406);
      return uVar12;
    }
  }
  else if (messageKey == 0xfc6aa1fe) {
    if (payload != (void *)0x0) {
      DVar6 = GetCurrentProcessId();
      if (*(DWORD *)((int)payload + 8) != DVar6) {
        ScriptCore.Animation::Animation_SetMissingAnimationCallback();
      }
    }
    FUN_00864e00((int)this + -4);
  }
  uVar12 = FUN_008b11a0(this,messageKey);
  return uVar12;
}


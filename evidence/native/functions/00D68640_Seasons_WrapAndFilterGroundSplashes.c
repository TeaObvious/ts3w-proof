/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Wraps existing ground splash positions into camera-centered20m square.
   Requeries ground after wrap, removes covered positions and hail on floors, otherwise moves
   effect. Retains each effect's hail/rain classification rather than replacing it on a weather type
   switch. */

void __fastcall Seasons_WrapAndFilterGroundSplashes(int param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  bool bVar8;
  undefined4 uVar9;
  void *this;
  float *pfVar10;
  float *pfVar11;
  double dVar12;
  char local_79;
  int local_78;
  float *local_74;
  float *local_70;
  float local_6c;
  float local_68;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pfVar10 = *(float **)(param_1 + 0xc);
  local_70 = *(float **)(param_1 + 0x10);
  local_78 = param_1;
  local_74 = pfVar10;
  if (pfVar10 != local_70) {
    do {
      local_60 = *pfVar10;
      fStack_5c = pfVar10[1];
      fStack_58 = pfVar10[2];
      fStack_54 = pfVar10[3];
      local_6c = *(float *)(param_1 + 0x1c);
      bVar8 = false;
      local_50 = local_60;
      fStack_4c = fStack_5c;
      fStack_48 = fStack_58;
      fStack_44 = fStack_54;
      if ((local_60 < local_6c) ||
         (*(float *)(param_1 + 0x20) <= local_60 && local_60 != *(float *)(param_1 + 0x20))) {
        bVar8 = true;
        local_30 = local_60;
        fStack_2c = fStack_5c;
        fStack_28 = fStack_58;
        fStack_24 = fStack_54;
        dVar12 = floor((double)((local_60 - local_6c) * 0.05));
        local_60 = local_50 - (float)dVar12 * 20.0;
        fStack_5c = fStack_2c;
        fStack_58 = fStack_28;
        fStack_54 = fStack_24;
        local_30 = local_60;
      }
      local_68 = *(float *)(param_1 + 0x24);
      local_40 = local_60;
      fStack_3c = fStack_5c;
      fStack_38 = fStack_58;
      fStack_34 = fStack_54;
      if ((fStack_58 < local_68) ||
         (*(float *)(param_1 + 0x28) <= fStack_58 && fStack_58 != *(float *)(param_1 + 0x28))) {
        local_20 = local_60;
        fStack_1c = fStack_5c;
        fStack_18 = fStack_58;
        fStack_14 = fStack_54;
        dVar12 = floor((double)((fStack_58 - local_68) * 0.05));
        fStack_58 = fStack_38 - (float)dVar12 * 20.0;
        local_60 = local_20;
        fStack_5c = fStack_1c;
        fStack_54 = fStack_14;
        fStack_18 = fStack_58;
LAB_00d6872e:
        uVar9 = FUN_00d67af0(&local_60,&local_79);
        if ((char)uVar9 != '\0') {
          uVar9 = FUN_00d67bf0(&local_60);
          if (((char)uVar9 != '\0') &&
             ((*(char *)((int)pfVar10 + 0x15) == '\0' || (local_79 == '\0')))) {
            FUN_00d67ca0(pfVar10,&local_60);
            goto LAB_00d6876c;
          }
        }
        if (pfVar10[4] != 0.0) {
          this = ObjectRegistry_GetGlobal();
          if (this != (void *)0x0) {
            ObjectRegistry_RemoveGuid(this,*(ulonglong *)((int)pfVar10[4] + 8));
          }
          puVar3 = (undefined4 *)pfVar10[4];
          if (puVar3 != (undefined4 *)0x0) {
            piVar1 = puVar3 + 1;
            pfVar10[4] = 0.0;
            LOCK();
            iVar2 = *piVar1;
            *piVar1 = *piVar1 + -1;
            UNLOCK();
            if (iVar2 == 1) {
              LOCK();
              *piVar1 = 1;
              UNLOCK();
              (**(code **)*puVar3)();
            }
          }
        }
        local_70 = *(float **)(param_1 + 0x10);
        pfVar11 = pfVar10 + 8;
        if (pfVar11 < local_70) {
          pfVar10 = pfVar10 + 4;
          do {
            fVar5 = pfVar11[1];
            fVar6 = pfVar11[2];
            fVar7 = pfVar11[3];
            pfVar10[-4] = *pfVar11;
            pfVar10[-3] = fVar5;
            pfVar10[-2] = fVar6;
            pfVar10[-1] = fVar7;
            puVar3 = (undefined4 *)pfVar10[8];
            puVar4 = (undefined4 *)*pfVar10;
            if (puVar3 != puVar4) {
              if (puVar3 != (undefined4 *)0x0) {
                LOCK();
                puVar3[1] = puVar3[1] + 1;
                UNLOCK();
              }
              *pfVar10 = (float)puVar3;
              if (puVar4 != (undefined4 *)0x0) {
                piVar1 = puVar4 + 1;
                LOCK();
                iVar2 = *piVar1;
                *piVar1 = *piVar1 + -1;
                UNLOCK();
                if (iVar2 == 1) {
                  LOCK();
                  *piVar1 = 1;
                  UNLOCK();
                  (**(code **)*puVar4)();
                }
              }
            }
            *(undefined1 *)(pfVar10 + 1) = *(undefined1 *)(pfVar10 + 9);
            *(undefined1 *)((int)pfVar10 + 5) = *(undefined1 *)((int)pfVar10 + 0x25);
            pfVar11 = pfVar11 + 8;
            pfVar10 = pfVar10 + 8;
          } while (pfVar11 != local_70);
          pfVar10 = local_74;
          param_1 = local_78;
        }
        *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0x10) + -0x20;
        puVar3 = *(undefined4 **)(*(int *)(param_1 + 0x10) + 0x10);
        if (puVar3 != (undefined4 *)0x0) {
          piVar1 = puVar3 + 1;
          LOCK();
          iVar2 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar2 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            if (puVar3 != (undefined4 *)0x0) {
              (**(code **)*puVar3)();
            }
          }
        }
        local_70 = *(float **)(param_1 + 0x10);
      }
      else {
        if (bVar8) goto LAB_00d6872e;
LAB_00d6876c:
        pfVar10 = pfVar10 + 8;
        local_74 = pfVar10;
      }
    } while (pfVar10 != local_70);
  }
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: checks the selected preset slot, invokes Lot.UpdatePresetLevel from stored
   floor context, and chooses instant or smooth recall by camera group. Main smooth branch loads
   exact float 2.0 and calls 00974300 at 0097FBA7-0097FBC0; saved sky pitch then calls 009732D0.
   Instruction stack accounting governs these calls. Raw instruction proof:
   0097F9A0_CameraPreset_RestoreSlot.asm. Reference
   original PC 1.67 TS3W.exe. */

void CameraPreset_RestoreSlot(byte param_1,char param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int *this;
  void *pvVar4;
  undefined **ppuVar5;
  int *local_94;
  int *local_90;
  int *local_8c;
  int *local_88;
  undefined **ppuStack_80;
  undefined *puStack_7c;
  undefined *puStack_78;
  undefined *puStack_74;
  undefined **local_60;
  undefined *puStack_5c;
  undefined *puStack_58;
  undefined *puStack_54;
  undefined **appuStack_50 [2];
  undefined2 uStack_48;
  undefined2 uStack_46;
  undefined **appuStack_30 [2];
  undefined2 uStack_28;
  undefined2 uStack_26;
  
  iVar1 = FUN_00969bd0();
  iVar2 = FUN_00f21ff0(iVar1);
  iVar1 = *(int *)(iVar2 + 0x90);
  piVar3 = (int *)FUN_00513de0(iVar2);
  if (piVar3 == (int *)0x0) {
    local_94 = (int *)0x0;
    local_88 = (int *)0x0;
    local_8c = (int *)0x0;
    local_90 = (int *)0x0;
    this = (int *)0x0;
  }
  else {
    this = (int *)(**(code **)(*piVar3 + 0xc))(0x110fdd89);
    (**(code **)(*piVar3 + 0xc))(0x4d394edb);
    (**(code **)(*piVar3 + 0xc))(0x14bc619b);
    local_90 = (int *)(**(code **)(*piVar3 + 0xc))(0xc49dcd29);
  }
  iVar1 = iVar1 * 5 + (uint)param_1;
  if (*(char *)(iVar1 + 0xb80 + (int)local_60) != '\0') {
    ppuVar5 = local_60 + (iVar1 + 1) * 0x10;
    if (DAT_011edbc4 != (void *)0x0) {
      ppuStack_80 = (undefined **)ppuVar5[4];
      puStack_7c = ppuVar5[5];
      puStack_78 = ppuVar5[6];
      puStack_74 = ppuVar5[7];
      local_60 = ppuStack_80;
      puStack_5c = puStack_7c;
      puStack_58 = puStack_78;
      puStack_54 = puStack_74;
      pvVar4 = FUN_00c68940(DAT_011edbc4,(float)ppuStack_80,(float)puStack_78,DAT_00fe92f8);
      this = local_94;
      if ((pvVar4 != (void *)0x0) &&
         (piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC(), piVar3 != (int *)0x0)) {
        puStack_5c = *(undefined **)((int)pvVar4 + 0x4c);
        local_60 = *(undefined ***)((int)pvVar4 + 0x48);
        pvVar4 = FUN_004f63d0(&ppuStack_80,&local_60);
        uStack_48 = 0;
        uStack_46 = 0;
        appuStack_50[0] = &PTR_FUN_00fba6f4;
        FUN_004f64b0(appuStack_50,(int)pvVar4);
        ppuStack_80 = &PTR_FUN_00fba6f4;
        if (((uint)puStack_78 & 4) != 0) {
          FUN_004f5760(&ppuStack_80,'\0');
        }
        pvVar4 = FUN_004f6340(&ppuStack_80,ppuVar5 + 8);
        uStack_28 = 0;
        uStack_26 = 0;
        appuStack_30[0] = &PTR_FUN_00fba6f4;
        FUN_004f64b0(appuStack_30,(int)pvVar4);
        ppuStack_80 = &PTR_FUN_00fba6f4;
        if (((uint)puStack_78 & 4) != 0) {
          FUN_004f5760(&ppuStack_80,'\0');
        }
        (**(code **)(*piVar3 + 0x138))
                  (&ppuStack_80,"Sims3.Gameplay.Core.Lot,Sims3GameplaySystems","UpdatePresetLevel",
                   appuStack_50,2);
        ppuStack_80 = &PTR_FUN_00fba6f4;
        if (((uint)puStack_78 & 4) != 0) {
          FUN_004f5760(&ppuStack_80,'\0');
        }
        FUN_004466e0(appuStack_50,0x20,2,FUN_004f5820);
      }
    }
    if (this == (int *)0x0) {
      if (local_88 == (int *)0x0) {
        if (local_8c == (int *)0x0) {
          if (local_90 == (int *)0x0) {
            return;
          }
          if (param_2 == '\0') {
            (**(code **)(*local_90 + 0x2c))(ppuVar5,ppuVar5 + 4);
            (**(code **)(*local_90 + 100))(ppuVar5[0xb]);
            (**(code **)(*local_90 + 0x38))(ppuVar5[0xc]);
            return;
          }
          FUN_0097bda0(local_90,(float *)ppuVar5,(float *)(ppuVar5 + 4),ppuVar5[0xc],ppuVar5[0xb],
                       DAT_00fab218);
          return;
        }
        local_88 = local_8c;
        if (param_2 != '\0') {
          FlyCamera_BeginSmoothRecall(local_8c,(float *)ppuVar5,(float *)(ppuVar5 + 4),DAT_0103fd88)
          ;
          return;
        }
      }
      else if (param_2 != '\0') {
        FUN_00979f50(local_88,(float *)ppuVar5,(float *)(ppuVar5 + 4),DAT_0103fd88);
        return;
      }
      (**(code **)(*local_88 + 0x2c))(ppuVar5,ppuVar5 + 4);
      return;
    }
    if (param_2 == '\0') {
      (**(code **)(*this + 0x2c))(ppuVar5,ppuVar5 + 4);
      if (*(char *)(ppuVar5 + 9) != '\0') {
        MainCamera_EnableSkyPitchImmediate(this,ppuVar5[10]);
        return;
      }
    }
    else {
      FUN_00974300(this,(float *)ppuVar5,(float *)(ppuVar5 + 4),DAT_0103fd88,'\0','\x01','\0','\x01'
                  );
      if (*(char *)(ppuVar5 + 9) != '\0') {
        puStack_74 = ppuVar5[10];
        ppuStack_80 = (undefined **)((float)puStack_74 * DAT_010473b0);
        puStack_7c = (undefined *)((float)puStack_74 * DAT_010473b0);
        puStack_78 = (undefined *)((float)puStack_74 * DAT_010473b0);
        puStack_74 = (undefined *)((float)puStack_74 * DAT_010473b0);
        FUN_009732d0(this,DAT_00fdeff4,(float)ppuStack_80,DAT_00fdeff4,DAT_0103fd88);
        return;
      }
    }
  }
  return;
}


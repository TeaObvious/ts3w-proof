/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 static instructions/callers: thiscall ECX tool plus lot and float X/Z/signed-DWORD level
   record on stack; RET8 and AL success. Admits pick level<=0, shift-like modes require negative
   pick. Nonshift modes expand to pick-1; bottom is sampled before bounds expansion. Lowest-level
   predicate also reads lot+4BC, selecting -1 versus -4; do not claim unconditional -4. Anchor uses
   AF7CC0, not a wire LotLocation. */

bool __thiscall BasementTool_BeginAtLotPick(void *this,void *param_1,float *param_2)

{
  LotXZLevel *pLVar1;
  float fVar2;
  bool bVar3;
  undefined4 uVar4;
  float10 fVar5;
  float local_e0 [4];
  float local_d0 [16];
  undefined1 local_90 [140];
  
  if ((((*(char *)((int)this + 0x5d) == '\0') && (param_1 != (void *)0x0)) &&
      (param_1 == *(void **)((int)this + 0xc))) && (fVar2 = param_2[2], (int)fVar2 < 1)) {
    if ((*(int *)((int)this + 0x60) == 0) || (*(int *)((int)this + 0x60) == 1)) {
      bVar3 = true;
    }
    else {
      bVar3 = false;
    }
    if ((fVar2 != 0.0) || (bVar3)) {
      if (((int)((-(uint)(*(char *)((int)param_1 + 0x4bc) != '\0') & 3) - 4) < (int)fVar2) ||
         (!bVar3)) {
        *(undefined1 *)((int)this + 0x5d) = 1;
        FUN_00abbad0(*(void **)((int)this + 0xc));
        pLVar1 = (LotXZLevel *)((int)this + 100);
        FUN_00af7cc0(param_2,(float *)pLVar1);
        fVar5 = LotLevelHeight_SampleLocalPosition
                          (*(void **)(*(int *)((int)this + 0xc) + 0x290),pLVar1);
        *(float *)((int)this + 0x84) = (float)fVar5;
        fVar5 = BasementTool_SelectBottomHeight(this,(float *)pLVar1);
        *(float *)((int)this + 0x88) = (float)fVar5;
        if (bVar3) {
          bVar3 = LotLevels_ExpandBounds
                            (*(undefined **)((int)this + 0xc),*(int *)((int)this + 0x6c) + -1);
          if ((bVar3) && (*(void **)((int)this + 0x90) != (void *)0x0)) {
            FUN_00cd2aa0(*(void **)((int)this + 0x90));
          }
        }
        else {
          fVar5 = FUN_00ab02d0();
          *(float *)((int)this + 0x84) = (float)(fVar5 + (float10)*(float *)((int)this + 0x84));
        }
        FUN_00ced6b0(this,*(undefined4 *)((int)this + 0x6c));
        *(float *)((int)this + 0x70) = pLVar1->x;
        *(undefined4 *)((int)this + 0x74) = *(undefined4 *)((int)this + 0x68);
        *(undefined4 *)((int)this + 0x78) = *(undefined4 *)((int)this + 0x6c);
        *(undefined1 *)((int)this + 0x8d) = 0;
        *(undefined1 *)((int)this + 0x8e) = 0;
        LotPoint_ResolveLevelPosition(param_1,(LotPaintPoint *)param_2,local_e0);
        FUN_00cdc380(*(undefined4 *)((int)this + 0xc),DAT_011ee544,local_e0,1.0,(byte *)0x0);
        BuildBuy_PlayKeyedSound(DAT_011ec0b8);
        uVar4 = FUN_00cd0460((int)this);
        if ((char)uVar4 == '\0') {
          FUN_00cede10(this,"deckDrawDemolishActive");
          return true;
        }
        FUN_00cede10(this,"deckDrawCreateActive");
        return true;
      }
      FUN_00ad7740((int)local_90);
      BuildEditErrorRecord_InitializeAtLotPoint
                (local_d0,0xea,*(undefined **)((int)this + 0xc),(LotPaintPoint *)param_2,0,0);
      FUN_00ad8570(local_90,local_d0);
      FUN_00cd3890(local_90,1,'\x01');
      FUN_00ad70d0((int)local_d0);
      FUN_00a52ad0((int)local_90);
    }
  }
  return false;
}


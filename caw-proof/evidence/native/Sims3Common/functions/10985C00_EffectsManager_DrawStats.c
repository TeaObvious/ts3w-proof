/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: EffectsManager_DrawStats. Export ordinal(s):
   1803. Entry VA: 0x10985c00. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000EEF. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl EffectsManager_DrawStats(float param_1,float param_2)

{
  byte bVar1;
  uint uVar2;
  char cVar3;
  int *piVar4;
  byte *pbVar5;
  char *pcVar6;
  byte *pbVar7;
  char *pcVar8;
  char *pcVar9;
  int *unaff_ESI;
  int *unaff_EDI;
  int iVar10;
  float unaff_retaddr;
  char *pcStack_47c;
  uint uStack_478;
  char *pcStack_474;
  char *pcStack_470;
  byte *pbStack_46c;
  undefined *puStack_468;
  undefined *puStack_464;
  char *pcStack_460;
  undefined1 auStack_458 [4];
  undefined4 uStack_454;
  undefined4 uStack_450;
  undefined4 uStack_448;
  undefined4 uStack_440;
  undefined4 uStack_434;
  undefined4 uStack_430;
  undefined4 uStack_428;
  byte abStack_40c [12];
  byte abStack_400 [1016];
  float fStack_8;
  float fStack_4;
  
                    /* 0x985c00  1803  EffectsManager_DrawStats */
  piVar4 = (int *)FUN_1050d150();
  if (piVar4 != (int *)0x0) {
    pbVar5 = (byte *)(**(code **)(*piVar4 + 0xac))();
    pbVar7 = abStack_400;
    do {
      bVar1 = *pbVar5;
      *pbVar7 = bVar1;
      pbVar5 = pbVar5 + 1;
      pbVar7 = pbVar7 + 1;
    } while (bVar1 != 0);
    pbVar7 = abStack_400;
    do {
      bVar1 = *pbVar7;
      pbVar7 = pbVar7 + 1;
    } while (bVar1 != 0);
    App3D_DrawText(abStack_400,(int)pbVar7 - (int)(abStack_400 + 1),param_1,param_2);
    pcStack_47c = (char *)0x0;
    uStack_478 = 0;
    pcStack_474 = (char *)0x0;
    pcStack_470 = "CSHost/effectInfoList";
    (**(code **)(*piVar4 + 0xb4))(&pcStack_47c,0,1);
    pbStack_46c = &_Dst_10ca8244;
    puStack_468 = &_Dst_10ca8244;
    pcStack_460 = "EffectsManager/columns";
    puStack_464 = &DAT_10ca8245;
    FUN_1000f080(&pbStack_46c," %-35.35s  %-5s %-5s %-5s %-5s %-5s %-5s %-5s %-5s\n");
    pbVar7 = pbStack_46c;
    fStack_4 = fStack_4 + unaff_retaddr;
    App3D_DrawText(pbStack_46c,(int)puStack_468 - (int)pbStack_46c,fStack_8,fStack_4);
    iVar10 = (int)unaff_ESI - (int)unaff_EDI >> 0x1f;
    uStack_478 = 0;
    if (((int)unaff_ESI - (int)unaff_EDI) / 0x24 + iVar10 != iVar10) {
      iVar10 = 0;
      do {
        piVar4 = *(int **)(iVar10 + 0x20 + (int)unaff_EDI);
        memset(auStack_458,0,0x4c);
        (**(code **)(piVar4[1] + 0x14))(0,0,auStack_458);
        pcVar8 = "";
        pcStack_47c = "";
        pcVar9 = "";
        cVar3 = (**(code **)(*piVar4 + 0x44))();
        if (cVar3 != '\0') {
          pcStack_47c = "[Paused]";
        }
        cVar3 = (**(code **)(*piVar4 + 0x48))();
        if (cVar3 != '\0') {
          pcStack_474 = "[Hidden]";
        }
        uVar2 = piVar4[0x11];
        pcVar6 = "[Stopping]";
        if ((uVar2 >> 10 & 1) == 0) {
          pcVar6 = "";
        }
        if (piVar4[5] < 3) {
          pcVar8 = "[Orphan]";
        }
        if ((uVar2 >> 6 & 1) == 0) {
          if ((uVar2 >> 5 & 1) != 0) {
            pcVar9 = "[Child]";
          }
        }
        else {
          pcVar9 = "[Internal]";
        }
        sprintf((char *)abStack_40c,"  %-35.35s %1.3f %5d %5d %5d %5d %5d %5d %5d %s%s%s%s%s\n",
                *(undefined4 *)(iVar10 + (int)unaff_EDI),(double)(float)piVar4[10],uStack_454,
                uStack_450,uStack_434,uStack_448,uStack_440,uStack_430,uStack_428,pcStack_470,
                pcStack_474,pcVar6,pcVar8,pcVar9);
        fStack_4 = fStack_4 + unaff_retaddr;
        pbVar7 = abStack_40c;
        do {
          bVar1 = *pbVar7;
          pbVar7 = pbVar7 + 1;
        } while (bVar1 != 0);
        App3D_DrawText(abStack_40c,(int)pbVar7 - (int)(abStack_40c + 1),fStack_8,fStack_4);
        uStack_478 = uStack_478 + 1;
        iVar10 = iVar10 + 0x24;
        pbVar7 = pbStack_46c;
      } while (uStack_478 < (uint)(((int)unaff_ESI - (int)unaff_EDI) / 0x24));
    }
    if ((1 < (int)puStack_464 - (int)pbVar7) && (pbVar7 != (byte *)0x0)) {
      FUN_10918e90((int)pbVar7);
    }
    FUN_10704bc0(unaff_EDI,unaff_ESI);
    if (unaff_EDI != (int *)0x0) {
      FUN_10918e90((int)unaff_EDI);
    }
  }
  return;
}


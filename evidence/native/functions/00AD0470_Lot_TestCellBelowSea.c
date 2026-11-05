/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 placement/source boundary. cdecl lot,packedcell,world,mode fourwords/plainRET/AL
   result. Signedbyte x/z/level bounds; selectedleveldomain then paired vertex expansion. Mode0
   compares both floor vertices to lotsea; false when both>=sea. Othermodeuses actualworld height
   queries and worldsea. Equality dry; no original finite normalization inferred. */

uint __cdecl Lot_TestCellBelowSea(int *param_1,char *param_2,void *param_3,char param_4)

{
  float *pfVar1;
  char cVar2;
  int iVar3;
  int iVar4;
  char *quarter;
  void *pvVar5;
  uint uVar6;
  uint extraout_EAX;
  float10 fVar7;
  char local_24;
  char local_23;
  undefined1 local_22;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  LotXZLevel local_c;
  
  quarter = param_2;
  uVar6 = (uint)*param_2;
  if ((((-1 < (int)uVar6) && ((int)uVar6 < param_1[0x5d])) && (-1 < param_2[1])) &&
     ((int)param_2[1] < param_1[0x5e])) {
    cVar2 = param_2[2];
    uVar6 = CONCAT31((int3)(uVar6 >> 8),cVar2);
    if (((param_1[0x5f] <= (int)cVar2) && ((int)cVar2 <= param_1[0x60])) &&
       (((param_1[0x102] == 1 && ((param_1[0x103] == 0x50 && (cVar2 == '\x01')))) || (cVar2 == '\0')
        ))) {
      local_24 = -1;
      local_23 = -1;
      param_2 = (char *)CONCAT13(param_2._3_1_,0xffff);
      local_22 = 0;
      local_c.x = -1.0;
      local_c.z = -1.0;
      local_c.level = 0;
      TileQuarter_GetOuterVerticesAndCentre(quarter,(char *)&param_2,&local_24,&local_c);
      fVar7 = Lot_GetLocalSeaLevel(param_1);
      pvVar5 = param_3;
      local_10 = (float)fVar7;
      if (param_4 != '\0') {
        if (param_3 == (void *)0x0) {
          return extraout_EAX & 0xffffff00;
        }
        FUN_00ab16e0(param_1,(float)(int)(char)param_2,(float)(int)param_2._1_1_,&local_18,&local_1c
                    );
        FUN_00ab16e0(param_1,(float)(int)local_24,(float)(int)local_23,&local_10,&local_14);
        fVar7 = WorldWater_GetSeaLevel((int)pvVar5);
        local_20 = (float)fVar7;
        fVar7 = WorldSurface_QueryHeight
                          (pvVar5,local_18,local_1c,0,'\x01','\0',(undefined1 *)0x0,
                           (undefined1 *)0x0,'\0','\0');
        if ((float10)local_20 <= fVar7) {
          fVar7 = WorldSurface_QueryHeight
                            (pvVar5,local_10,local_14,0,'\x01','\0',(undefined1 *)0x0,
                             (undefined1 *)0x0,'\0','\0');
          if ((float10)local_20 <= fVar7) {
            return 0;
          }
        }
        return 1;
      }
      iVar3 = param_1[0xa4];
      iVar4 = *(int *)(iVar3 + 0x24);
      uVar6 = *(uint *)(iVar4 + 0x10);
      pfVar1 = (float *)(uVar6 + (((*(int *)(iVar3 + 0x18) - *(int *)(iVar3 + 0x10)) *
                                   *(int *)(iVar4 + 4) + (int)(char)param_2) * *(int *)(iVar4 + 8) +
                                 (int)param_2._1_1_) * 4);
      if (local_10 < *pfVar1 || local_10 == *pfVar1) {
        iVar4 = *(int *)(iVar3 + 0x24);
        uVar6 = *(uint *)(iVar4 + 0x10);
        pfVar1 = (float *)(uVar6 + (((*(int *)(iVar3 + 0x18) - *(int *)(iVar3 + 0x10)) *
                                     *(int *)(iVar4 + 4) + (int)local_24) * *(int *)(iVar4 + 8) +
                                   (int)local_23) * 4);
        if (local_10 < *pfVar1 || local_10 == *pfVar1) goto LAB_00ad04cb;
      }
      return CONCAT31((int3)(uVar6 >> 8),1);
    }
  }
LAB_00ad04cb:
  return uVar6 & 0xffffff00;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  char *pcVar5;
  void *pvVar6;
  uint uVar7;
  uint extraout_EAX;
  float10 fVar8;
  char local_24;
  char local_23;
  undefined1 local_22;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  float local_8;
  undefined4 local_4;
  
  pcVar5 = param_2;
  uVar7 = (uint)*param_2;
  if ((((-1 < (int)uVar7) && ((int)uVar7 < param_1[0x5d])) && (-1 < param_2[1])) &&
     ((int)param_2[1] < param_1[0x5e])) {
    cVar2 = param_2[2];
    uVar7 = CONCAT31(*param_2 >> 7,cVar2);
    if (((param_1[0x5f] <= (int)cVar2) && ((int)cVar2 <= param_1[0x60])) &&
       (((param_1[0x102] == 1 && ((param_1[0x103] == 0x50 && (cVar2 == '\x01')))) || (cVar2 == '\0')
        ))) {
      local_24 = -1;
      local_23 = -1;
      param_2 = (char *)CONCAT13(param_2._3_1_,0xffff);
      local_22 = 0;
      local_c = -1.0;
      local_8 = -1.0;
      local_4 = 0;
      FUN_00af7e40(pcVar5,(char *)&param_2,&local_24,&local_c);
      fVar8 = Lot_GetLocalSeaLevel(param_1);
      pvVar6 = param_3;
      local_10 = (float)fVar8;
      if (param_4 != '\0') {
        if (param_3 == (void *)0x0) {
          return extraout_EAX & 0xffffff00;
        }
        FUN_00ab16e0(param_1,(float)(int)(char)param_2,(float)(int)param_2._1_1_,&local_18,&local_1c
                    );
        FUN_00ab16e0(param_1,(float)(int)local_24,(float)(int)local_23,&local_10,&local_14);
        fVar8 = WorldWater_GetSeaLevel((int)pvVar6);
        local_20 = (float)fVar8;
        fVar8 = WorldSurface_QueryHeight
                          (pvVar6,local_18,local_1c,0,'\x01','\0',(undefined1 *)0x0,
                           (undefined1 *)0x0,'\0','\0');
        if ((float10)local_20 <= fVar8) {
          fVar8 = WorldSurface_QueryHeight
                            (pvVar6,local_10,local_14,0,'\x01','\0',(undefined1 *)0x0,
                             (undefined1 *)0x0,'\0','\0');
          if ((float10)local_20 <= fVar8) {
            return 0;
          }
        }
        return 1;
      }
      iVar3 = param_1[0xa4];
      iVar4 = *(int *)(iVar3 + 0x24);
      uVar7 = *(uint *)(iVar4 + 0x10);
      pfVar1 = (float *)(uVar7 + (((*(int *)(iVar3 + 0x18) - *(int *)(iVar3 + 0x10)) *
                                   *(int *)(iVar4 + 4) + (int)(char)param_2) * *(int *)(iVar4 + 8) +
                                 (int)param_2._1_1_) * 4);
      if (local_10 < *pfVar1 || local_10 == *pfVar1) {
        iVar4 = *(int *)(iVar3 + 0x24);
        uVar7 = *(uint *)(iVar4 + 0x10);
        pfVar1 = (float *)(uVar7 + (((*(int *)(iVar3 + 0x18) - *(int *)(iVar3 + 0x10)) *
                                     *(int *)(iVar4 + 4) + (int)local_24) * *(int *)(iVar4 + 8) +
                                   (int)local_23) * 4);
        if (local_10 < *pfVar1 || local_10 == *pfVar1) goto LAB_00ad04cb;
      }
      return CONCAT31((int3)(uVar7 >> 8),1);
    }
  }
LAB_00ad04cb:
  return uVar7 & 0xffffff00;
}


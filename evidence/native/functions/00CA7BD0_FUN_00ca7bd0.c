/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: cdecl seven stackwords/plainRETvoid. Kind3/6 decrements markerlevel. Mode0 rectangle uses highcorner-minus1, AF6BF0/AF64E0/D1E4B0/AF64A0/AF6490; iterator yields quarter masks1,2,4,8. Alternate mode uses a separate iterator and is not reconstructed as a guessed geometric shape. */

void __cdecl
FUN_00ca7bd0(void *param_1,int param_2,int param_3,uint param_4,undefined4 *param_5,char *param_6,
            void *param_7)

{
  void *pvVar1;
  bool bVar2;
  undefined3 *puVar3;
  int *piVar4;
  undefined2 local_14;
  undefined1 local_12;
  char local_10 [16];
  
  if ((param_3 == 3) || (param_3 == 6)) {
    bVar2 = true;
  }
  else {
    bVar2 = false;
  }
  if (param_4 == 0) {
    param_4 = (uint)CONCAT12(*(char *)((int)param_5 + 2) + -bVar2,*(undefined2 *)param_5);
    param_3._0_3_ = CONCAT12(param_6[2] + -bVar2,CONCAT11(param_6[1] + -1,*param_6 + -1));
    TilePartRectangleIterator_Construct(local_10,(undefined2 *)&param_4,(undefined2 *)&param_3);
    bVar2 = TilePartRectangleIterator_IsDone((int)local_10);
    pvVar1 = param_7;
    if (!bVar2) {
      do {
        puVar3 = (undefined3 *)TilePartRectangleIterator_Current((int)local_10);
        FUN_00d1e4b0(pvVar1,param_1,puVar3,param_2);
        TilePartRectangleIterator_Next(local_10);
        bVar2 = TilePartRectangleIterator_IsDone((int)local_10);
      } while (!bVar2);
      return;
    }
  }
  else {
    piVar4 = param_5;
    if (bVar2) {
      param_3 = CONCAT22(CONCAT11(param_3._3_1_,*(char *)((int)param_5 + 2) + -1),
                         *(undefined2 *)param_5);
      piVar4 = &param_3;
    }
    local_14 = (undefined2)*piVar4;
    local_12 = *(undefined1 *)((int)piVar4 + 2);
    piVar4 = (int *)param_6;
    if (bVar2) {
      param_3._0_3_ = CONCAT12(param_6[2] + -1,*(undefined2 *)param_6);
      piVar4 = &param_3;
    }
    param_4 = CONCAT13(param_4._3_1_,(int3)*piVar4);
    FUN_00af7180(local_10,(char *)&local_14,(char *)&param_4);
    bVar2 = FUN_00af68d0((int)local_10);
    pvVar1 = param_7;
    while (!bVar2) {
      piVar4 = (int *)FUN_00af68c0((int)local_10);
      param_3 = *piVar4;
      FUN_00d1e4b0(pvVar1,param_1,(undefined3 *)&param_3,param_2);
      FUN_00af6e70(local_10);
      bVar2 = FUN_00af68d0((int)local_10);
    }
  }
  return;
}

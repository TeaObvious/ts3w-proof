/* Selects a per-level renderer and routes quarter input state to the existing subset or edge-state
   consumers. ECX receiver plus 17 stack words, RET 44h. Message support byte +5B is parameter 7 and
   influences only selected null-quad branches; it is not a universal visibility command.
   Analyst-assigned name. */

void __thiscall
ApplyFloorQuarterInputs
          (void *this,ushort *param_1,int *param_2,undefined2 param_3,ushort param_4,
          undefined1 param_5,byte *param_6,byte param_7,int *param_8,undefined4 *param_9,
          undefined4 param_10,undefined4 *param_11,undefined4 param_12,undefined4 param_13,
          undefined4 param_14,undefined4 param_15,undefined4 param_16,undefined4 param_17)

{
  char cVar1;
  char cVar2;
  bool bVar3;
  void *this_00;
  int *piVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  byte bVar7;
  undefined2 uVar8;
  byte *pbVar9;
  byte bVar10;
  undefined4 *puVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  undefined1 local_40 [64];

  /* 00AA1F70: Optional message tail +70..83 is not proved initialized when A8ED70 returned null. AA3890 has already loaded +78, and selected branches pass or load tail values; no zero-default or ignored-input guarantee is inferred here. */
  if (*(char *)((int)this + 0x70) != '\0') {
    bVar7 = (byte)~*(byte *)((int)param_1 + 3) >> 4;
    /* 00AA1FA4: Select the actual per-level renderer using signed packed level and the inverse mask-bit10 flag. A913D0 single-quarter masks 01/02/04/08 take the ordinary floor side. */
    this_00 = (void *)FUN_00aa0aa0(this,(int)(char)param_1[1],bVar7 & 1);
    if (this_00 != (void *)0x0) {
      if (((bVar7 & 1) != 0) || (piVar4 = &DAT_011ec8d0, (char)param_1[1] != '\0')) {
        piVar4 = param_8;
      }
      local_50 = *piVar4;
      local_4c = piVar4[1];
      local_48 = piVar4[2];
      local_44 = piVar4[3];
      if ((((*param_2 == DAT_01184568) && (param_2[2] == DAT_01184570)) &&
          (param_2[3] == DAT_01184574)) && (param_2[1] == DAT_0118456c)) {
        FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState(this_00,param_1,(char)param_14);
        return;
      }
      /* 00AA2033: A8AE70 returns 1 when the complete 64-byte quad differs from live null quad 011EC8E0, and 0 on equality. Do not invert this branch as an equality predicate. */
      uVar5 = FUN_00a8ae70(param_2,&DAT_011ec8e0);
      if ((char)uVar5 != '\0') {
        uVar5 = param_16;
        bVar3 = FUN_00aa1ef0(this,(char *)param_1);
        FloorRenderer_AssignMaskedQuarterSubsets
                  (this_00,param_1,param_2,param_3,param_4,param_5,param_6,0,&local_50,param_9,
                   param_10,*param_11,param_11[1],(byte)param_12,(char)param_13,(byte)param_14,
                   (char)param_15,(char)param_17,bVar3,(byte)uVar5);
        return;
      }
      /* 00AA20DC: The support byte from message +5B is consumed after the distinct first-key and nonnull-quad branches. Those earlier branches can update subsets/edges without inspecting that byte. */
      cVar1 = *(char *)(*(int *)((int)this + 8) + 0x3d6);
      bVar7 = (byte)param_14;
      if (param_7 != 0) {
        cVar2 = (char)param_1[1];
        if ((cVar2 == '\0') && (cVar1 == '\0')) {
          bVar7 = FUN_00aa1ef0(this,(char *)param_1);
          uVar5 = param_11[1];
          piVar4 = &local_50;
          uVar13 = *param_11;
          pbVar9 = &param_7;
          param_7 = 0;
          bVar10 = 1;
          uVar8 = 0xfffe;
          puVar11 = param_9;
          uVar12 = param_10;
          uVar14 = param_12;
          uVar15 = param_13;
          uVar16 = param_14;
          uVar17 = param_15;
          uVar18 = param_17;
          uVar19 = param_16;
          puVar6 = (undefined4 *)
                   FUN_00afbb10(local_40,(undefined4 *)((int)this + 0x20),&DAT_011ec8d0,
                                &DAT_011ec8d0,&DAT_011ec8d0);
          FloorRenderer_AssignMaskedQuarterSubsets
                    (this_00,param_1,puVar6,uVar8,param_4,param_5,pbVar9,bVar10,piVar4,puVar11,
                     uVar12,uVar13,uVar5,(byte)uVar14,(char)uVar15,(byte)uVar16,(char)uVar17,
                     (char)uVar18,bVar7,(byte)uVar19);
          return;
        }
        if (((cVar2 < '\x01') && (*(char *)((int)this + 0x73) == '\0')) &&
           ((cVar1 == '\0' || (cVar2 != '\0')))) {
          FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState(this_00,param_1,bVar7);
          return;
        }
        param_7 = 0;
        FloorRenderer_AssignMaskedQuarterSubsets
                  (this_00,param_1,&DAT_011ec8e0,0,param_4,param_5,&param_7,1,&local_50,param_9,
                   param_10,*param_11,param_11[1],(byte)param_12,(char)param_13,bVar7,(char)param_15
                   ,(char)param_17,0,0);
        return;
      }
      if (((char)param_1[1] == '\0') && (cVar1 == '\0')) {
        bVar7 = FUN_00aa1ef0(this,(char *)param_1);
        uVar5 = param_11[1];
        piVar4 = &local_50;
        uVar13 = *param_11;
        pbVar9 = &param_7;
        bVar10 = 0;
        uVar8 = 0xfffe;
        param_7 = 0;
        puVar11 = param_9;
        uVar12 = param_10;
        uVar14 = param_12;
        uVar15 = param_13;
        uVar16 = param_14;
        uVar17 = param_15;
        uVar18 = param_17;
        uVar19 = param_16;
        puVar6 = (undefined4 *)
                 FUN_00afbb10(local_40,(undefined4 *)((int)this + 0x20),&DAT_011ec8d0,&DAT_011ec8d0,
                              &DAT_011ec8d0);
        FloorRenderer_AssignMaskedQuarterSubsets
                  (this_00,param_1,puVar6,uVar8,param_4,param_5,pbVar9,bVar10,piVar4,puVar11,uVar12,
                   uVar13,uVar5,(byte)uVar14,(char)uVar15,(byte)uVar16,(char)uVar17,(char)uVar18,
                   bVar7,(byte)uVar19);
        return;
      }
      FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState(this_00,param_1,bVar7);
    }
  }
  return;
}

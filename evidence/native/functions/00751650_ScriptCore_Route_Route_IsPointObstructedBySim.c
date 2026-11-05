/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011618c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_IsPointObstructedBySim [assembly=ScriptCore token=0x060010F6; handle:
   System.UInt32, point: Sims3.SimIFace.Vector3; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

longlong __cdecl ScriptCore.Route::Route_IsPointObstructedBySim(uint param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  bool bVar3;
  int *piVar4;
  int *piVar5;
  bool bVar6;
  char cVar7;
  int *piVar8;
  void *this;
  void *this_00;
  float *pfVar9;
  void *pvVar10;
  undefined4 uVar11;
  int iVar12;
  float10 fVar13;
  longlong lVar14;
  undefined1 uStack00000008;
  LotXZLevel LStack_90;
  float fStack_84;
  int *piStack_80;
  int *piStack_7c;
  undefined4 uStack_78;
  char *pcStack_74;
  float fStack_6c;
  float fStack_68;
  undefined4 *puStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float fStack_30;
  float fStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
  if (DAT_011d50c4 == (void *)0x0) {
    return 0;
  }
  piVar8 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
  if (piVar8 == (int *)0x0) {
    return 0;
  }
  (**(code **)(*piVar8 + 0x10))();
  this = (void *)thunk_FUN_00835d40();
  this_00 = (void *)FUN_008295c0((int)this);
  pvVar10 = DAT_011edbc4;
  fStack_84 = 0.0;
  LStack_90.level = 0;
  LStack_90.z = 0.0;
  LStack_90.x = 0.0;
  fStack_50 = 0.0;
  fStack_4c = 0.0;
  fStack_48 = 0.0;
  fStack_44 = 0.0;
  uStack_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  fStack_30 = 1.0;
  fStack_2c = 0.0;
  uStack_28 = 0;
  uStack_24 = 0;
  uStack_20 = 0;
  pfVar9 = RouteVector_ExpandXYZWithXLane(&uStack00000008,&fStack_60);
  fStack_50 = *pfVar9;
  fStack_4c = pfVar9[1];
  fStack_48 = pfVar9[2];
  fStack_44 = pfVar9[3];
  if ((pvVar10 == (void *)0x0) ||
     (LStack_90.x = fStack_50, LStack_90.z = fStack_4c, LStack_90.level = (int)fStack_48,
     fStack_84 = fStack_44,
     pvVar10 = LotSpatialIndex_FindContainingLotAtWorldXZ(pvVar10,fStack_50,fStack_48),
     pvVar10 == (void *)0x0)) goto LAB_007519b5;
  LStack_90.x = -1.0;
  LStack_90.z = -1.0;
  LStack_90.level = 0;
  Lot_WorldPositionToLocalLocationAtFloor(pvVar10,&fStack_50,&LStack_90);
  fStack_2c = (float)LStack_90.level;
  if ((*(int *)((int)pvVar10 + 0x408) == 1) &&
     ((*(int *)((int)pvVar10 + 0x40c) == 0x50 && ((float)LStack_90.level == 0.0)))) {
    bVar3 = true;
LAB_007517ba:
    if (bVar3) goto LAB_007517c4;
    cVar7 = '\x01';
  }
  else {
    bVar3 = false;
    if ((-1 < LStack_90.level) ||
       (bVar6 = Lot_TestProperty15AtLocalLocation(pvVar10,&LStack_90), !bVar6)) goto LAB_007517ba;
LAB_007517c4:
    cVar7 = '\0';
  }
  fStack_60 = fStack_50;
  fStack_5c = fStack_4c;
  fStack_58 = fStack_48;
  fStack_54 = fStack_44;
  fVar13 = FUN_0074aae0(fStack_50,fStack_48,(int)fStack_2c,'\x01',cVar7);
  fStack_5c = (float)fVar13;
  fStack_60 = fStack_50;
  fStack_58 = fStack_48;
  fStack_54 = fStack_44;
  fStack_4c = fStack_5c;
  LotRouteGraph_ApplyLotPositionMatrix
            (this_00,*(ulonglong *)((int)pvVar10 + 0x48),fStack_50,fStack_48,&fStack_6c,&fStack_68);
  piStack_80 = (int *)0x0;
  piStack_7c = (int *)0x0;
  uStack_78 = 0;
  pcStack_74 = "Routing/RoutingHost/TemporaryFootprintSet";
  uVar11 = FUN_0082e7e0(this,&fStack_50,0.25,(int *)&piStack_80,'\0',piVar8[0xf]);
  piVar5 = piStack_7c;
  piVar4 = piStack_80;
  if ((char)uVar11 != '\0') {
    for (; piVar4 != piVar5; piVar4 = piVar4 + 1) {
      puVar2 = (undefined4 *)*piVar4;
      puStack_64 = puVar2;
      if (puVar2 != (undefined4 *)0x0) {
        puVar2[1] = puVar2[1] + 1;
        piVar1 = puVar2 + -1;
        if ((piVar1 != (int *)0x0) && (iVar12 = (**(code **)(*piVar1 + 0xc))(), iVar12 == 0x14)) {
          lVar14 = (**(code **)(*piVar1 + 0x84))();
          if ((lVar14 != *(longlong *)(piVar8 + 0x10)) &&
             (((uVar11 = FUN_0081c5c0(piVar8 + 0x56,(int)lVar14,(int)((ulonglong)lVar14 >> 0x20)),
               (char)uVar11 == '\0' && (cVar7 = (**(code **)(*piVar1 + 0xc0))(), cVar7 != '\0')) &&
              (cVar7 = (**(code **)(*piVar1 + 0xd4))(0,fStack_6c,fStack_68,0x3e800000),
              cVar7 != '\0')))) {
            FUN_00565d20((int *)&puStack_64);
            FUN_00652de0((int *)&piStack_80);
            (**(code **)(*piVar8 + 0x14))();
            return lVar14;
          }
        }
        iVar12 = puVar2[1];
        puVar2[1] = iVar12 + -1;
        if (iVar12 + -1 == 0) {
          puVar2[1] = 1;
          (**(code **)*puVar2)(1);
        }
      }
    }
  }
  FUN_00ca0570(piStack_80,piStack_7c);
  if (piStack_80 != (int *)0x0) {
    Memory_FreeIfNonNull(piStack_80);
  }
LAB_007519b5:
  (**(code **)(*piVar8 + 0x14))();
  return 0;
}


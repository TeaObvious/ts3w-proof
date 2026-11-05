/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x01161990 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_InsertCustomPathAtIndex [assembly=ScriptCore token=0x06001115; handle:
   System.UInt32, pathIndex: System.UInt32, points: System.Single[]&, bCyclic: System.Boolean,
   bSetRouteDestination: System.Boolean, pathType: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst contract (PC 1.67):
   Registered Route_InsertCustomPathAtIndex, ScriptCore06001115: managed UInt32handle/pathIndex,
   Single[]& points, Boolean cyclic/setDestination, UInt32pathType -> Boolean. Original import
   points MarshalBlob1D04; return and two flags03; wrapper060011BF113B flattens Vector3.x/y/z to
   Float32[3N]. Native engine interface+78 reads array data/length; fewer than two complete
   Float32triples returnsAL0 after route release. Concrete producer alloc400B Routing/RoutingPathImp
   then ctor820020; childvirtual+DC resolves through ctorvtable1022510 slot10225EC toC95ED0
   returning child+98 header.75FD90 requests48B record count. Loop writes
   position+0/+4/+8/+C=x/y/z/x, direction vector+10/+14/+18/+1C, length+20 and cumulative
   distance+24; remaining record bytes are not assigned by this loop. Cyclic input affects successor
   selection/direction calculation, not a separate SelfIntersectionTest flag. Nullallocator branch
   still reaches an unchecked child dereference; no graceful OOM guarantee. Later list
   insertion/adjacency callbacks,81D340/85F5E0/750450/757380 and destination/activepath policies
   remain separate; do not assert all possible child producers preserve this construction layout or
   all later callbacks leave geometry untouched. Complete1487 ownedbytes in2ranges with12envelope
   gapbytes excluded. Native AL result meaningful; generated unaffEDI/floatrefcount residues require
   original instruction tracing. */

uint __cdecl
ScriptCore.Route::Route_InsertCustomPathAtIndex
          (uint param_1,int param_2,int *param_3,char param_4,char param_5,float param_6)

{
  float *pfVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *piVar4;
  float *pfVar5;
  uint uVar6;
  undefined4 *puVar7;
  int *piVar8;
  float *pfVar9;
  int iVar10;
  undefined4 uVar11;
  int iVar12;
  int iVar13;
  int *unaff_EDI;
  bool bVar14;
  undefined1 auVar15 [16];
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float *pfVar28;
  undefined8 uVar29;
  float *pfStack_64;
  float *local_60;
  float *pfStack_5c;
  float *pfStack_58;
  int iStack_54;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined1 auStack_2c [16];
  
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar8 = piVar4;
  if (DAT_011d50c4 == (void *)0x0) {
LAB_00762a02:
    return (uint)piVar8 & 0xffffff00;
  }
  pfVar5 = (float *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
  piVar8 = (int *)0x0;
  if (pfVar5 == (float *)0x0) goto LAB_00762a02;
  local_60 = pfVar5;
  (**(code **)((int)*pfVar5 + 0x10))();
  if ((*param_3 == 0) || (piVar4 == (int *)0x0)) {
    piVar8 = (int *)(**(code **)((int)*pfVar5 + 0x14))();
    goto LAB_00762a02;
  }
  pfStack_58 = (float *)0x0;
  fStack_48 = 0.0;
  (**(code **)(*piVar4 + 0x78))(*param_3,&pfStack_58,&fStack_48);
  uVar6 = iStack_54 / 3;
  if ((int)uVar6 < 2) {
    uVar6 = (**(code **)((int)*pfVar5 + 0x14))();
    return uVar6 & 0xffffff00;
  }
  puVar7 = (undefined4 *)FUN_004e4500(400,"Routing/RoutingPathImp",0);
  if (puVar7 == (undefined4 *)0x0) {
    pfStack_58 = (float *)0x0;
  }
  else {
    uVar29 = ConstructRoutingPathImp(puVar7);
    pfStack_58 = (float *)uVar29;
    if (pfStack_58 != (float *)0x0) {
      LOCK();
      pfStack_58[1] = (float)((int)pfStack_58[1] + 1);
      UNLOCK();
    }
  }
  pfVar5 = pfStack_58;
  pfStack_58[0x2c] = param_6;
  piVar8 = (int *)(**(code **)((int)*pfStack_58 + 0xdc))();
  ResizeRecord48Vector(piVar8,uVar6);
  fStack_4c = *pfStack_64;
  fStack_48 = pfStack_64[1];
  fStack_44 = pfStack_64[2];
  iVar12 = 0;
  pfVar28 = (float *)0x0;
  local_60 = (float *)0x0;
  fStack_40 = fStack_4c;
  if (0 < (int)uVar6) {
    uStack_3c = 0;
    uStack_38 = 0;
    uStack_34 = 0;
    uStack_30 = 0;
    pfStack_5c = (float *)0x0;
    fVar25 = fStack_48;
    fVar26 = fStack_44;
    fVar27 = fStack_4c;
    do {
      fVar19 = 0.0;
      fVar18 = 0.0;
      fVar17 = 0.0;
      fVar16 = 0.0;
      if ((param_4 != '\0') ||
         (fVar22 = fVar17, fVar23 = fVar18, fVar24 = fVar19, fVar20 = 0.0, iVar12 < (int)(uVar6 - 1)
         )) {
        iVar13 = (iVar12 + 1) % (int)uVar6;
        fVar24 = pfStack_64[iVar13 * 3];
        fVar22 = pfStack_64[iVar13 * 3 + 1];
        fVar23 = pfStack_64[iVar13 * 3 + 2];
        fVar16 = fVar24 - fVar27;
        fVar17 = fVar22 - fVar25;
        fVar18 = fVar23 - fVar26;
        fVar19 = fVar24 - fVar27;
        fVar20 = fVar18 * fVar18 + fVar17 * fVar17 + fVar16 * fVar16;
        auVar15._4_4_ = fVar20;
        auVar15._0_4_ = fVar20;
        auVar15._8_4_ = fVar20;
        auVar15._12_4_ = fVar20;
        auStack_2c = sqrtps(auVar15,auVar15);
        fVar20 = (float)auStack_2c._0_4_;
        fStack_4c = fVar24;
        fStack_48 = fVar22;
        fStack_44 = fVar23;
        fStack_40 = fVar24;
        if (0.0 < (float)auStack_2c._0_4_) {
          fVar21 = 1.0 / (float)auStack_2c._0_4_;
          fVar16 = fVar21 * fVar16;
          fVar17 = fVar21 * fVar17;
          fVar18 = fVar21 * fVar18;
          fVar19 = fVar21 * fVar19;
        }
      }
      pfVar9 = (float *)(*piVar8 + (int)pfStack_5c);
      *pfVar9 = fVar27;
      pfVar9[1] = fVar25;
      pfVar9[2] = fVar26;
      pfVar9[3] = fVar27;
      pfVar9[8] = fVar20;
      iVar12 = iVar12 + 1;
      pfStack_5c = pfStack_5c + 0xc;
      pfVar9[4] = fVar16;
      pfVar9[5] = fVar17;
      pfVar9[6] = fVar18;
      pfVar9[7] = fVar19;
      pfVar9[9] = (float)pfVar28;
      pfVar28 = (float *)(fVar20 + (float)pfVar28);
      fVar25 = fVar22;
      fVar26 = fVar23;
      fVar27 = fVar24;
    } while (iVar12 < (int)uVar6);
    local_60 = pfVar28;
  }
  (**(code **)((int)*pfVar5 + 0x130))(local_60);
  FUN_0081d340(pfVar5,'\0','\0');
  pfVar28 = (float *)unaff_EDI[0x38];
  pfVar9 = (float *)(unaff_EDI + 0x38);
  iVar13 = 0;
  iVar12 = 0;
  if (pfVar28 != pfVar9) {
    do {
      if (param_2 == 0) {
        iVar12 = iVar13;
        if (pfVar28 == pfVar9) goto LAB_007626cd;
        pfVar1 = pfVar5 + 1;
        LOCK();
        *pfVar1 = (float)((int)*pfVar1 + 1);
        UNLOCK();
        local_60 = pfVar5;
        FUN_007564f0(pfVar9,(int *)&pfStack_64,(int)pfVar28,(int *)&local_60);
        LOCK();
        fVar25 = *pfVar1;
        *pfVar1 = (float)((int)*pfVar1 + -1);
        UNLOCK();
        if (fVar25 == 1.4013e-45) {
          LOCK();
          *pfVar1 = 1.4013e-45;
          UNLOCK();
          (**(code **)*pfVar5)(1);
        }
        goto LAB_00762739;
      }
      pfVar28 = (float *)*pfVar28;
      param_2 = param_2 + -1;
      iVar13 = iVar13 + 1;
    } while (pfVar28 != pfVar9);
    iVar12 = iVar13;
  }
LAB_007626cd:
  iVar13 = iVar12;
  pfVar28 = pfVar5 + 1;
  LOCK();
  *pfVar28 = (float)((int)*pfVar28 + 1);
  UNLOCK();
  puVar7 = (undefined4 *)FUN_004e4500(0xc,unaff_EDI[0x3a],0);
  if (puVar7 + 2 != (undefined4 *)0x0) {
    puVar7[2] = pfVar5;
    LOCK();
    *pfVar28 = (float)((int)*pfVar28 + 1);
    UNLOCK();
  }
  *puVar7 = pfVar9;
  puVar7[1] = unaff_EDI[0x39];
  *(undefined4 **)unaff_EDI[0x39] = puVar7;
  unaff_EDI[0x39] = (int)puVar7;
  LOCK();
  fVar25 = *pfVar28;
  *pfVar28 = (float)((int)*pfVar28 + -1);
  UNLOCK();
  if (fVar25 == 1.4013e-45) {
    LOCK();
    pfVar5[1] = 1.4013e-45;
    UNLOCK();
    (**(code **)*pfVar5)(1);
  }
LAB_00762739:
  if ((float *)*pfVar9 == pfVar9) {
    puVar7 = (undefined4 *)unaff_EDI[0x3b];
    if (puVar7 != (undefined4 *)0x0) {
      unaff_EDI[0x3b] = 0;
      piVar8 = puVar7 + 1;
      LOCK();
      iVar12 = *piVar8;
      *piVar8 = *piVar8 + -1;
      UNLOCK();
      if (iVar12 == 1) {
        LOCK();
        puVar7[1] = 1;
        UNLOCK();
        (**(code **)*puVar7)(1);
      }
    }
  }
  else {
    puVar7 = *(undefined4 **)((int)*pfVar9 + 8);
    puVar3 = (undefined4 *)unaff_EDI[0x3b];
    if (puVar7 != puVar3) {
      if (puVar7 != (undefined4 *)0x0) {
        LOCK();
        puVar7[1] = puVar7[1] + 1;
        UNLOCK();
      }
      unaff_EDI[0x3b] = (int)puVar7;
      if (puVar3 != (undefined4 *)0x0) {
        piVar8 = puVar3 + 1;
        LOCK();
        iVar12 = *piVar8;
        *piVar8 = *piVar8 + -1;
        UNLOCK();
        if (iVar12 == 1) {
          LOCK();
          *piVar8 = 1;
          UNLOCK();
          (**(code **)*puVar3)(1);
        }
      }
    }
  }
  if ((float *)*pfVar9 != pfVar9) {
    pfStack_64 = (float *)*pfVar9;
    do {
      piVar8 = (int *)pfStack_64[2];
      if (piVar8 != (int *)0x0) {
        LOCK();
        piVar8[1] = piVar8[1] + 1;
        UNLOCK();
      }
      (**(code **)(*piVar8 + 0x10))(unaff_EDI + 0x56);
      iVar10 = (**(code **)(*piVar8 + 0xc))();
      iVar12 = unaff_EDI[0xf];
      puVar7 = (undefined4 *)FUN_0081c510(iVar10);
      FUN_0085f5e0(piVar8,puVar7,iVar12);
      piVar4 = piVar8 + 1;
      LOCK();
      iVar12 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar12 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*piVar8)(1);
      }
      pfStack_64 = (float *)*pfStack_64;
    } while (pfStack_64 != pfVar9);
    pfStack_64 = (float *)*pfVar9;
    for (local_60 = (float *)*pfStack_64; local_60 != pfVar9; local_60 = (float *)*local_60) {
      piVar8 = (int *)pfStack_64[2];
      if (piVar8 != (int *)0x0) {
        LOCK();
        piVar8[1] = piVar8[1] + 1;
        UNLOCK();
      }
      piVar4 = (int *)local_60[2];
      if (piVar4 != (int *)0x0) {
        LOCK();
        piVar4[1] = piVar4[1] + 1;
        UNLOCK();
      }
      (**(code **)(*piVar8 + 0x78))(piVar4);
      (**(code **)(*piVar4 + 0x80))(piVar8);
      piVar2 = piVar4 + 1;
      LOCK();
      iVar12 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar12 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*piVar4)(1);
      }
      piVar4 = piVar8 + 1;
      LOCK();
      iVar12 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar12 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*piVar8)(1);
      }
      pfStack_64 = (float *)*pfStack_64;
      pfVar5 = pfStack_5c;
    }
  }
  if (param_5 != '\0') {
    FUN_00750130(unaff_EDI,'\0');
  }
  FUN_00750450((int)unaff_EDI);
  if (param_4 == '\0') {
    iVar12 = unaff_EDI[0x3c];
    if (iVar12 < 0) goto LAB_007629c7;
    if (iVar13 <= iVar12) {
      iVar13 = iVar12 + 1;
      bVar14 = iVar13 == iVar12;
      goto LAB_007629b8;
    }
  }
  else {
    bVar14 = iVar13 == unaff_EDI[0x3c];
LAB_007629b8:
    if (bVar14) goto LAB_007629c7;
    unaff_EDI[0x3c] = iVar13;
  }
  FUN_00757380(unaff_EDI);
LAB_007629c7:
  pfVar28 = pfVar5 + 1;
  LOCK();
  fVar25 = *pfVar28;
  *pfVar28 = (float)((int)*pfVar28 + -1);
  UNLOCK();
  if (fVar25 == 1.4013e-45) {
    LOCK();
    *pfVar28 = 1.4013e-45;
    UNLOCK();
    (**(code **)*pfVar5)(1);
  }
  uVar11 = (**(code **)(*unaff_EDI + 0x14))();
  return CONCAT31((int3)((uint)uVar11 >> 8),1);
}


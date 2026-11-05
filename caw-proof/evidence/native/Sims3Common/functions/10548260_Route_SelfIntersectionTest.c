/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SelfIntersectionTest. Export ordinal(s):
   687. Entry VA: 0x10548260. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000185. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl Route_SelfIntersectionTest(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
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
  float fVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  float fVar32;
  float fVar33;
  float fVar34;
  float fVar35;
  int *piVar36;
  int *piVar37;
  undefined4 *puVar38;
  undefined4 uVar39;
  uint uVar40;
  uint in_EAX;
  float *pfVar41;
  float *pfVar42;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_10c78944 != (void *)0x0) {
    piVar36 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    in_EAX = 0;
    if (piVar36 != (int *)0x0) {
      (**(code **)(*piVar36 + 0x10))();
      piVar37 = (int *)piVar36[0x38];
      if (piVar37 != piVar36 + 0x38) {
        do {
          piVar2 = (int *)piVar37[2];
          if (piVar2 != (int *)0x0) {
            LOCK();
            piVar2[1] = piVar2[1] + 1;
            UNLOCK();
          }
          puVar38 = (undefined4 *)(**(code **)(*piVar2 + 0xdc))();
          iVar3 = puVar38[1];
          for (pfVar41 = (float *)*puVar38; pfVar41 < (float *)(iVar3 + -0x30);
              pfVar41 = pfVar41 + 0xc) {
            fVar20 = *pfVar41;
            fVar21 = *pfVar41;
            fVar22 = pfVar41[1];
            fVar23 = pfVar41[1];
            fVar24 = pfVar41[2];
            fVar25 = pfVar41[2];
            fVar26 = pfVar41[3];
            fVar27 = pfVar41[3];
            fVar28 = pfVar41[0xc];
            fVar29 = pfVar41[0xc];
            fVar30 = pfVar41[0xd];
            fVar31 = pfVar41[0xd];
            fVar32 = pfVar41[0xe];
            fVar33 = pfVar41[0xe];
            fVar34 = pfVar41[0xf];
            fVar35 = pfVar41[0xf];
            fVar4 = fStack_a8;
            fVar5 = fStack_a4;
            fVar6 = fStack_98;
            fVar7 = fStack_94;
            fVar8 = fStack_7c;
            fVar9 = fStack_78;
            fVar10 = fStack_74;
            fVar11 = fStack_60;
            fVar12 = fStack_5c;
            fVar13 = fStack_54;
            fVar14 = fStack_3c;
            fVar15 = fStack_38;
            fVar16 = fStack_34;
            fVar17 = fStack_20;
            fVar18 = fStack_1c;
            fVar19 = fStack_14;
            for (pfVar42 = pfVar41 + 0x18; fStack_54 = fVar35, fStack_74 = fVar34,
                fStack_a4 = fVar33, fStack_78 = fVar32, fStack_5c = fVar31, fStack_7c = fVar30,
                fStack_60 = fVar29, fStack_a8 = fVar28, fStack_14 = fVar27, fStack_34 = fVar26,
                fStack_94 = fVar25, fStack_38 = fVar24, fStack_1c = fVar23, fStack_3c = fVar22,
                fStack_20 = fVar21, fStack_98 = fVar20, pfVar42 < (float *)(iVar3 + -0x30);
                pfVar42 = pfVar42 + 0xc) {
              fStack_a0 = *pfVar42;
              fStack_4c = pfVar42[1];
              fStack_9c = pfVar42[2];
              fStack_44 = pfVar42[3];
              fStack_b0 = pfVar42[0xc];
              fStack_8c = pfVar42[0xd];
              fStack_ac = pfVar42[0xe];
              fStack_84 = pfVar42[0xf];
              fStack_90 = fStack_b0;
              fStack_88 = fStack_ac;
              fStack_80 = fStack_a8;
              fStack_70 = fStack_b0;
              fStack_6c = fStack_8c;
              fStack_68 = fStack_ac;
              fStack_64 = fStack_84;
              fStack_58 = fStack_a4;
              fStack_50 = fStack_a0;
              fStack_48 = fStack_9c;
              fStack_40 = fStack_98;
              fStack_30 = fStack_a0;
              fStack_2c = fStack_4c;
              fStack_28 = fStack_9c;
              fStack_24 = fStack_44;
              fStack_18 = fStack_94;
              uVar39 = FUN_105c1340(&fStack_98,&fStack_a8,&fStack_a0,&fStack_b0,(float *)0x0,
                                    DAT_10acf464);
              if ((char)uVar39 != '\0') {
                if (piVar2 != (int *)0x0) {
                  piVar37 = piVar2 + 1;
                  LOCK();
                  iVar3 = *piVar37;
                  *piVar37 = *piVar37 + -1;
                  UNLOCK();
                  if (iVar3 == 1) {
                    LOCK();
                    *piVar37 = 1;
                    UNLOCK();
                    (**(code **)*piVar2)(1);
                  }
                }
                uVar39 = (**(code **)(*piVar36 + 0x14))();
                return CONCAT31((int3)((uint)uVar39 >> 8),1);
              }
              fVar20 = fStack_40;
              fVar21 = fStack_20;
              fVar22 = fStack_3c;
              fVar23 = fStack_1c;
              fVar24 = fStack_38;
              fVar25 = fStack_18;
              fVar26 = fStack_34;
              fVar27 = fStack_14;
              fVar28 = fStack_80;
              fVar29 = fStack_60;
              fVar30 = fStack_7c;
              fVar31 = fStack_5c;
              fVar32 = fStack_78;
              fVar33 = fStack_58;
              fVar34 = fStack_74;
              fVar35 = fStack_54;
              fVar4 = fStack_a8;
              fVar5 = fStack_a4;
              fVar6 = fStack_98;
              fVar7 = fStack_94;
              fVar8 = fStack_7c;
              fVar9 = fStack_78;
              fVar10 = fStack_74;
              fVar11 = fStack_60;
              fVar12 = fStack_5c;
              fVar13 = fStack_54;
              fVar14 = fStack_3c;
              fVar15 = fStack_38;
              fVar16 = fStack_34;
              fVar17 = fStack_20;
              fVar18 = fStack_1c;
              fVar19 = fStack_14;
            }
            fStack_a8 = fVar4;
            fStack_a4 = fVar5;
            fStack_98 = fVar6;
            fStack_94 = fVar7;
            fStack_7c = fVar8;
            fStack_78 = fVar9;
            fStack_74 = fVar10;
            fStack_60 = fVar11;
            fStack_5c = fVar12;
            fStack_54 = fVar13;
            fStack_3c = fVar14;
            fStack_38 = fVar15;
            fStack_34 = fVar16;
            fStack_20 = fVar17;
            fStack_1c = fVar18;
            fStack_14 = fVar19;
          }
          piVar1 = piVar2 + 1;
          LOCK();
          iVar3 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar3 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*piVar2)(1);
          }
          piVar37 = (int *)*piVar37;
        } while (piVar37 != piVar36 + 0x38);
        uVar40 = (**(code **)(*piVar36 + 0x14))();
        return uVar40 & 0xffffff00;
      }
      in_EAX = (**(code **)(*piVar36 + 0x14))();
    }
  }
  return in_EAX & 0xffffff00;
}


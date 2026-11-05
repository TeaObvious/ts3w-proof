/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GridGenericImpl. Export ordinal(s):
   1120. Entry VA: 0x1056fa40. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006D2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined1 __cdecl
UIManager_GridGenericImpl
          (undefined4 *param_1,int param_2,float *param_3,float *param_4,uint *param_5,
          float *param_6)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  uint3 uVar3;
  char cVar4;
  undefined1 uVar5;
  int *piVar6;
  int *piVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  float unaff_ESI;
  float unaff_EDI;
  float10 fVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  float fVar14;
  float fVar15;
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [28];
  
  piVar6 = (int *)FUN_1055b120();
  if (((((uint)param_1 & 0xff000000) == 0x30000000) &&
      (piVar7 = (int *)(**(code **)(*piVar6 + 0xcc))(), piVar7 != (int *)0x0)) &&
     (piVar7 = (int *)(**(code **)(*piVar7 + 0xc))(), piVar7 != (int *)0x0)) {
    switch(param_2) {
    case 1:
      uVar5 = (**(code **)(*piVar7 + 0xb0))(*param_3);
      return uVar5;
    case 2:
      uVar5 = (**(code **)(*piVar7 + 0xac))(*param_3);
      return uVar5;
    case 3:
      uVar5 = (**(code **)(*piVar7 + 0xb8))(*param_3);
      return uVar5;
    case 4:
      uVar5 = (**(code **)(*piVar7 + 0xb4))(*param_3);
      return uVar5;
    case 5:
      (**(code **)(*piVar7 + 0xbc))(*param_3);
      return 1;
    case 6:
      (**(code **)(*piVar7 + 0xc0))(*param_3);
      return 1;
    case 7:
      (**(code **)(*piVar7 + 0xc4))(*param_3,*param_4);
      return 1;
    case 8:
      uVar5 = (**(code **)(*piVar7 + 0xcc))(*param_3,*param_4);
      return uVar5;
    case 9:
      uVar5 = (**(code **)(*piVar7 + 0xd8))(param_3,param_4);
      return uVar5;
    case 10:
      uVar5 = (**(code **)(*piVar7 + 0xdc))(*param_3,*param_4);
      return uVar5;
    case 0xb:
      (**(code **)(*piVar7 + 0xe8))();
      return 1;
    case 0xc:
      uVar5 = (**(code **)(*piVar7 + 0x198))(*param_3,*param_4);
      return uVar5;
    case 0xd:
      uVar5 = (**(code **)(*piVar7 + 0x1a0))();
      return uVar5;
    case 0xe:
      uVar5 = (**(code **)(*piVar7 + 0x1e8))(*param_3,*param_4,&stack0xffffffd8);
      if (param_1 != (undefined4 *)0x0) {
        (**(code **)*param_1)();
        uVar9 = (**(code **)(*piVar6 + 200))(param_1,0x30);
        *param_5 = uVar9;
        return uVar5;
      }
      break;
    case 0xf:
      if ((*param_5 & 0xff000000) == 0x30000000) {
        piVar6 = (int *)(**(code **)(*piVar6 + 0xcc))(*param_5);
        iVar10 = FUN_1056bb80(piVar6);
        if (iVar10 != 0) {
          fVar15 = *param_6;
          uVar3 = CONCAT21((short)((uint)iVar10 >> 0x10),
                           (fVar15 == 0.0) << 6 | NAN(fVar15) << 2 | 2U | fVar15 < 0.0);
          if (fVar15 == 0.0) {
            iVar8 = (uint)uVar3 << 8;
          }
          else {
            iVar8 = CONCAT31(uVar3,1);
          }
          uVar5 = (**(code **)(*piVar7 + 0x1ec))(*param_3,*param_4,iVar10,iVar8,fVar15 != 0.0,1);
          return uVar5;
        }
      }
      break;
    case 0x10:
      uVar5 = (**(code **)(*piVar7 + 0x1e0))(*param_3,*param_4,&stack0xffffffd8);
      if (param_1 != (undefined4 *)0x0) {
        uVar9 = (**(code **)(*piVar6 + 200))(param_1,0x30);
        *param_5 = uVar9;
        return uVar5;
      }
      break;
    case 0x11:
      if ((*param_5 & 0xff000000) == 0x30000000) {
        piVar6 = (int *)(**(code **)(*piVar6 + 0xcc))(*param_5);
        iVar10 = FUN_1056bc00(piVar6);
        if (iVar10 != 0) {
          uVar5 = (**(code **)(*piVar7 + 0x1e4))(*param_3,*param_4,iVar10,1);
          return uVar5;
        }
      }
      break;
    case 0x12:
      fVar11 = (float10)(**(code **)(*piVar7 + 0x130))(*param_3,1);
      *param_6 = (float)fVar11;
      return 1;
    case 0x13:
      uVar5 = (**(code **)(*piVar7 + 0x11c))(*param_3,*param_4,*param_6);
      return uVar5;
    case 0x14:
      fVar11 = (float10)(**(code **)(*piVar7 + 0x134))(*param_3,1);
      *param_6 = (float)fVar11;
      return 1;
    case 0x15:
      uVar5 = (**(code **)(*piVar7 + 0x124))(*param_3,*param_4,*param_6);
      return uVar5;
    case 0x16:
      fVar15 = *param_6;
      auVar16._0_4_ = DAT_10aae184 * fVar15;
      auVar16._4_4_ = DAT_10aae184 * fVar15;
      auVar16._8_4_ = DAT_10aae184 * fVar15;
      auVar16._12_4_ = DAT_10aae184 * fVar15;
      auVar17._4_4_ = fVar15;
      auVar17._0_4_ = fVar15;
      auVar17._8_4_ = fVar15;
      auVar17._12_4_ = fVar15;
      auVar17 = maxps(auVar16,auVar17);
      auVar18._4_4_ = -(uint)(auVar17._4_4_ <= DAT_10b20bf4);
      auVar18._0_4_ = -(uint)(auVar17._0_4_ <= DAT_10b20bf4);
      auVar18._8_4_ = -(uint)(auVar17._8_4_ <= DAT_10b20bf4);
      auVar18._12_4_ = -(uint)(auVar17._12_4_ <= DAT_10b20bf4);
      iVar10 = movmskps(param_2,auVar18);
      if (iVar10 == 0xf) {
        uVar9 = (**(code **)(*piVar7 + 0x214))();
        *param_5 = uVar9;
        return 1;
      }
      fVar14 = fVar15 - DAT_10acb0d4;
      auVar19._0_4_ = DAT_10aae184 * fVar14;
      auVar19._4_4_ = DAT_10aae184 * fVar14;
      auVar19._8_4_ = DAT_10aae184 * fVar14;
      auVar19._12_4_ = DAT_10aae184 * fVar14;
      auVar1._4_4_ = fVar14;
      auVar1._0_4_ = fVar14;
      auVar1._8_4_ = fVar14;
      auVar1._12_4_ = fVar14;
      auVar17 = maxps(auVar19,auVar1);
      auVar20._4_4_ = -(uint)(auVar17._4_4_ <= DAT_10b20bf4);
      auVar20._0_4_ = -(uint)(auVar17._0_4_ <= DAT_10b20bf4);
      auVar20._8_4_ = -(uint)(auVar17._8_4_ <= DAT_10b20bf4);
      auVar20._12_4_ = -(uint)(auVar17._12_4_ <= DAT_10b20bf4);
      iVar10 = movmskps(iVar10,auVar20);
      if (iVar10 == 0xf) {
        uVar9 = (**(code **)(*piVar7 + 0x204))(*param_3);
        *param_5 = uVar9;
        return 1;
      }
      fVar15 = fVar15 - _DAT_10aadffc;
      auVar12._0_4_ = DAT_10aae184 * fVar15;
      auVar12._4_4_ = DAT_10aae184 * fVar15;
      auVar12._8_4_ = DAT_10aae184 * fVar15;
      auVar12._12_4_ = DAT_10aae184 * fVar15;
      auVar2._4_4_ = fVar15;
      auVar2._0_4_ = fVar15;
      auVar2._8_4_ = fVar15;
      auVar2._12_4_ = fVar15;
      auVar17 = maxps(auVar12,auVar2);
      auVar13._4_4_ = -(uint)(auVar17._4_4_ <= DAT_10b20bf4);
      auVar13._0_4_ = -(uint)(auVar17._0_4_ <= DAT_10b20bf4);
      auVar13._8_4_ = -(uint)(auVar17._8_4_ <= DAT_10b20bf4);
      auVar13._12_4_ = -(uint)(auVar17._12_4_ <= DAT_10b20bf4);
      iVar10 = movmskps(param_6,auVar13);
      if (iVar10 == 0xf) {
        uVar9 = (**(code **)(*piVar7 + 0x20c))(*param_4);
        *param_5 = uVar9;
        return 1;
      }
      uVar9 = (**(code **)(*piVar7 + 0x1fc))(*param_3,*param_4);
      *param_5 = uVar9;
      return 1;
    case 0x17:
      fVar15 = *param_6;
      if (fVar15 == DAT_10aae18c) {
        uVar5 = (**(code **)(*piVar7 + 0x210))(*param_5);
        return uVar5;
      }
      if (fVar15 == DAT_10acb0d4) {
        uVar5 = (**(code **)(*piVar7 + 0x200))(*param_3,*param_5);
        return uVar5;
      }
      if (fVar15 == _DAT_10aadffc) {
        uVar5 = (**(code **)(*piVar7 + 0x208))(*param_4,*param_5);
        return uVar5;
      }
      uVar5 = (**(code **)(*piVar7 + 0x1f8))(*param_3,*param_4,*param_5);
      return uVar5;
    case 0x18:
      uVar5 = (**(code **)(*piVar7 + 0x1bc))(*param_3,*param_4);
      return uVar5;
    case 0x19:
      uVar5 = (**(code **)(*piVar7 + 0x1b8))(*param_3,*param_4);
      return uVar5;
    case 0x1a:
      uVar5 = (**(code **)(*piVar7 + 0x1a8))(*param_3,*param_4,2);
      return uVar5;
    case 0x1b:
      uVar5 = (**(code **)(*piVar7 + 0x1ac))(*param_3,*param_4,3);
      return uVar5;
    case 0x1c:
      uVar5 = (**(code **)(*piVar7 + 0x1c4))(param_3,param_4);
      return uVar5;
    case 0x1d:
      uVar5 = (**(code **)(*piVar7 + 0x1c8))(*param_3,*param_4);
      return uVar5;
    case 0x1e:
      cVar4 = (**(code **)(*piVar7 + 0x1d4))
                        ((float)(int)*param_3,(float)(int)*param_4,param_5,auStack_20);
      if (cVar4 != '\0') {
        *param_3 = unaff_EDI;
        *param_4 = unaff_ESI;
        return 1;
      }
      break;
    case 0x1f:
      uVar5 = (**(code **)(*piVar7 + 0xe0))(*param_3,*param_4,*param_5 != 0);
      return uVar5;
    case 0x20:
      uVar5 = (**(code **)(*piVar7 + 0x1cc))(&stack0xffffffd8,auStack_24);
      *param_3 = (float)(int)unaff_EDI;
      *param_4 = (float)(int)unaff_ESI;
      return uVar5;
    case 0x21:
      uVar5 = (**(code **)(*piVar7 + 0x14))();
      return uVar5;
    case 0x22:
      uVar5 = (**(code **)(*piVar7 + 0x80))(*param_5);
      return uVar5;
    case 0x23:
      uVar5 = (**(code **)(*piVar7 + 0x7c))(param_5);
      return uVar5;
    case 0x24:
      uVar5 = (**(code **)(*piVar7 + 0x88))(*param_5);
      return uVar5;
    case 0x25:
      uVar5 = (**(code **)(*piVar7 + 0x84))(param_5);
      return uVar5;
    case 0x26:
      uVar5 = (**(code **)(*piVar7 + 0x90))(*param_5);
      return uVar5;
    case 0x27:
      uVar5 = (**(code **)(*piVar7 + 0x8c))(param_5);
      return uVar5;
    case 0x28:
      uVar5 = (**(code **)(*piVar7 + 0x98))(*param_5);
      return uVar5;
    case 0x29:
      uVar5 = (**(code **)(*piVar7 + 0x94))(param_5);
      return uVar5;
    case 0x2a:
      uVar5 = (**(code **)(*piVar7 + 0xe4))(*param_3,*param_4);
      return uVar5;
    case 0x2b:
      uVar5 = (**(code **)(*piVar7 + 0x184))(*param_3,*param_4,1,*param_5);
      return uVar5;
    case 0x2c:
      uVar5 = (**(code **)(*piVar7 + 0x184))(*param_3,*param_4,3,*param_5);
      return uVar5;
    case 0x2d:
      uVar5 = (**(code **)(*piVar7 + 0x184))(*param_3,*param_4,5,*param_5);
      return uVar5;
    case 0x2e:
      uVar5 = (**(code **)(*piVar7 + 0x184))(*param_3,*param_4,7,*param_5);
      return uVar5;
    case 0x2f:
      uVar5 = (**(code **)(*piVar7 + 0xa8))(*param_3);
      return uVar5;
    case 0x30:
      uVar5 = (**(code **)(*piVar7 + 0xa4))(*param_3);
      return uVar5;
    case 0x31:
    case 0x32:
      uVar5 = (**(code **)(*piVar7 + 0x1d0))(param_2 == 0x31,auStack_24,&stack0xffffffd8,auStack_20)
      ;
      *param_3 = (float)(int)(float)param_1;
      *param_4 = 0.0;
      *param_5 = (uint)(longlong)ROUND(unaff_EDI);
      return uVar5;
    }
  }
  return 0;
}


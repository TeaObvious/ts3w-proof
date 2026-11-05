/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetPointAtDistanceOnRoute. Export
   ordinal(s): 658. Entry VA: 0x10543070. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000193. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
Route_GetPointAtDistanceOnRoute
          (uint param_1,float param_2,void *param_3,void *param_4,float *param_5)

{
  int *piVar1;
  int *piVar2;
  undefined1 auVar3 [16];
  int *piVar4;
  uint uVar5;
  undefined4 *puVar6;
  int *piVar7;
  undefined4 extraout_ECX;
  int iVar8;
  undefined4 extraout_ECX_00;
  int iVar9;
  float10 fVar10;
  float fVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  float fStack_44;
  undefined4 auStack_40 [2];
  float fStack_38;
  float fStack_34;
  undefined4 auStack_30 [4];
  undefined1 auStack_20 [28];
  
                    /* 0x543070  658  Route_GetPointAtDistanceOnRoute */
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar4 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar4 != (int *)0x0)) {
    (**(code **)(*piVar4 + 0x10))();
    fVar10 = FUN_10541230((int)piVar4);
    fStack_34 = param_2;
    uVar5 = (int)(float)((float10)param_2 - fVar10) >> 0x1f;
    fStack_38 = (float)fVar10;
    param_2 = (float)(~uVar5 & (uint)fStack_38 | (uint)param_2 & uVar5);
    if ((char)piVar4[0x3d] == '\0') {
      piVar7 = (int *)piVar4[0x38];
      if (piVar7 != piVar4 + 0x38) {
        while( true ) {
          piVar2 = (int *)piVar7[2];
          if (piVar2 != (int *)0x0) {
            LOCK();
            piVar2[1] = piVar2[1] + 1;
            UNLOCK();
          }
          fVar10 = (float10)(**(code **)(*piVar2 + 300))();
          fStack_34 = (float)fVar10;
          if ((float10)param_2 < fVar10) break;
          fVar11 = param_2 - fStack_34;
          auVar12._0_4_ = DAT_10aae184 * fVar11;
          auVar12._4_4_ = DAT_10aae184 * fVar11;
          auVar12._8_4_ = DAT_10aae184 * fVar11;
          auVar12._12_4_ = DAT_10aae184 * fVar11;
          auVar3._4_4_ = fVar11;
          auVar3._0_4_ = fVar11;
          auVar3._8_4_ = fVar11;
          auVar3._12_4_ = fVar11;
          auVar13 = maxps(auVar12,auVar3);
          auVar14._4_4_ = -(uint)(auVar13._4_4_ <= DAT_10b1b6f4);
          auVar14._0_4_ = -(uint)(auVar13._0_4_ <= DAT_10b1b6f4);
          auVar14._8_4_ = -(uint)(auVar13._8_4_ <= DAT_10b1b6f4);
          auVar14._12_4_ = -(uint)(auVar13._12_4_ <= DAT_10b1b6f4);
          iVar8 = movmskps(extraout_ECX,auVar14);
          if (iVar8 == 0xf) break;
          piVar1 = piVar2 + 1;
          LOCK();
          iVar8 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar8 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*piVar2)(1);
          }
          piVar7 = (int *)*piVar7;
          param_2 = fVar11;
          if (piVar7 == piVar4 + 0x38) {
            (**(code **)(*piVar4 + 0x14))();
            return;
          }
        }
        puVar6 = (undefined4 *)
                 (**(code **)(*piVar2 + 0x11c))(auStack_20,param_2,auStack_30,&fStack_34);
        FUN_1055dbd0(param_3,puVar6);
        FUN_1055dbd0(param_4,auStack_40);
        *param_5 = fStack_44;
        piVar7 = piVar2 + 1;
        LOCK();
        iVar8 = *piVar7;
        *piVar7 = *piVar7 + -1;
        UNLOCK();
        if (iVar8 == 1) {
          LOCK();
          *piVar7 = 1;
          UNLOCK();
          (**(code **)*piVar2)(1);
        }
        (**(code **)(*piVar4 + 0x14))();
        return;
      }
    }
    else {
      piVar7 = (int *)piVar4[0x3b];
      iVar8 = 100000;
      if (piVar7 != (int *)0x0) {
        while (iVar8 = iVar8 + -1, -1 < iVar8) {
          fVar10 = (float10)(**(code **)(*piVar7 + 300))();
          fStack_34 = (float)fVar10;
          if ((float10)param_2 < fVar10) {
LAB_105432cb:
            puVar6 = (undefined4 *)
                     (**(code **)(*piVar7 + 0x11c))(auStack_20,param_2,auStack_30,&fStack_34);
            FUN_1055dbd0(param_3,puVar6);
            FUN_1055dbd0(param_4,auStack_30);
            *param_5 = fStack_34;
            break;
          }
          fVar11 = param_2 - fStack_34;
          auVar15._0_4_ = DAT_10aae184 * fVar11;
          auVar15._4_4_ = DAT_10aae184 * fVar11;
          auVar15._8_4_ = DAT_10aae184 * fVar11;
          auVar15._12_4_ = DAT_10aae184 * fVar11;
          auVar13._4_4_ = fVar11;
          auVar13._0_4_ = fVar11;
          auVar13._8_4_ = fVar11;
          auVar13._12_4_ = fVar11;
          auVar13 = maxps(auVar15,auVar13);
          auVar16._4_4_ = -(uint)(auVar13._4_4_ <= DAT_10b1b6f4);
          auVar16._0_4_ = -(uint)(auVar13._0_4_ <= DAT_10b1b6f4);
          auVar16._8_4_ = -(uint)(auVar13._8_4_ <= DAT_10b1b6f4);
          auVar16._12_4_ = -(uint)(auVar13._12_4_ <= DAT_10b1b6f4);
          iVar9 = movmskps(extraout_ECX_00,auVar16);
          if (iVar9 == 0xf) goto LAB_105432cb;
          piVar7 = (int *)(**(code **)(*piVar7 + 0x8c))();
          param_2 = fVar11;
          if (piVar7 == (int *)0x0) {
            (**(code **)(*piVar4 + 0x14))();
            return;
          }
        }
      }
    }
    (**(code **)(*piVar4 + 0x14))();
  }
  return;
}


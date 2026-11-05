/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x011619d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetPointAtDistanceOnRoute [assembly=ScriptCore token=0x0600111E; handle:
   System.UInt32, dist: System.Single, point: Sims3.SimIFace.Vector3&, returnTangent:
   Sims3.SimIFace.Vector3&, nodeIndex: System.Int32&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static PC 1.67 contract: resolves a route, selects a segment at the requested distance, asks its
   virtual +11Ch sampler, then copies point, tangent and one raw index DWORD. The distance cap uses
   the sign bit of a rounded Float32 x87 difference, not ordered MIN or a nonnegative clamp. Route
   +F4h selects retained-list versus unbracketed-chain traversal; the latter permits at most 100000
   length queries. Representation consistency and sampler implementations remain open.
   
   The physical sampler receives point scratch, Float32 distance, tangent scratch and index scratch;
   point copy uses returned EAX. The original final byref is Int32, despite the generated float*
   projection. Sequential source rereads/stores do not promise alias-safe snapshots. Early native
   refusal writes no outputs; ScriptCore initializes only point to zero and forwards tangent/index
   unchanged. Zero is not a success flag. FP/NaN descriptions require completed instructions and
   ambient FP state; no general finite-input validation or ABI repair is implied. */

void __cdecl
ScriptCore.Route::Route_GetPointAtDistanceOnRoute
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
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar4 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar4 != (int *)0x0))
  {
    (**(code **)(*piVar4 + 0x10))();
    fVar10 = FUN_007500e0((int)piVar4);
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
          auVar12._0_4_ = fVar11 * -1.0;
          auVar12._4_4_ = fVar11 * -1.0;
          auVar12._8_4_ = fVar11 * -1.0;
          auVar12._12_4_ = fVar11 * -1.0;
          auVar3._4_4_ = fVar11;
          auVar3._0_4_ = fVar11;
          auVar3._8_4_ = fVar11;
          auVar3._12_4_ = fVar11;
          auVar13 = maxps(auVar12,auVar3);
          auVar14._4_4_ = -(uint)(auVar13._4_4_ <= 1.5258789e-05);
          auVar14._0_4_ = -(uint)(auVar13._0_4_ <= 1.5258789e-05);
          auVar14._8_4_ = -(uint)(auVar13._8_4_ <= 1.5258789e-05);
          auVar14._12_4_ = -(uint)(auVar13._12_4_ <= 1.5258789e-05);
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
        FUN_0076c100(param_3,puVar6);
        FUN_0076c100(param_4,auStack_40);
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
LAB_007520eb:
            puVar6 = (undefined4 *)
                     (**(code **)(*piVar7 + 0x11c))(auStack_20,param_2,auStack_30,&fStack_34);
            FUN_0076c100(param_3,puVar6);
            FUN_0076c100(param_4,auStack_30);
            *param_5 = fStack_34;
            break;
          }
          fVar11 = param_2 - fStack_34;
          auVar15._0_4_ = fVar11 * -1.0;
          auVar15._4_4_ = fVar11 * -1.0;
          auVar15._8_4_ = fVar11 * -1.0;
          auVar15._12_4_ = fVar11 * -1.0;
          auVar13._4_4_ = fVar11;
          auVar13._0_4_ = fVar11;
          auVar13._8_4_ = fVar11;
          auVar13._12_4_ = fVar11;
          auVar13 = maxps(auVar15,auVar13);
          auVar16._4_4_ = -(uint)(auVar13._4_4_ <= 1.5258789e-05);
          auVar16._0_4_ = -(uint)(auVar13._0_4_ <= 1.5258789e-05);
          auVar16._8_4_ = -(uint)(auVar13._8_4_ <= 1.5258789e-05);
          auVar16._12_4_ = -(uint)(auVar13._12_4_ <= 1.5258789e-05);
          iVar9 = movmskps(extraout_ECX_00,auVar16);
          if (iVar9 == 0xf) goto LAB_007520eb;
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


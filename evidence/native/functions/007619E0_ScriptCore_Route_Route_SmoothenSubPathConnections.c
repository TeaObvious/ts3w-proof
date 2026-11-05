/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x01161958 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_SmoothenSubPathConnections [assembly=ScriptCore token=0x0600110E; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static PC 1.67 contract: resolves the route handle and requests smoothing of subpath connections,
   subject to the observed global/route admission tests. Refusal paths after route virtual +10h pass
   through +14h; the final physical exit restores the frame and tail-jumps the route's +14h slot at
   00761E69. The installed virtual targets, geometry/list-edit rules and lifetime policy remain
   open.
   
   The current stored body is a one-byte singleton, shorter than its first six-byte instruction;
   these statements concern the separately byte-checked context, not an enlarged owned function.
   Rich generated C and its __stdcall projection do not establish complete ownership or stack
   cleanup. No signature/boundary repair or runtime success guarantee follows. */

void ScriptCore_Route__Route_SmoothenSubPathConnections(uint param_1)

{
  float *this;
  char cVar1;
  char cVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  int *piVar7;
  undefined4 uVar8;
  int *piVar9;
  char cVar10;
  float *pfVar11;
  float *pfStack_154;
  int *piStack_150;
  int iStack_14c;
  int iStack_148;
  int *piStack_144;
  int iStack_140;
  int *piStack_13c;
  int *piStack_138;
  int iStack_134;
  int iStack_130;
  int iStack_12c;
  int aiStack_128 [2];
  int iStack_120;
  int iStack_11c;
  undefined4 *puStack_108;
  undefined1 uStack_104;
  undefined1 uStack_103;
  undefined4 *puStack_100;
  undefined1 auStack_f8 [120];
  undefined4 auStack_80 [32];
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar3 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar3 != (int *)0x0))
  {
    piStack_13c = piVar3;
    (**(code **)(*piVar3 + 0x10))();
    iStack_134 = DAT_011edbc4;
    if (DAT_011edbc4 != 0) {
      iVar4 = thunk_FUN_00835d40();
      if (iVar4 != 0) {
        iVar5 = FUN_00829600(iVar4);
        iStack_130 = iVar5;
        if (iVar5 != 0) {
          iVar4 = FUN_008295c0(iVar4);
          iStack_12c = iVar4;
          if (iVar4 != 0) {
            this = (float *)(piVar3 + 0x38);
            piStack_138 = (int *)0x0;
            piStack_150 = (int *)0x0;
            piVar6 = FUN_0068fef0((int *)&piStack_150);
            piVar7 = FUN_0068fef0((int *)&piStack_138);
            uVar8 = FUN_00757120(piVar3,piVar7,piVar6);
            iStack_14c = piVar3[0x3c];
            cVar1 = (char)uVar8;
            pfStack_154 = (float *)*this;
            iStack_140 = 0;
            if (pfStack_154 != this) {
              do {
                piVar3 = (int *)pfStack_154[2];
                if (piVar3 != (int *)0x0) {
                  LOCK();
                  piVar3[1] = piVar3[1] + 1;
                  UNLOCK();
                }
                piStack_144 = piVar3;
                piVar6 = (int *)(**(code **)(*piVar3 + 0x7c))();
                if (piVar6 != (int *)0x0) {
                  LOCK();
                  piVar6[1] = piVar6[1] + 1;
                  UNLOCK();
                }
                if ((cVar1 == '\0') || ((piVar3 != piStack_138 && (piVar3 != piStack_150)))) {
                  cVar10 = '\0';
                }
                else {
                  cVar10 = '\x01';
                }
                if (((cVar1 == '\0') || (piVar6 == (int *)0x0)) ||
                   ((piVar6 != piStack_138 && (piVar6 != piStack_150)))) {
                  cVar2 = '\0';
                }
                else {
                  cVar2 = '\x01';
                }
                if (((piVar6 == (int *)0x0) || ((cVar1 != '\0' && (cVar2 != cVar10)))) ||
                   (((piVar7 = (int *)(**(code **)(*piVar3 + 0x30))(), *piVar7 != -0x399ff499 &&
                     (((piVar7 = (int *)(**(code **)(*piVar3 + 0x30))(), *piVar7 != 0x5e69f74b &&
                       (piVar7 = (int *)(**(code **)(*piVar3 + 0x30))(), *piVar7 != -0x1ea3503b)) &&
                      (piVar7 = (int *)(**(code **)(*piVar3 + 0x30))(), *piVar7 != -0x72bc6af6))))
                    && (piVar7 = (int *)(**(code **)(*piVar3 + 0x30))(), *piVar7 != -0x65ff4834))))
                {
LAB_00761c68:
                  pfStack_154 = (float *)*pfStack_154;
                }
                else {
                  piVar7 = (int *)(**(code **)(*piVar3 + 0x30))();
                  piVar9 = (int *)(**(code **)(*piVar6 + 0x30))();
                  if (*piVar7 != *piVar9) goto LAB_00761c68;
                  if (cVar1 != '\0') {
                    if (piVar6 == piStack_150) {
                      FUN_008753c0(&piStack_150,(int *)&piStack_144);
                    }
                    if (iStack_140 < iStack_14c) {
                      iStack_14c = iStack_14c + -1;
                    }
                  }
                  iVar4 = *piVar3;
                  uVar8 = (**(code **)(iVar4 + 0x7c))(1);
                  (**(code **)(iVar4 + 0xf8))(uVar8);
                  piVar7 = (int *)(**(code **)(*piVar3 + 0x7c))();
                  iVar4 = (**(code **)(*piVar7 + 0x7c))();
                  if (iVar4 != 0) {
                    piVar7 = (int *)(**(code **)(*piVar3 + 0x7c))();
                    piVar7 = (int *)(**(code **)(*piVar7 + 0x7c))();
                    (**(code **)(*piVar7 + 0x80))(piVar3);
                  }
                  piVar7 = (int *)(**(code **)(*piVar3 + 0x7c))();
                  iVar4 = *piVar3;
                  uVar8 = (**(code **)(*piVar7 + 0x7c))();
                  (**(code **)(iVar4 + 0x78))(uVar8);
                  piVar7 = (int *)FUN_00759440(&iStack_148,(int *)*pfStack_154);
                  pfStack_154 = *(float **)(*piVar7 + 4);
                }
                piVar7 = piStack_13c;
                if (cVar1 != '\0') {
                  if (iStack_14c != piStack_13c[0x3c]) {
                    piStack_13c[0x3c] = iStack_14c;
                    FUN_00757380(piStack_13c);
                  }
                  FUN_00757380(piVar7);
                }
                FUN_00756970((int)piVar7);
                if (piVar6 != (int *)0x0) {
                  piVar7 = piVar6 + 1;
                  LOCK();
                  iVar4 = *piVar7;
                  *piVar7 = *piVar7 + -1;
                  UNLOCK();
                  if (iVar4 == 1) {
                    LOCK();
                    *piVar7 = 1;
                    UNLOCK();
                    (**(code **)*piVar6)(1);
                  }
                }
                piVar6 = piVar3 + 1;
                LOCK();
                iVar4 = *piVar6;
                *piVar6 = *piVar6 + -1;
                UNLOCK();
                if (iVar4 == 1) {
                  LOCK();
                  *piVar6 = 1;
                  UNLOCK();
                  (**(code **)*piVar3)(1);
                }
                iStack_140 = iStack_140 + 1;
              } while (pfStack_154 != this);
              piVar3 = piStack_13c;
              iVar4 = iStack_12c;
              iVar5 = iStack_130;
            }
            FUN_0081c7b0(auStack_80,0,0x804,0,0);
            aiStack_128[0] = piVar3[0xf];
            iStack_120 = piVar3[0x10];
            puStack_100 = auStack_80;
            iStack_11c = piVar3[0x11];
            puStack_108 = (undefined4 *)0x0;
            uStack_104 = 1;
            uStack_103 = 0;
            FUN_006442e0(auStack_f8,iStack_134,iVar4,iVar5,aiStack_128);
            FUN_00646b50(this,0);
            FUN_0075fe10(this,this);
            pfVar11 = (float *)*this;
            if (pfVar11 != this) {
              do {
                piVar6 = (int *)pfVar11[2];
                if (piVar6 != (int *)0x0) {
                  LOCK();
                  piVar6[1] = piVar6[1] + 1;
                  UNLOCK();
                }
                (**(code **)(*piVar6 + 0x44))(0);
                piVar7 = piVar6 + 1;
                LOCK();
                iVar4 = *piVar7;
                *piVar7 = *piVar7 + -1;
                UNLOCK();
                if (iVar4 == 1) {
                  LOCK();
                  *piVar7 = 1;
                  UNLOCK();
                  (**(code **)*piVar6)(1);
                }
                pfVar11 = (float *)*pfVar11;
              } while (pfVar11 != this);
            }
            FUN_00643e00((int)auStack_f8);
            if (puStack_108 != (undefined4 *)0x0) {
              piVar6 = puStack_108 + 1;
              LOCK();
              iVar4 = *piVar6;
              *piVar6 = *piVar6 + -1;
              UNLOCK();
              if (iVar4 == 1) {
                LOCK();
                *piVar6 = 1;
                UNLOCK();
                if (puStack_108 != (undefined4 *)0x0) {
                  (**(code **)*puStack_108)(1);
                }
              }
            }
            FUN_0081c830(auStack_80);
            if (piStack_150 != (int *)0x0) {
              piVar6 = piStack_150 + 1;
              LOCK();
              iVar4 = *piVar6;
              *piVar6 = *piVar6 + -1;
              UNLOCK();
              if (iVar4 == 1) {
                LOCK();
                *piVar6 = 1;
                UNLOCK();
                if (piStack_150 != (int *)0x0) {
                  (**(code **)*piStack_150)(1);
                }
              }
            }
            if (piStack_138 != (int *)0x0) {
              piVar6 = piStack_138 + 1;
              LOCK();
              iVar4 = *piVar6;
              *piVar6 = *piVar6 + -1;
              UNLOCK();
              if (iVar4 == 1) {
                LOCK();
                *piVar6 = 1;
                UNLOCK();
                if (piStack_138 != (int *)0x0) {
                  (**(code **)*piStack_138)(1);
                }
              }
            }
                    /* WARNING: Could not recover jumptable at 0x00761e69. Too many branches */
                    /* WARNING: Treating indirect jump as call */
            (**(code **)(*piVar3 + 0x14))();
            return;
          }
        }
      }
    }
    (**(code **)(*piVar3 + 0x14))();
  }
  return;
}


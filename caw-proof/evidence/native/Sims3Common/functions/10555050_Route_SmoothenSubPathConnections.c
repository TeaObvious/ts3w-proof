/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SmoothenSubPathConnections. Export
   ordinal(s): 699. Entry VA: 0x10555050. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000183. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl Route_SmoothenSubPathConnections(uint param_1)

{
  float *this;
  float *pfVar1;
  char cVar2;
  char cVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  int *piVar8;
  undefined4 uVar9;
  int *piVar10;
  char cVar11;
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
  
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar4 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar4 != (int *)0x0)) {
    piStack_13c = piVar4;
    (**(code **)(*piVar4 + 0x10))();
    iStack_134 = DAT_10c700c4;
    if ((DAT_10c700c4 != 0) &&
       (((iVar5 = thunk_FUN_10627370(), iVar5 != 0 &&
         (iVar6 = FUN_1061ae50(iVar5), iStack_130 = iVar6, iVar6 != 0)) &&
        (iVar5 = FUN_1061ae10(iVar5), iStack_12c = iVar5, iVar5 != 0)))) {
      this = (float *)(piVar4 + 0x38);
      piStack_138 = (int *)0x0;
      piStack_150 = (int *)0x0;
      piVar7 = FUN_102e31d0((int *)&piStack_150);
      piVar8 = FUN_102e31d0((int *)&piStack_138);
      uVar9 = FUN_10548700(piVar4,piVar8,piVar7);
      iStack_14c = piVar4[0x3c];
      cVar2 = (char)uVar9;
      pfStack_154 = (float *)*this;
      iStack_140 = 0;
      do {
        if (pfStack_154 == this) {
          FUN_1060e3c0(auStack_80,0,0x804,0,0);
          aiStack_128[0] = piVar4[0xf];
          iStack_120 = piVar4[0x10];
          puStack_100 = auStack_80;
          iStack_11c = piVar4[0x11];
          puStack_108 = (undefined4 *)0x0;
          uStack_104 = 1;
          uStack_103 = 0;
          FUN_1043bb30(auStack_f8,iStack_134,iVar5,iVar6,aiStack_128);
          FUN_1043e3a0(this,0);
          FUN_105515d0(this,(int *)this);
          for (pfVar1 = (float *)*this; pfVar1 != this; pfVar1 = (float *)*pfVar1) {
            piVar7 = (int *)pfVar1[2];
            if (piVar7 != (int *)0x0) {
              LOCK();
              piVar7[1] = piVar7[1] + 1;
              UNLOCK();
            }
            (**(code **)(*piVar7 + 0x44))(0);
            piVar8 = piVar7 + 1;
            LOCK();
            iVar5 = *piVar8;
            *piVar8 = *piVar8 + -1;
            UNLOCK();
            if (iVar5 == 1) {
              LOCK();
              *piVar8 = 1;
              UNLOCK();
              (**(code **)*piVar7)(1);
            }
          }
          FUN_1043b650((int)auStack_f8);
          if (puStack_108 != (undefined4 *)0x0) {
            piVar7 = puStack_108 + 1;
            LOCK();
            iVar5 = *piVar7;
            *piVar7 = *piVar7 + -1;
            UNLOCK();
            if (iVar5 == 1) {
              LOCK();
              *piVar7 = 1;
              UNLOCK();
              if (puStack_108 != (undefined4 *)0x0) {
                (**(code **)*puStack_108)(1);
              }
            }
          }
          FUN_1060e440(auStack_80);
          if (piStack_150 != (int *)0x0) {
            piVar7 = piStack_150 + 1;
            LOCK();
            iVar5 = *piVar7;
            *piVar7 = *piVar7 + -1;
            UNLOCK();
            if (iVar5 == 1) {
              LOCK();
              *piVar7 = 1;
              UNLOCK();
              if (piStack_150 != (int *)0x0) {
                (**(code **)*piStack_150)(1);
              }
            }
          }
          if (piStack_138 != (int *)0x0) {
            piVar7 = piStack_138 + 1;
            LOCK();
            iVar5 = *piVar7;
            *piVar7 = *piVar7 + -1;
            UNLOCK();
            if (iVar5 == 1) {
              LOCK();
              *piVar7 = 1;
              UNLOCK();
              if (piStack_138 != (int *)0x0) {
                (**(code **)*piStack_138)(1);
              }
            }
          }
                    /* WARNING: Could not recover jumptable at 0x10553729. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          (**(code **)(*piVar4 + 0x14))();
          return;
        }
        piVar4 = (int *)pfStack_154[2];
        if (piVar4 != (int *)0x0) {
          LOCK();
          piVar4[1] = piVar4[1] + 1;
          UNLOCK();
        }
        piStack_144 = piVar4;
        piVar7 = (int *)(**(code **)(*piVar4 + 0x7c))();
        if (piVar7 != (int *)0x0) {
          LOCK();
          piVar7[1] = piVar7[1] + 1;
          UNLOCK();
        }
        if ((cVar2 == '\0') || ((piVar4 != piStack_138 && (piVar4 != piStack_150)))) {
          cVar11 = '\0';
        }
        else {
          cVar11 = '\x01';
        }
        if (((cVar2 == '\0') || (piVar7 == (int *)0x0)) ||
           ((piVar7 != piStack_138 && (piVar7 != piStack_150)))) {
          cVar3 = '\0';
        }
        else {
          cVar3 = '\x01';
        }
        if (((piVar7 == (int *)0x0) || ((cVar2 != '\0' && (cVar3 != cVar11)))) ||
           (((piVar8 = (int *)(**(code **)(*piVar4 + 0x30))(), *piVar8 != -0x399ff499 &&
             (((piVar8 = (int *)(**(code **)(*piVar4 + 0x30))(), *piVar8 != 0x5e69f74b &&
               (piVar8 = (int *)(**(code **)(*piVar4 + 0x30))(), *piVar8 != -0x1ea3503b)) &&
              (piVar8 = (int *)(**(code **)(*piVar4 + 0x30))(), *piVar8 != -0x72bc6af6)))) &&
            (piVar8 = (int *)(**(code **)(*piVar4 + 0x30))(), *piVar8 != -0x65ff4834)))) {
LAB_10553528:
          pfStack_154 = (float *)*pfStack_154;
        }
        else {
          piVar8 = (int *)(**(code **)(*piVar4 + 0x30))();
          piVar10 = (int *)(**(code **)(*piVar7 + 0x30))();
          if (*piVar8 != *piVar10) goto LAB_10553528;
          if (cVar2 != '\0') {
            if (piVar7 == piStack_150) {
              FUN_1043afd0(&piStack_150,(int *)&piStack_144);
            }
            if (iStack_140 < iStack_14c) {
              iStack_14c = iStack_14c + -1;
            }
          }
          iVar5 = *piVar4;
          uVar9 = (**(code **)(iVar5 + 0x7c))(1);
          (**(code **)(iVar5 + 0xf8))(uVar9);
          piVar8 = (int *)(**(code **)(*piVar4 + 0x7c))();
          iVar5 = (**(code **)(*piVar8 + 0x7c))();
          if (iVar5 != 0) {
            piVar8 = (int *)(**(code **)(*piVar4 + 0x7c))();
            piVar8 = (int *)(**(code **)(*piVar8 + 0x7c))();
            (**(code **)(*piVar8 + 0x80))(piVar4);
          }
          piVar8 = (int *)(**(code **)(*piVar4 + 0x7c))();
          iVar5 = *piVar4;
          uVar9 = (**(code **)(*piVar8 + 0x7c))();
          (**(code **)(iVar5 + 0x78))(uVar9);
          piVar8 = (int *)FUN_1054abb0(&iStack_148,(int *)*pfStack_154);
          pfStack_154 = *(float **)(*piVar8 + 4);
        }
        piVar8 = piStack_13c;
        if (cVar2 != '\0') {
          if (iStack_14c != piStack_13c[0x3c]) {
            piStack_13c[0x3c] = iStack_14c;
            FUN_10548960(piStack_13c);
          }
          FUN_10548960(piVar8);
        }
        FUN_10547b90((int)piVar8);
        if (piVar7 != (int *)0x0) {
          piVar8 = piVar7 + 1;
          LOCK();
          iVar5 = *piVar8;
          *piVar8 = *piVar8 + -1;
          UNLOCK();
          if (iVar5 == 1) {
            LOCK();
            *piVar8 = 1;
            UNLOCK();
            (**(code **)*piVar7)(1);
          }
        }
        piVar7 = piVar4 + 1;
        LOCK();
        iVar5 = *piVar7;
        *piVar7 = *piVar7 + -1;
        UNLOCK();
        if (iVar5 == 1) {
          LOCK();
          *piVar7 = 1;
          UNLOCK();
          (**(code **)*piVar4)(1);
        }
        iStack_140 = iStack_140 + 1;
        piVar4 = piStack_13c;
        iVar6 = iStack_130;
        iVar5 = iStack_12c;
      } while( true );
    }
    (**(code **)(*piVar4 + 0x14))();
  }
  return;
}


/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x0108d648 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.TaskControl::TaskControl_GetTaskContext [assembly=ScriptCore token=0x06000124; taskId:
   System.UInt64, methodsOnly: System.Boolean, context: ScriptCore.TaskContext&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst behavioral addition, static PC1.67: Produce the five-DWORD TaskContext output for a
   UInt64 task ID and methodsOnly flag. Equality against the ID returned in EDX:EAX by host
   virtual+0x118 clears all five output words and returns AL=0; that host-slot target/current-task
   meaning remains unresolved. A primary task-map miss also clears all five words but returns AL=1,
   so the managed writer separately treats null frames as NotSleeping. A found task publishes
   frame-array/context data before later checks can return false; no output rollback follows from
   the Boolean. Allocate highest-frame-index+1 entries and iterate signed index<=highest; admitted
   nonnull frame records and compatible headers are runtime-state preconditions. Method+8 is the
   first body-header context, with method+0xC fallback when that helper returns0. Signature UInt16
   argument count and header UInt16 local count drive field records; their prefix count is distinct
   from the locator layout's UInt8 argument partition. methodsOnly suppresses
   checksum/field/evaluation output materialization but does not bypass all metadata/evaluation
   validation. Evaluation descriptors are converted through the bounded seven-way table at D8476C;
   allocation/boxing/decoder cleanup children retain their own error/lifetime contracts.
   Captured Ghidra ownership is [D84200,D84201),1 byte, listing0. Behavioral evidence is the
   independently checked original-PE normal CFG [D84200,D8476B),1387 bytes/432 reachable
   instructions, plus separate28-byte target table [D8476C,D84788), with normal-return child-call
   assumptions. The old1424-byte window also contains1 alignment byte and8 CC bytes; no data is
   accepted as instructions and no ownership repair is implied. Return contract is AL Boolean, not
   an integer EAX error sentinel. Actual bridge/calling convention, allocation/GC, frame lifetime,
   synchronization and runtime behavior remain open; decompiler ABI/HighVariable artifacts are not
   new semantic inputs. Managed WriteTask consumes this GetTaskContext status; Restore separately
   tests SetTaskContext's Boolean before later void field setters, which provide no individual
   success channel. */

undefined1
ScriptCore_TaskControl__TaskControl_GetTaskContext
          (uint param_1,undefined4 param_2,char param_3,undefined4 *param_4)

{
  undefined4 *puVar1;
  byte *pbVar2;
  uint uVar3;
  undefined1 uVar4;
  undefined2 uVar5;
  int iVar6;
  undefined4 uVar7;
  undefined2 extraout_var;
  uint *puVar8;
  int *piVar9;
  undefined4 *puVar10;
  uint uVar11;
  uint uVar12;
  int *piVar13;
  void *this;
  uint *puVar14;
  LPCRITICAL_SECTION p_Var15;
  longlong lVar16;
  int *piVar17;
  int *piStack_cc;
  uint uStack_c8;
  undefined1 uStack_c1;
  uint *puStack_c0;
  int *piStack_bc;
  LPCRITICAL_SECTION p_Stack_b8;
  byte *pbStack_b4;
  int iStack_b0;
  int iStack_ac;
  int *piStack_a8;
  int iStack_a4;
  uint *puStack_a0;
  int iStack_9c;
  uint uStack_98;
  undefined1 *puStack_94;
  undefined1 *puStack_90;
  undefined1 auStack_80 [128];
  
  iVar6 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar6 == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)(iVar6 + -8);
  }
  piStack_bc = (int *)((int)this + 8);
  uStack_c1 = 0;
  lVar16 = (**(code **)(*(int *)((int)this + 8) + 0x118))();
  if (lVar16 == CONCAT44(param_2,param_1)) {
    uVar4 = uStack_c1;
  }
  else {
    iVar6 = FindTaskStateWithOptionalCreation(this,param_1,param_2,0);
    uVar4 = 1;
    if (iVar6 != 0) {
      iStack_a4 = iVar6;
      puStack_c0 = (uint *)FUN_00d7a090(this,"ScriptCore","TaskFrame");
      puStack_a0 = (uint *)FUN_00d7a090(this,"ScriptCore","TaskFieldInfo");
      p_Stack_b8 = (LPCRITICAL_SECTION)FUN_00e75550();
      uVar7 = FUN_00ea33f0(p_Stack_b8,puStack_c0,*(int *)(iVar6 + 0x140) + 1);
      param_4[1] = uVar7;
      piStack_cc = (int *)0x0;
      FUN_00d74c20(this,param_1,param_2,param_4 + 2,param_4 + 3,(int *)&piStack_cc);
      piVar13 = piStack_cc;
      if (piStack_cc == (int *)0x0) {
        param_4[4] = 0;
      }
      else {
        piStack_cc = (int *)0x0;
        uVar7 = (**(code **)(*piStack_bc + 200))(piVar13,0x43);
        param_4[4] = uVar7;
        if (piStack_cc != (int *)0x0) {
          (**(code **)(*piStack_cc + 4))();
        }
      }
      if (*(int *)(iVar6 + 0x14c) == 0) {
        uVar7 = 0;
      }
      else {
        uVar7 = *(undefined4 *)(*(int *)(iVar6 + 0x14c) + 8);
      }
      *param_4 = uVar7;
      iStack_ac = 0;
      if (-1 < *(int *)(iVar6 + 0x140)) {
        piStack_a8 = (int *)(iVar6 + 0x3c);
        iStack_b0 = 0;
        do {
          piVar13 = (int *)*piStack_a8;
          puVar14 = *(uint **)(*piVar13 + 8);
          puVar1 = (undefined4 *)(param_4[1] + 0x10 + iStack_b0);
          if (puVar14 == (uint *)0x0) {
            return 0;
          }
          puStack_c0 = puVar14;
          piStack_bc = piVar13;
          piStack_cc = (int *)GetOrCreateMethodBodyHeader((ushort *)puVar14);
          if (piStack_cc == (int *)0x0) {
            piStack_cc = (int *)GetOrCreateMethodBodyHeader(*(ushort **)(*piVar13 + 0xc));
          }
          pbVar2 = *(byte **)((int)puVar14 + 0xc);
          *puVar1 = puVar14;
          pbStack_b4 = pbVar2;
          if ((param_3 == '\0') &&
             (uVar7 = ScriptCore.TaskControl::TaskControl_GetMethodChecksum
                                ((ushort *)puVar14,puVar1 + 1), (char)uVar7 == '\0')) {
            return 0;
          }
          puVar1[2] = piVar13[2];
          puVar1[3] = piVar13[3];
          puVar1[4] = piVar13[4];
          puVar1[5] = piVar13[6];
          puVar1[6] = piVar13[7];
          puVar1[7] = piVar13[10];
          if (((*(byte *)(*(int *)((int)puVar14 + 8) + 0x14) & 8) != 0) && ((*pbVar2 & 1) != 0)) {
            return 0;
          }
          uVar5 = RuntimeMethodSignature_GetParameterCount(*(int *)((int)puVar14 + 0xc));
          uVar11 = CONCAT22(extraout_var,uVar5);
          uStack_c8 = (uint)*(ushort *)(piStack_cc + 4);
          if (param_3 == '\0') {
            uVar7 = FUN_00ea33f0(p_Stack_b8,puStack_a0,uStack_c8 + uVar11);
            uVar12 = 0;
            puVar1[8] = uVar7;
            if (uVar11 != 0) {
              iVar6 = 0x10;
              puVar14 = (uint *)(pbStack_b4 + 0x10);
              do {
                uVar3 = *puVar14;
                puVar8 = (uint *)(puVar1[8] + iVar6);
                *puVar8 = uVar12;
                uVar12 = uVar12 + 1;
                iVar6 = iVar6 + 8;
                puVar14 = puVar14 + 1;
                puVar8[1] = uVar3;
              } while (uVar12 < uVar11);
              puVar14 = puStack_c0;
              piVar13 = piStack_bc;
            }
            uVar12 = 0;
            if (uStack_c8 != 0) {
              iVar6 = uVar11 * 8 + 0x10;
              piVar13 = piStack_cc + 6;
              do {
                pbStack_b4 = (byte *)*piVar13;
                piVar9 = (int *)(puVar1[8] + iVar6);
                *piVar9 = uVar12 + uVar11;
                uVar12 = uVar12 + 1;
                iVar6 = iVar6 + 8;
                piVar13 = piVar13 + 1;
                piVar9[1] = (int)pbStack_b4;
              } while (uVar12 < uStack_c8);
              puVar14 = puStack_c0;
              piVar13 = piStack_bc;
            }
          }
          puVar10 = FUN_00e52210((ushort *)puVar14);
          puVar14 = (uint *)puVar10[0xc];
          puStack_94 = auStack_80;
          puStack_90 = auStack_80;
          if (puVar14 != (uint *)0x0) {
            if ((byte)*puVar14 == 0) {
LAB_00d8454e:
              puStack_90 = puStack_94;
            }
            else {
              do {
                puVar14 = FUN_00d84180(&uStack_98,(byte *)puVar14);
                if ((uint)piVar13[2] <= uStack_98) {
                  if (uStack_98 == piVar13[2]) goto LAB_00d8455e;
                  goto LAB_00d8454e;
                }
              } while ((char)*puVar14 != '\0');
              puStack_90 = puStack_94;
            }
          }
LAB_00d8455e:
          if (((iStack_ac == *(int *)(iStack_a4 + 0x140)) && (*(int *)(iStack_a4 + 0x14c) != 0)) &&
             (uVar11 = FUN_00d84040((int)&uStack_98,*(int *)(*(int *)(iStack_a4 + 0x14c) + 8)),
             (char)uVar11 == '\0')) {
LAB_00d84727:
            if (puStack_94 == (undefined1 *)0x0) {
              return 0;
            }
            if (puStack_94 == auStack_80) {
              return 0;
            }
            Memory_FreeIfNonNull(puStack_94);
            return 0;
          }
          uVar11 = (int)puStack_90 - (int)puStack_94 >> 3;
          if (piVar13[3] != uVar11) {
switchD_00d84620_caseD_5:
            if (puStack_94 == (undefined1 *)0x0) {
              return 0;
            }
            if (puStack_94 == auStack_80) {
              return 0;
            }
            Memory_FreeIfNonNull(puStack_94);
            return 0;
          }
          if ((uVar11 != 0) && (param_3 == '\0')) {
            puVar14 = (uint *)FUN_00e75980();
            uVar7 = FUN_00ea33f0(p_Stack_b8,puVar14,uVar11);
            puVar1[9] = uVar7;
            piVar9 = (int *)(piVar13[8] + (uint)*(ushort *)((int)puVar10 + 0x3e));
            pbStack_b4 = (byte *)((uint)*(ushort *)(puVar10 + 0xd) + piVar13[8] +
                                 (uint)*(ushort *)((int)puVar10 + 0x3e));
            piVar13 = (int *)0x0;
            piStack_cc = (int *)((int)puStack_90 - (int)puStack_94 >> 3);
            uStack_c8 = 0;
            if (piStack_cc != (int *)0x0) {
              puStack_c0 = (uint *)&DAT_00000010;
              p_Var15 = p_Stack_b8;
              do {
                piVar17 = piVar9;
                switch(puStack_94[(int)piVar13 * 8]) {
                case 0:
                  puVar14 = (uint *)FUN_00e759e0();
                  break;
                case 1:
                  puVar14 = (uint *)FUN_00e75a10();
                  break;
                case 2:
                  puVar14 = (uint *)FUN_00e75a40();
                  break;
                case 3:
                  puVar10 = (undefined4 *)*piVar9;
                  goto LAB_00d846bd;
                case 4:
                  puVar14 = *(uint **)(puStack_94 + (int)piVar13 * 8 + 4);
                  iVar6 = RuntimeClass_GetEmbeddedTypeDescriptor((int)puVar14);
                  if ((*(char *)(iVar6 + 6) != '\x16') &&
                     (piStack_bc = (int *)*piVar9, (int)piStack_bc - (int)pbStack_b4 == uStack_c8))
                  {
                    iVar6 = FUN_00e6f890((int)puVar14,(uint *)0x0);
                    uStack_c8 = uStack_c8 + (iVar6 + 7U & 0xfffffff8);
                    puVar10 = RuntimeValue_Box(p_Stack_b8,puVar14,piStack_bc);
                    p_Var15 = p_Stack_b8;
                    goto LAB_00d846bd;
                  }
                  goto LAB_00d84727;
                default:
                  goto switchD_00d84620_caseD_5;
                case 6:
                  iStack_9c = *(int *)(*piVar9 + 8);
                  piVar17 = &iStack_9c;
                  puVar14 = DAT_01221ea8;
                }
                puVar10 = RuntimeValue_Box(p_Var15,puVar14,piVar17);
LAB_00d846bd:
                *(undefined4 **)((int)puStack_c0 + puVar1[9]) = puVar10;
                puStack_c0 = (uint *)((int)puStack_c0 + 4);
                piVar13 = (int *)((int)piVar13 + 1);
                piVar9 = piVar9 + 2;
              } while (piVar13 < piStack_cc);
            }
          }
          if ((puStack_94 != (undefined1 *)0x0) && (puStack_94 != auStack_80)) {
            Memory_FreeIfNonNull(puStack_94);
          }
          piStack_a8 = piStack_a8 + 1;
          iStack_b0 = iStack_b0 + 0x28;
          iStack_ac = iStack_ac + 1;
        } while (iStack_ac <= *(int *)(iStack_a4 + 0x140));
      }
      return 1;
    }
  }
  *param_4 = 0;
  param_4[1] = 0;
  param_4[2] = 0;
  param_4[3] = 0;
  param_4[4] = 0;
  return uVar4;
}


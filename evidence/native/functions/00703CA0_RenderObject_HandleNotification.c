/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Event0x063bd2a3 branch00704119 reads GUID lo/hi +8/+c and sortIndex+0x10, calls
   ApplyRugSortNotification. Full body also dispatches many other render-object events; event IDs
   are raw original constants, not recovered original enum names.
   
   Analyst PC1.67 original instruction review. Message048A2325 branch00703DD8..3E15 copies16-byte
   payload+10..1F, reads full GUID+8/+C and calls00702A80. Static dispatcher does not establish
   asynchronous transport timing.
   
   Analyst PC1.67 painting contract. Additionally reviewed ONLY Painting opcode05BFF1A9
   at70413A..70415C. Message GUID64+8, key16+10 and stage DWORD+20 are passed to 6FE520. The handler
   then returns AL1 regardless of that child Boolean. Four actual pushes establish the missing GUID
   high-word prototype correction. Prior unrelated annotations are retained; no complete-handler or
   command-drain/thread claim.
   
   Analyst PC1.67 VisualState producer contract. Preserved prior event/painting/rug annotations.
   Additionally reviewed ONLY raw opcode04D18170: CMP70402F, branch704092..7040A8 reads payload
   GUIDlow+8/GUIDhigh+C/stateUInt32+10, physically PUSH state,high,low then ECX manager CALL6FFCC0
   at7040A3. Sets AL1 UNCONDITIONALLY after child call; does not propagate child's false. Handler
   RET8 covers event and payload stack words. Complete5270-byte export retained; this bounded new
   case review does not claim complete-handler or scheduler/thread/readiness semantics.
   
   Analyst PC1.67 original contract. Material opcode0488D99C dispatch at703D84 reads GUID+8/+C,
   hash+10 and fullDWORDroute+14. Route nonzero calls7000C0, zero700020; both child results are
   ignored and dispatcher forcesAL1. Geometry opcode04D18170 remains independent and calls6FFCC0.
   Other notification behavior retained; child failure does not roll producer state back. */

uint __thiscall RenderObject_HandleNotification(void *this,uint param_1,int param_2)

{
  undefined4 *puVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  undefined2 uVar6;
  undefined4 uVar7;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined4 extraout_EAX;
  int *piVar8;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  undefined3 extraout_var_03;
  int *piVar9;
  void *pvVar10;
  int iVar11;
  float *pfVar12;
  undefined3 extraout_var_04;
  int iVar13;
  undefined2 *puVar14;
  undefined3 uVar15;
  undefined3 uVar16;
  float fVar17;
  int *piVar18;
  float10 fVar19;
  uint uVar20;
  int *local_204;
  float local_200;
  float fStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  float local_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  float local_1e0;
  float fStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  int *local_1c4;
  float local_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float local_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  int *local_19c;
  int *local_198;
  int *local_194;
  float local_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  float local_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float local_170;
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  undefined4 local_160;
  undefined4 local_15c;
  undefined4 local_158;
  undefined4 local_154;
  int *local_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float local_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  int local_a0 [4];
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  int *piStack_68;
  float fStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar15 = (undefined3)((uint)this >> 8);
  uVar16 = (undefined3)((uint)param_2 >> 8);
  if (param_1 < 0x3359dc3d) {
    if (param_1 == 0x3359dc3c) {
      uVar7 = FUN_00700420(this,*(uint *)(param_2 + 8),*(int *)(param_2 + 0xc));
      return CONCAT31((int3)((uint)uVar7 >> 8),1);
    }
    if (param_1 < 0x5b70c77) {
      if (param_1 == 0x5b70c76) {
        uVar7 = FUN_006feb40(this,*(uint *)(param_2 + 8),*(undefined4 **)(param_2 + 0xc),
                             param_2 + 0x10);
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      if (param_1 < 0x49cb816) {
        if (param_1 == 0x49cb815) {
          piVar8 = (int *)FUN_00700e60(this,*(undefined4 *)(param_2 + 8),
                                       *(undefined4 *)(param_2 + 0xc),&local_19c);
          if ((char)piVar8 != '\0') {
            if (*(int *)(param_2 + 0x18) != 0) {
              local_1f0 = *(float *)(param_2 + 0x10);
              fStack_1ec = *(float *)(param_2 + 0x14);
              fStack_1e4 = *(float *)(param_2 + 0x1c);
              fStack_1e8 = (float)*(int *)(param_2 + 0x18);
              FUN_006f46f0(local_19c,&local_1f0,0,*(byte *)((int)this + 0x10b9),0);
            }
            uVar7 = (**(code **)(*local_19c + 4))();
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          goto LAB_0070512b;
        }
        if (param_1 < 0x488d99d) {
          if (param_1 == 0x488d99c) {
                    /* Three stack words: hash,GUIDhigh,GUIDlow. Route chooses deferred or immediate
                       material handler; child AL ignored. */
            if (*(int *)(param_2 + 0x14) == 0) {
              SceneManager_SetMaterialHashByGuid
                        (this,*(ulonglong *)(param_2 + 8),*(uint *)(param_2 + 0x10));
              return CONCAT31(extraout_var_00,1);
            }
            SceneManager_SetDeferredMaterialHashByGuid
                      (this,*(ulonglong *)(param_2 + 8),*(uint *)(param_2 + 0x10));
            return CONCAT31(extraout_var,1);
          }
          if (param_1 < 0x428e0a9) {
            if (param_1 == 0x428e0a8) {
              uVar20 = 0;
            }
            else {
              if (param_1 == 0x3dfe432) {
                uVar7 = FUN_0093d4e0();
                return CONCAT31((int3)((uint)uVar7 >> 8),1);
              }
              if (param_1 != 0x428e0a3) goto LAB_007050ec;
              uVar20 = 1;
            }
            uVar20 = FUN_00701850(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),uVar20)
            ;
            return uVar20 & 0xffffff00;
          }
          if (param_1 == 0x4878bc4) {
            uVar7 = FUN_006ff930(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                 *(uint *)(param_2 + 0x10),*(undefined4 *)(param_2 + 0x14));
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
        }
        else {
          if (param_1 == 0x4891b02) {
            *(undefined4 *)((int)this + 0x10d8) = *(undefined4 *)(param_2 + 8);
            *(undefined4 *)((int)this + 0x10dc) = *(undefined4 *)(param_2 + 0xc);
            return CONCAT31(uVar16,1);
          }
          if (param_1 == 0x48a0f45) {
            local_180 = *(float *)(param_2 + 0x10);
            fStack_17c = *(float *)(param_2 + 0x14);
            fStack_178 = *(float *)(param_2 + 0x18);
            fStack_174 = *(float *)(param_2 + 0x1c);
            uVar7 = FUN_007023c0(this,*(float *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                 &local_180);
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          if (param_1 == 0x48a2325) {
            local_190 = *(float *)(param_2 + 0x10);
            fStack_18c = *(float *)(param_2 + 0x14);
            fStack_188 = *(float *)(param_2 + 0x18);
            fStack_184 = *(float *)(param_2 + 0x1c);
            Renderer_DecodeOpacityTransition
                      (this,*(uint *)(param_2 + 8),*(uint *)(param_2 + 0xc),(uint *)&local_190);
            return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
          }
        }
      }
      else if (param_1 < 0x4ae06e1) {
        if (param_1 == 0x4ae06e0) {
          uVar7 = FUN_006ffaa0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                               *(undefined4 *)(param_2 + 0x10));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 == 0x49cb828) {
          uVar7 = FUN_00700330(this,*(uint *)(param_2 + 8),*(uint *)(param_2 + 0xc));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 == 0x49cb899) {
          local_f0 = *(undefined4 *)(param_2 + 0x1c);
          uStack_ec = *(undefined4 *)(param_2 + 0x20);
          uStack_e8 = *(undefined4 *)(param_2 + 0x24);
          fStack_1e8 = *(float *)(param_2 + 0x18);
          fStack_1ec = *(float *)(param_2 + 0x14);
          local_1f0 = *(float *)(param_2 + 0x10);
          fStack_1e4 = local_1f0;
          uStack_e4 = local_f0;
          local_d0 = local_1f0;
          uStack_cc = fStack_1ec;
          uStack_c8 = fStack_1e8;
          fStack_c4 = local_1f0;
          uVar7 = FUN_007003a0(this,*(uint *)(param_2 + 8),*(undefined4 **)(param_2 + 0xc),&local_d0
                              );
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        param_1 = param_1 + 0xfb5b3017;
        if (param_1 == 0) {
          uVar7 = FUN_006ff9b0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                               CONCAT31(uVar15,*(int *)(param_2 + 0x10) != 0));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
      }
      else {
        if (param_1 == 0x4d18170) {
                    /* Physical stack: fullGUIDlow/high then geometryStateUInt32. Child ALbool
                       discarded; handler next forces AL1. */
          RenderObject_StoreSceneModelGeometryState
                    (this,*(ulonglong *)(param_2 + 8),*(uint *)(param_2 + 0x10));
          return CONCAT31(extraout_var_01,1);
        }
        if (param_1 == 0x57f931a) {
          uVar7 = RenderMessage_ApplySurfaceCutout
                            (this,*(uint *)(param_2 + 0x10),*(int **)(param_2 + 0x14),
                             (undefined4 *)(param_2 + 0x18));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 == 0x5b70c75) {
          uVar7 = FUN_006fe9e0(this,*(uint *)(param_2 + 8),*(uint *)(param_2 + 0xc),
                               *(undefined4 *)(param_2 + 0x10));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
      }
LAB_007050ec:
      return param_1 & 0xffffff00;
    }
    if (param_1 < 0xd8a7ecd) {
      if (param_1 == 0xd8a7ecc) {
        uVar20 = *(uint *)(param_2 + 0x18) | *(uint *)(param_2 + 0x1c);
        uVar16 = (undefined3)(uVar20 >> 8);
        if (uVar20 == 0) {
          uVar16 = 0;
        }
        uVar7 = FUN_006ffda0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                             CONCAT31(uVar16,*(int *)(param_2 + 0x10) != 0),
                             (char)*(undefined4 *)(param_2 + 0x14));
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      if (param_1 < 0x976baf3) {
        if (param_1 == 0x976baf2) {
          uVar7 = FUN_007004a0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 < 0x7a02861) {
          if (param_1 == 0x7a02860) {
            uVar7 = FUN_006ffc60(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                 *(uint *)(param_2 + 0x10) & 0xffffff01,
                                 *(uint *)(param_2 + 0x10) >> 1 & 0xffffff01);
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          if (param_1 == 0x5bff1a9) {
                    /* Paintingopcode05BFF1A9:
                       pushstageDWORD[message20],keyptrmessage10,GUIDhigh[messageC],GUIDlow[message8].
                       Calls6FE520 RET16; THEN AL1 regardlesschildresult. */
            RenderObject_AttachPaintingFixup
                      (this,*(ulonglong *)(param_2 + 8),(byte *)(param_2 + 0x10),
                       *(uint *)(param_2 + 0x20));
            return CONCAT31(extraout_var_03,1);
          }
          if (param_1 == 0x63bd2a3) {
            RenderObject_ApplyRugSortNotification
                      (this,*(uint *)(param_2 + 8),*(uint *)(param_2 + 0xc),
                       *(uint *)(param_2 + 0x10));
            return CONCAT31(extraout_var_02,1);
          }
        }
        else if (param_1 == 0x95448e2) {
          uVar7 = FUN_006fef00(this,*(int **)(param_2 + 8),*(int **)(param_2 + 0xc),
                               (int *)(uint)*(ushort *)(param_2 + 0x10),
                               (undefined4 *)(uint)(*(char *)(param_2 + 0x13) != '\0'),
                               param_2 + 0x14);
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
      }
      else {
        if (param_1 == 0x99b63b3) {
          uVar7 = FUN_00701dd0(this,*(undefined4 *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                               *(undefined4 *)(param_2 + 0x10),*(undefined4 *)(param_2 + 0x14),
                               *(undefined4 *)(param_2 + 0x18),*(undefined4 *)(param_2 + 0x1c),
                               *(undefined4 *)(param_2 + 0x20),*(float *)(param_2 + 0x24),
                               *(float *)(param_2 + 0x28),*(float *)(param_2 + 0x2c),
                               *(float *)(param_2 + 0x30));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 == 0xa6ebd0a) {
          uVar7 = FUN_006ff5e0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 == 0xb581957) {
          uVar7 = FUN_006ffb80(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
      }
      goto LAB_007050ec;
    }
    if (param_1 < 0x1c8880a4) {
      if (param_1 == 0x1c8880a3) {
        uVar7 = FUN_006ffd30(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                             CONCAT31(uVar15,*(int *)(param_2 + 0x10) != 0));
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      if (param_1 == 0xdccd255) {
        uVar7 = FUN_006ff6d0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc));
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      if (param_1 == 0xe092878) {
        piVar9 = (int *)FUN_006fe120((int)this);
        piVar8 = (int *)0x0;
        if (piVar9 != (int *)0x0) {
          iVar11 = FUN_00571970(piVar9);
          piVar8 = (int *)0x0;
          if (iVar11 != 0) {
            uVar16 = (undefined3)((uint)iVar11 >> 8);
            if (*(int *)(param_2 + 0x10) == 1) {
              *(byte *)(iVar11 + 0x29d) = *(byte *)(iVar11 + 0x29d) | 1;
              return CONCAT31(uVar16,1);
            }
            *(byte *)(iVar11 + 0x29d) = *(byte *)(iVar11 + 0x29d) & 0xfe;
            return CONCAT31(uVar16,1);
          }
        }
      }
      else {
        if (param_1 != 0xe5087ed) goto LAB_007050ec;
        piVar9 = (int *)FUN_006fe120((int)this);
        piVar8 = (int *)0x0;
        if (piVar9 != (int *)0x0) {
          pvVar10 = (void *)FUN_00571970(piVar9);
          piVar8 = (int *)0x0;
          if (pvVar10 != (void *)0x0) {
            if (*(int *)(param_2 + 0x10) == 0) {
              uVar7 = FUN_006f4e50(pvVar10,0);
              return CONCAT31((int3)((uint)uVar7 >> 8),1);
            }
            uVar7 = FUN_006f4e50(pvVar10,1);
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
        }
      }
      goto LAB_0070512b;
    }
    if (param_1 == 0x2be20162) {
      uVar7 = FUN_006fff50(this,*(uint *)(param_2 + 8),*(int **)(param_2 + 0xc));
      return CONCAT31((int3)((uint)uVar7 >> 8),1);
    }
    if (param_1 != 0x2f704cab) {
      if (param_1 == 0x3227a26e) {
        uVar7 = FUN_006fedc0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc));
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      goto LAB_007050ec;
    }
    piVar8 = (int *)FUN_00700d40(this,*(undefined4 *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                 &local_194);
    if ((char)piVar8 == '\0') goto LAB_0070512b;
    piVar8 = local_194;
    if (*(int *)(param_2 + 0x18) == 0) goto LAB_007044a6;
    local_200 = *(float *)(param_2 + 0x10);
    fStack_1fc = *(float *)(param_2 + 0x14);
    fStack_1f4 = *(float *)(param_2 + 0x1c);
    pfVar12 = &local_200;
    fStack_1f8 = (float)*(int *)(param_2 + 0x18);
  }
  else {
    if (param_1 < 0x76211121) {
      if (param_1 == 0x76211120) {
        piVar9 = (int *)FUN_006fe120((int)this);
        piVar8 = (int *)0x0;
        if (piVar9 != (int *)0x0) {
          iVar11 = (**(code **)(*piVar9 + 0xc))(0x17f1d88);
          piVar8 = (int *)0x0;
          if (iVar11 != 0) {
            FUN_006dccf0((void *)(iVar11 + 0x210),*(char *)(param_2 + 0x10));
            iVar13 = FUN_006faa90(iVar11);
            piVar8 = (int *)0x0;
            if (iVar13 != 0) {
              uVar7 = FUN_006e7410(*(void **)(iVar13 + 0xc),*(uint *)(iVar11 + 0x34));
              return CONCAT31((int3)((uint)uVar7 >> 8),1);
            }
          }
        }
      }
      else if (param_1 < 0x5e7ca289) {
        if (param_1 == 0x5e7ca288) {
          uVar20 = (uint)local_204 >> 8;
          local_204 = (int *)((uint)local_204 & 0xffffff00);
          if (*(int *)(param_2 + 0x18) != 0 || *(int *)(param_2 + 0x1c) != 0) {
            local_204 = (int *)CONCAT31((int3)uVar20,1);
          }
          uVar7 = FUN_007018f0(this,*(float *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                               *(float *)(param_2 + 0x10),*(float *)(param_2 + 0x14),(char)local_204
                              );
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 < 0x5358a029) {
          if (param_1 == 0x5358a028) {
            uVar7 = FUN_006fe180(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                 param_2 + 0x10);
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          if (param_1 == 0x3406565f) {
            uVar7 = SceneAnimation_SetRetainedPoseInput
                              (*(undefined4 *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                               param_2 + 0x18,*(int **)(param_2 + 0x10));
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          if (param_1 != 0x46fa1eea) {
            if (param_1 == 0x535064e7) {
              uVar20 = FUN_006ffec0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                    *(undefined4 **)(param_2 + 0x10),*(int **)(param_2 + 0x14),
                                    (int *)0x0);
              return CONCAT31((int3)(uVar20 >> 8),1);
            }
            goto LAB_007050ec;
          }
          piVar8 = (int *)FUN_006fe120((int)this);
          iVar11 = FUN_00571970(piVar8);
          piVar8 = (int *)0x0;
          if (iVar11 != 0) {
            uVar7 = FUN_00ad2d20((void *)(iVar11 + 0x210),*(int **)(param_2 + 0x10));
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
        }
        else {
          if (param_1 == 0x542246a3) {
            uVar7 = FUN_006fe1e0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                 param_2 + 0x10);
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          if (param_1 == 0x56b00c87) {
            uVar7 = FUN_006ffbf0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                 *(int *)(param_2 + 0x10) != 0);
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          if (param_1 != 0x59ef8b87) goto LAB_007050ec;
          pvVar10 = LoadPump_ReadFrameServiceGlobal();
          piVar8 = (int *)0x0;
          if (pvVar10 != (void *)0x0) {
            uVar20 = FUN_006e8290((int)pvVar10);
            uVar7 = FUN_006e82a0(pvVar10,uVar20 & ~*(uint *)(param_2 + 0x10) ^
                                         *(uint *)(param_2 + 0x14));
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
        }
      }
      else {
        if (0x732f79fd < param_1) {
          if (param_1 == 0x73477a1c) {
            local_160 = *(undefined4 *)(param_2 + 0x10);
            local_15c = *(undefined4 *)(param_2 + 0x14);
            local_158 = *(undefined4 *)(param_2 + 0x18);
            local_154 = *(undefined4 *)(param_2 + 0x1c);
            FUN_006ffe40(this,*(uint *)(param_2 + 8),*(undefined4 **)(param_2 + 0xc));
            return CONCAT31(extraout_var_04,1);
          }
          if (param_1 == 0x7357350d) {
            uVar20 = FUN_00700ef0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                  param_2 + 0x18);
            return CONCAT31((int3)(uVar20 >> 8),1);
          }
          goto LAB_007050ec;
        }
        if (param_1 == 0x732f79fd) {
          uVar20 = FUN_00703420(this,*(int **)(param_2 + 8),*(undefined4 *)(param_2 + 0xc));
          return CONCAT31((int3)(uVar20 >> 8),1);
        }
        if (param_1 == 0x60b3d82e) {
          piVar9 = (int *)FUN_006fe120((int)this);
          piVar8 = (int *)0x0;
          if (piVar9 != (int *)0x0) {
            pvVar10 = (void *)FUN_00571970(piVar9);
            piVar8 = (int *)0x0;
            if (pvVar10 != (void *)0x0) {
              if (*(int *)(param_2 + 0x10) == 0) {
                uVar7 = FUN_006f4e30(pvVar10,'\0');
                return CONCAT31((int3)((uint)uVar7 >> 8),1);
              }
              uVar7 = FUN_006f4e30(pvVar10,'\x01');
              return CONCAT31((int3)((uint)uVar7 >> 8),1);
            }
          }
        }
        else {
          if (param_1 != 0x6a4479f1) {
            if (param_1 == 0x70f3be97) {
              uVar7 = FUN_006fe240(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                   (undefined4 *)(param_2 + 0x10));
              return CONCAT31((int3)((uint)uVar7 >> 8),1);
            }
            goto LAB_007050ec;
          }
          local_204 = (int *)0x0;
          piVar8 = FUN_0074efa0((int *)&local_204);
          piVar8 = (int *)FUN_005e59d0(piVar8);
          if ((char)piVar8 != '\0') {
            if (*(int *)(param_2 + 0x10) == 0) {
              piVar8 = (int *)0x0;
            }
            else {
              piVar8 = (int *)(*(int *)(param_2 + 0x10) + 0x28);
            }
            piVar8 = (int *)FUN_006ffec0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                         local_204,piVar8,*(int **)(param_2 + 0x14));
          }
          if (local_204 != (int *)0x0) {
            uVar7 = (**(code **)(*local_204 + 4))();
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
        }
      }
LAB_0070512b:
      return CONCAT31((int3)((uint)piVar8 >> 8),1);
    }
    if (0xc415b92d < param_1) {
      if (param_1 < 0xf33e398c) {
        if (param_1 == 0xf33e398b) {
          uVar7 = FUN_00702710(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                               *(void **)(param_2 + 0x10),*(uint *)(param_2 + 0x18),
                               *(int *)(param_2 + 0x1c),0xffffffff);
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 < 0xe92ebe60) {
          if (param_1 == 0xe92ebe5f) {
            piVar8 = (int *)FUN_00700dd0(this,*(undefined4 *)(param_2 + 8),
                                         *(undefined4 *)(param_2 + 0xc),&local_1c4);
            if ((char)piVar8 != '\0') {
              fStack_1a8 = *(float *)(param_2 + 0x18);
              if (fStack_1a8 == 0.0) {
                uVar7 = (**(code **)(*local_1c4 + 4))();
                return CONCAT31((int3)((uint)uVar7 >> 8),1);
              }
              local_1b0 = *(float *)(param_2 + 0x10);
              fStack_1ac = *(float *)(param_2 + 0x14);
              fStack_1a4 = *(float *)(param_2 + 0x1c);
              FUN_005ed9e0((void *)((int)this + 0x1148),&local_140,(uint *)&local_1b0);
              if (local_140 ==
                  *(float *)(*(int *)((int)this + 0x114c) + *(int *)((int)this + 0x1150) * 4)) {
                uVar6 = *(undefined2 *)((int)this + 0x1168);
                *(int *)((int)this + 0x1168) = *(int *)((int)this + 0x1168) + 1;
                puVar14 = (undefined2 *)
                          FUN_00701b60((void *)((int)this + 0x1148),(uint *)&local_1b0);
                *puVar14 = uVar6;
                FUN_006fa130(local_1c4,&local_1b0,uVar6);
                uVar7 = (**(code **)(*local_1c4 + 4))();
                return CONCAT31((int3)((uint)uVar7 >> 8),1);
              }
              FUN_006fa130(local_1c4,&local_1b0,*(undefined2 *)((int)local_140 + 0x10));
              uVar7 = (**(code **)(*local_1c4 + 4))();
              return CONCAT31((int3)((uint)uVar7 >> 8),1);
            }
          }
          else {
            if (param_1 == 0xcb3bb2c9) {
              uVar7 = FUN_006feca0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc));
              return CONCAT31((int3)((uint)uVar7 >> 8),1);
            }
            if (param_1 != 0xdb32b443) goto LAB_007050ec;
            iVar11 = FUN_006fe120((int)this);
            piVar8 = (int *)0x0;
            if (iVar11 != 0) {
              uVar7 = SceneObject_QueueDirtyOnce(iVar11);
              return CONCAT31((int3)((uint)uVar7 >> 8),1);
            }
          }
        }
        else {
          if (param_1 != 0xecff5d63) goto LAB_007050ec;
          piVar9 = (int *)FUN_006fe120((int)this);
          piVar8 = (int *)0x0;
          if (piVar9 != (int *)0x0) {
            iVar11 = FUN_00571970(piVar9);
            piVar8 = (int *)0x0;
            if (iVar11 != 0) {
              uVar16 = (undefined3)((uint)iVar11 >> 8);
              if (*(int *)(param_2 + 0x10) == 0) {
                *(byte *)(iVar11 + 0x29e) = *(byte *)(iVar11 + 0x29e) | 4;
                return CONCAT31(uVar16,1);
              }
              *(byte *)(iVar11 + 0x29e) = *(byte *)(iVar11 + 0x29e) & 0xfb;
              return CONCAT31(uVar16,1);
            }
          }
        }
      }
      else {
        if (param_1 != 0xf34b709c) {
          if (param_1 == 0xfa442e78) {
            uVar7 = FUN_0093d420();
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          if (param_1 == 0xfc6aa1fe) {
            param_1 = FUN_006fd9b0((int)this);
          }
          goto LAB_007050ec;
        }
        piVar8 = (int *)FUN_00700170(this,*(uint *)(param_2 + 8),*(undefined4 **)(param_2 + 0xc));
      }
      goto LAB_0070512b;
    }
    if (param_1 == 0xc415b92d) {
      piVar8 = (int *)FUN_0059ff40((void *)((int)this + 4),(int *)&local_150);
      piVar9 = *(int **)((int)this + 0x1028);
      if (local_150 != piVar9) {
        fVar17 = fStack_14c;
        piVar18 = local_150;
        do {
          if (((piVar18 != (int *)0x0) && (piVar18 + -2 != (int *)0x0)) &&
             (piVar8 = (int *)(**(code **)(piVar18[-2] + 0xc))(0x17f1d88), piVar8 != (int *)0x0)) {
            piVar8 = (int *)(**(code **)(*piVar8 + 0x90))();
          }
          piVar18 = (int *)*piVar18;
          while (piVar18 == (int *)0x0) {
            puVar1 = (undefined4 *)((int)fVar17 + 4);
            fVar17 = (float)((int)fVar17 + 4);
            piVar18 = (int *)*puVar1;
          }
        } while (piVar18 != piVar9);
        return CONCAT31((int3)((uint)piVar8 >> 8),1);
      }
      goto LAB_0070512b;
    }
    if (param_1 < 0x934cb2aa) {
      if (param_1 == 0x934cb2a9) {
        uVar7 = FUN_007001e0(this,*(uint *)(param_2 + 8),*(undefined4 **)(param_2 + 0xc),
                             *(undefined4 **)(param_2 + 0x10));
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      if (param_1 < 0x85bbe376) {
        if (param_1 == 0x85bbe375) {
          uVar20 = FUN_006ffec0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                *(undefined4 **)(param_2 + 0x10),*(int **)(param_2 + 0x14),
                                *(int **)(param_2 + 0x18));
          return CONCAT31((int3)(uVar20 >> 8),1);
        }
        if (param_1 == 0x7727ad2e) {
          uVar7 = FUN_0093d480();
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        if (param_1 == 0x827917ca) {
          uVar7 = FUN_006ffa20(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
      }
      else if (param_1 == 0x9286833a) {
        *(undefined4 *)((int)this + 0x10e8) = *(undefined4 *)(param_2 + 8);
        *(undefined4 *)((int)this + 0x10ec) = *(undefined4 *)(param_2 + 0xc);
        return CONCAT31(uVar16,1);
      }
      goto LAB_007050ec;
    }
    if (0xb3436c13 < param_1) {
      if (param_1 == 0xba89b123) {
        iVar11 = *(int *)(param_2 + 0xc);
        pvVar10 = LoadPump_ReadFrameServiceGlobal();
        uVar7 = FUN_006e8770(pvVar10,iVar11);
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      goto LAB_007050ec;
    }
    if (param_1 != 0xb3436c13) {
      if (param_1 == 0x9375c04f) {
        iVar11 = *(int *)(param_2 + 0x10);
        FUN_006fab90(local_a0);
        local_a0[0] = *(int *)(iVar11 + 0x10);
        fVar19 = (float10)fsin((float10)*(float *)(iVar11 + 0x30));
        fVar17 = (float)fVar19;
        fVar19 = (float10)fcos((float10)*(float *)(iVar11 + 0x30));
        fVar2 = (float)fVar19;
        fVar19 = (float10)fsin((float10)*(float *)(iVar11 + 0x34));
        fVar3 = (float)fVar19;
        fVar19 = (float10)fcos((float10)*(float *)(iVar11 + 0x34));
        fStack_1b4 = (float)fVar19;
        fVar19 = (float10)fsin((float10)*(float *)(iVar11 + 0x38));
        fVar4 = (float)fVar19;
        fVar19 = (float10)fcos((float10)*(float *)(iVar11 + 0x38));
        fVar5 = (float)fVar19;
        local_110 = FLOAT_00f998f8;
        fStack_10c = FLOAT_00f998f8;
        fStack_108 = FLOAT_00f998f8;
        fStack_104 = FLOAT_00f998f8;
        local_150 = (int *)(fStack_1b4 * fVar2);
        fStack_14c = fStack_1b4 * fVar2;
        fStack_148 = fStack_1b4 * fVar2;
        fStack_144 = fStack_1b4 * fVar2;
        local_120 = fVar4 * fVar2 * fVar3 - fVar5 * fVar17;
        fStack_11c = fVar4 * fVar2 * fVar3 - fVar5 * fVar17;
        fStack_118 = fVar4 * fVar2 * fVar3 - fVar5 * fVar17;
        fStack_114 = fVar4 * fVar2 * fVar3 - fVar5 * fVar17;
        local_b0 = fVar5 * fVar2 * fVar3 + fVar4 * fVar17;
        fStack_ac = fVar5 * fVar2 * fVar3 + fVar4 * fVar17;
        fStack_a8 = fVar5 * fVar2 * fVar3 + fVar4 * fVar17;
        fStack_a4 = fVar5 * fVar2 * fVar3 + fVar4 * fVar17;
        local_100 = DAT_010f4ccc;
        fStack_fc = DAT_010f4ccc;
        fStack_f8 = DAT_010f4ccc;
        fStack_f4 = DAT_010f4ccc;
        local_e0 = DAT_010f4ccc;
        fStack_dc = DAT_010f4ccc;
        fStack_d8 = DAT_010f4ccc;
        fStack_d4 = DAT_010f4ccc;
        local_c0 = DAT_010f4ccc;
        fStack_bc = DAT_010f4ccc;
        fStack_b8 = DAT_010f4ccc;
        fStack_b4 = DAT_010f4ccc;
        local_140 = DAT_010f4ccc;
        fStack_13c = DAT_010f4ccc;
        fStack_138 = DAT_010f4ccc;
        fStack_134 = DAT_010f4ccc;
        local_1f0 = DAT_010f4ccc;
        fStack_1ec = DAT_010f4ccc;
        fStack_1e8 = DAT_010f4ccc;
        fStack_1e4 = DAT_010f4ccc;
        local_180 = fStack_1b4 * fVar17;
        fStack_17c = fStack_1b4 * fVar17;
        fStack_178 = fStack_1b4 * fVar17;
        fStack_174 = fStack_1b4 * fVar17;
        local_130 = DAT_010f4ccc;
        fStack_12c = DAT_010f4ccc;
        fStack_128 = DAT_010f4ccc;
        fStack_124 = DAT_010f4ccc;
        local_170 = 0.0 - fVar3;
        fStack_16c = 0.0 - fVar3;
        fStack_168 = 0.0 - fVar3;
        fStack_164 = 0.0 - fVar3;
        local_1e0 = fVar4 * fStack_1b4;
        fStack_1dc = fVar4 * fStack_1b4;
        fStack_1d8 = fVar4 * fStack_1b4;
        fStack_1d4 = fVar4 * fStack_1b4;
        local_1c0 = fVar5 * fStack_1b4;
        fStack_1bc = fVar5 * fStack_1b4;
        fStack_1b8 = fVar5 * fStack_1b4;
        fStack_1b4 = fVar5 * fStack_1b4;
        local_1b0 = fVar5 * fVar17 * fVar3 - fVar4 * fVar2;
        fStack_1ac = fVar5 * fVar17 * fVar3 - fVar4 * fVar2;
        fStack_1a8 = fVar5 * fVar17 * fVar3 - fVar4 * fVar2;
        fStack_1a4 = fVar5 * fVar17 * fVar3 - fVar4 * fVar2;
        local_190 = fVar4 * fVar17 * fVar3 + fVar5 * fVar2;
        fStack_18c = fVar4 * fVar17 * fVar3 + fVar5 * fVar2;
        fStack_188 = fVar4 * fVar17 * fVar3 + fVar5 * fVar2;
        fStack_184 = fVar4 * fVar17 * fVar3 + fVar5 * fVar2;
        fStack_1f4 = FLOAT_00f998f8;
        fStack_1f8 = DAT_010f4ccc;
        fStack_1fc = DAT_010f4ccc;
        local_200 = DAT_010f4ccc;
        fStack_84 = DAT_010f4ccc;
        fStack_74 = DAT_010f4ccc;
        fStack_64 = DAT_010f4ccc;
        local_60 = *(undefined4 *)(iVar11 + 0x20);
        uStack_5c = *(undefined4 *)(iVar11 + 0x24);
        uStack_58 = *(undefined4 *)(iVar11 + 0x28);
        uStack_54 = *(undefined4 *)(iVar11 + 0x2c);
        if (local_a0[0] == 4) {
          local_50 = *(undefined4 *)(iVar11 + 0x40);
          uStack_4c = *(undefined4 *)(iVar11 + 0x44);
          uStack_48 = *(undefined4 *)(iVar11 + 0x48);
          uStack_44 = *(undefined4 *)(iVar11 + 0x4c);
          local_40 = *(undefined4 *)(iVar11 + 0x50);
          uStack_3c = *(undefined4 *)(iVar11 + 0x54);
          uStack_38 = *(undefined4 *)(iVar11 + 0x58);
          uStack_34 = *(undefined4 *)(iVar11 + 0x5c);
          local_30 = *(undefined4 *)(iVar11 + 0x60);
          uStack_2c = *(undefined4 *)(iVar11 + 100);
          uStack_28 = *(undefined4 *)(iVar11 + 0x68);
          uStack_24 = *(undefined4 *)(iVar11 + 0x6c);
          local_20 = *(undefined4 *)(iVar11 + 0x70);
          uStack_1c = *(undefined4 *)(iVar11 + 0x74);
          uStack_18 = *(undefined4 *)(iVar11 + 0x78);
          uStack_14 = *(undefined4 *)(iVar11 + 0x7c);
        }
        else {
          local_50 = *(undefined4 *)(iVar11 + 0x14);
        }
        local_90 = local_1c0;
        fStack_8c = local_1e0;
        fStack_88 = local_170;
        local_80 = local_1b0;
        fStack_7c = local_190;
        fStack_78 = local_180;
        local_70 = local_b0;
        fStack_6c = local_120;
        piStack_68 = local_150;
        uVar7 = FUN_006fe2a0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                             *(uint *)(iVar11 + 8),*(undefined4 *)(iVar11 + 0xc),local_a0);
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      if (param_1 != 0x950ba4a7) goto LAB_007050ec;
      piVar8 = (int *)0x950ba4a7;
      if ((*(byte *)(param_2 + 0x10) & 0x3c) != 0) {
        piVar8 = (int *)FUN_00702a10(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                     *(int *)(param_2 + 0x20),*(undefined4 *)(param_2 + 0x24),
                                     *(undefined4 *)(param_2 + 0x28),*(undefined4 *)(param_2 + 0x2c)
                                     ,(uint)*(byte *)(param_2 + 0x30));
      }
      if ((*(byte *)(param_2 + 0x10) & 3) != 0) {
        uVar7 = FUN_006ff8b0(this,*(uint *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                             *(float *)(param_2 + 0x14),*(float *)(param_2 + 0x18),
                             *(float *)(param_2 + 0x1c));
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      goto LAB_0070512b;
    }
    piVar8 = (int *)FUN_00700cb0(this,*(undefined4 *)(param_2 + 8),*(undefined4 *)(param_2 + 0xc),
                                 &local_198);
    if ((char)piVar8 == '\0') goto LAB_0070512b;
    piVar8 = local_198;
    if (*(int *)(param_2 + 0x18) == 0) goto LAB_007044a6;
    local_1c0 = *(float *)(param_2 + 0x10);
    fStack_1bc = *(float *)(param_2 + 0x14);
    fStack_1b4 = *(float *)(param_2 + 0x1c);
    pfVar12 = &local_1c0;
    fStack_1b8 = (float)*(int *)(param_2 + 0x18);
  }
  FUN_006f46f0(piVar8,pfVar12,0,*(byte *)((int)this + 0x10b9),(byte)*(undefined4 *)(param_2 + 0x20))
  ;
LAB_007044a6:
  uVar7 = (**(code **)(*piVar8 + 4))();
  return CONCAT31((int3)((uint)uVar7 >> 8),1);
}


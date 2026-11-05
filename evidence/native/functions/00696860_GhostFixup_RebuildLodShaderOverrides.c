/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract (name assigned from behavior): GhostFixup
   vtable00FF3C30+10, this in ECX, four physical DWORD stack arguments, RET10. Only AL is the
   boolean result; CONCAT31/upper EAX in the decompiler are artifacts, not an extra return payload.
   Complete owned body00696860..00696C20 (961bytes); alignment00696C21..2F excluded. No original
   bytes changed.
   When normalized style[this+8] is zero, transfer cached original LOD[this+C] to output and clear
   that cache, or return supplied LOD and invoke its virtual+0 when absent. Nonzero style builds
   seven parameter overrides and15 shader substitutions; source byte+72 chooses virtual+0 plus apply
   in place or clone. Clone failure invokes virtual+4 on a partial result, clears temporary
   substitution state and returns AL=0. On successful clone source is passed to helper008C8D00 with
   address[this+C]; helper ownership internals remain unexpanded. Final output receives result,
   virtual+0 is invoked, then local result virtual+4. These virtual slots are inferred
   retain/release, not recovered interface declarations. Container layout and source flag meaning
   remain inferred; do not invent gameplay policy.
   Original shader map:1C608236,548394B9,53881019,9EFF872B,01772897,5A81F684 ->
   EFCD14BE;CF8A70B4,5EDA9CDE,B51EC997 ->8C88B4A8;84FD7152,9D9DA161,FCF80CE1,A7B368FB
   ->00C394A6;A78F71C4 ->E73CDE21;05F75EF1 ->BBD4CD0D. Other shader keys are not inserted. Parameter
   builder00696560 and initializer00694FD0 are separate contracts; complete table values/shader
   arithmetic are not established by this function. */

undefined4 __thiscall
GhostFixup_RebuildLodShaderOverrides
          (void *this,int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  uint uVar3;
  undefined4 extraout_EAX;
  uint uStack_154;
  int *piStack_150;
  undefined4 *local_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  undefined1 uStack_13c;
  undefined1 auStack_138 [4];
  void *pvStack_134;
  uint uStack_130;
  undefined4 uStack_12c;
  undefined4 auStack_118 [4];
  undefined4 local_108;
  undefined4 local_104;
  undefined4 local_100;
  undefined4 local_fc;
  undefined4 local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  if (*(int *)((int)this + 8) != 0) {
    local_108 = 0;
    local_104 = 0;
    local_100 = 0;
    local_fc = 0;
    local_e0 = 0;
    local_dc = 0;
    local_d8 = 0;
    local_d4 = 0;
    local_b8 = 0;
    local_b4 = 0;
    local_b0 = 0;
    local_ac = 0;
    local_90 = 0;
    local_8c = 0;
    local_88 = 0;
    local_84 = 0;
    local_68 = 0;
    local_64 = 0;
    local_60 = 0;
    local_5c = 0;
    local_40 = 0;
    local_3c = 0;
    local_38 = 0;
    local_34 = 0;
    uStack_18 = 0;
    uStack_14 = 0;
    uStack_10 = 0;
    uStack_c = 0;
    FUN_006db0a0(&local_14c);
    local_14c = auStack_118;
    uStack_144 = param_3;
    uStack_148 = 7;
    uStack_13c = 1;
    uStack_154 = 0x1c608236;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xefcd14be;
    uStack_154 = 0x548394b9;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xefcd14be;
    uStack_154 = 0x53881019;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xefcd14be;
    uStack_154 = 0xcf8a70b4;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0x8c88b4a8;
    uStack_154 = 0x5eda9cde;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0x8c88b4a8;
    uStack_154 = 0x84fd7152;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xc394a6;
    uStack_154 = 0x9d9da161;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xc394a6;
    uStack_154 = 0x9eff872b;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xefcd14be;
    uStack_154 = 0xa78f71c4;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xe73cde21;
    uStack_154 = 0x5f75ef1;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xbbd4cd0d;
    uStack_154 = 0xb51ec997;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0x8c88b4a8;
    uStack_154 = 0xfcf80ce1;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xc394a6;
    uStack_154 = 0xa7b368fb;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xc394a6;
    uStack_154 = 0x1772897;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xefcd14be;
    uStack_154 = 0x5a81f684;
    puVar2 = (undefined4 *)FUN_00654810(auStack_138,&uStack_154);
    *puVar2 = 0xefcd14be;
    FUN_00696560(this,auStack_118);
    piStack_150 = (int *)0x0;
    if (*(char *)((int)param_1 + 0x72) == '\0') {
      uVar1 = ModelLOD_CloneWithMaterialSubstitutions
                        (param_1,&piStack_150,(int *)&local_14c,param_4);
      if ((char)uVar1 == '\0') {
        if (piStack_150 != (int *)0x0) {
          (**(code **)(*piStack_150 + 4))();
        }
        uVar3 = FUN_00687830((int)&local_14c);
        return uVar3 & 0xffffff00;
      }
      FUN_008c8d00((void *)((int)this + 0xc),param_1);
    }
    else {
      (**(code **)*param_1)();
      piStack_150 = param_1;
      ModelLOD_ApplyMaterialSubstitutions(param_1,(int)param_1,(int *)&local_14c,param_4);
    }
    *param_2 = piStack_150;
    (**(code **)*piStack_150)();
    if (piStack_150 != (int *)0x0) {
      (**(code **)(*piStack_150 + 4))();
    }
    uVar1 = FUN_0073ebe0((int)pvStack_134,uStack_130);
    uStack_12c = 0;
    if (1 < uStack_130) {
      Memory_FreeIfNonNull(pvStack_134);
      uVar1 = extraout_EAX;
    }
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  if (*(int *)((int)this + 0xc) != 0) {
    uVar1 = *(undefined4 *)((int)this + 0xc);
    *(undefined4 *)((int)this + 0xc) = 0;
    *param_2 = uVar1;
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  *param_2 = param_1;
  uVar1 = (**(code **)*param_1)();
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}


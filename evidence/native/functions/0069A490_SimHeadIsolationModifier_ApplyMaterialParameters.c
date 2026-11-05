/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Static PC1.67: ECX modifier plus four stack arguments, RET16. Meaningful status is AL only:
   success MOV AL1, failed clone XOR AL0; upper EAX is cleanup residue, stored undefined4 return is
   preserved. Builds original material parameter hashes FadeYThreshold=0x937F9649 always and
   FadeZThreshold=0x1960A61C when speciesCF00 (zero->100) is not100;69A1C0 provides x87 Y and Zout,
   initialized+0 before call. Always appends PieMenuHeadRadius=0xCD4836B4 from global01159A0C
   multiplied by exact F32bits3E800000 (.25), independent of camera zoom. LOD first stack argument
   byte+72 selects retained in-place006DB170 material substitution or006DB3D0
   clone-with-substitutions, whose AL is checked. Publishes successful result through second stack
   output, retains output and releases local before scratch cleanup. No shader-space cutoff or
   vertex/index deletion is established by this body; shader hardclip/hairfade interpretation
   belongs to separate original shader comparison. */

undefined4 __thiscall
SimHeadIsolationModifier_ApplyMaterialParameters
          (void *this,int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4)

{
  char cVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 extraout_EAX;
  uint extraout_EAX_00;
  int iVar4;
  float10 fVar5;
  int *local_bc;
  undefined4 local_b8;
  float local_b4;
  float local_b0;
  uint *local_ac;
  int local_a8;
  undefined4 local_a4;
  undefined1 local_9c;
  void *local_94;
  uint local_90;
  undefined4 uStack_8c;
  uint local_78 [4];
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  float *local_58 [2];
  uint local_50 [8];
  float *local_30 [12];
  
  if ((_DAT_011d118c & 1) == 0) {
    _DAT_011d118c = _DAT_011d118c | 1;
    DAT_011d1188 = HashLowercasedCStringFNV1("FadeYThreshold");
  }
  if ((_DAT_011d118c & 2) == 0) {
    _DAT_011d118c = _DAT_011d118c | 2;
    DAT_011d1184 = HashLowercasedCStringFNV1("FadeZThreshold");
  }
  if ((_DAT_011d118c & 4) == 0) {
    _DAT_011d118c = _DAT_011d118c | 4;
    DAT_011d1180 = HashLowercasedCStringFNV1("PieMenuHeadRadius");
  }
  local_68 = 0;
  local_64 = 0;
  local_60 = 0;
  local_5c = 0;
  local_50[4] = 0;
  local_50[5] = 0;
  local_50[6] = 0;
  local_50[7] = 0;
  local_30[6] = (float *)0x0;
  local_30[7] = (float *)0x0;
  local_30[8] = (float *)0x0;
  local_30[9] = (float *)0x0;
  FUN_006db0a0(&local_ac);
  local_ac = local_78;
  local_a4 = param_3;
  local_a8 = 0;
  local_9c = 1;
  local_b8 = 0;
  fVar5 = SimHeadIsolationModifier_ComputeFadeThresholds(this,&local_b8);
  local_b4 = (float)fVar5;
  local_58[0] = &local_b4;
  local_78[1] = DAT_011d1188;
  local_58[1] = (float *)0x1;
  local_78[0] = 1;
  uVar2 = *(uint *)(*(int *)((int)this + 8) + 0x38) & 0xcf00;
  iVar4 = 1;
  if (uVar2 == 0) {
    uVar2 = 0x100;
  }
  if (uVar2 != 0x100) {
    local_30[0] = (float *)&local_b8;
    local_50[1] = DAT_011d1184;
    local_30[1] = (float *)0x1;
    local_50[0] = 1;
    iVar4 = 2;
  }
  local_b0 = DAT_01159a0c * _DAT_00ff4040;
  local_78[iVar4 * 10 + 1] = DAT_011d1180;
  local_a8 = iVar4 + 1;
  cVar1 = *(char *)((int)param_1 + 0x72);
  local_58[iVar4 * 10] = &local_b0;
  local_58[iVar4 * 10 + 1] = (float *)0x1;
  local_78[iVar4 * 10] = 1;
  local_bc = (int *)0x0;
  if (cVar1 == '\0') {
    uVar3 = ModelLOD_CloneWithMaterialSubstitutions(param_1,&local_bc,(int *)&local_ac,param_4);
    if ((char)uVar3 == '\0') {
      if (local_bc != (int *)0x0) {
        (**(code **)(*local_bc + 4))();
      }
      uVar2 = FUN_0073ebe0((int)local_94,local_90);
      uStack_8c = 0;
      if (1 < local_90) {
        Memory_FreeIfNonNull(local_94);
        uVar2 = extraout_EAX_00;
      }
      return uVar2 & 0xffffff00;
    }
  }
  else {
    (**(code **)*param_1)();
    local_bc = param_1;
    ModelLOD_ApplyMaterialSubstitutions(param_1,(int)param_1,(int *)&local_ac,param_4);
  }
  *param_2 = local_bc;
  (**(code **)*local_bc)();
  if (local_bc != (int *)0x0) {
    (**(code **)(*local_bc + 4))();
  }
  uVar3 = FUN_0073ebe0((int)local_94,local_90);
  uStack_8c = 0;
  if (1 < local_90) {
    Memory_FreeIfNonNull(local_94);
    uVar3 = extraout_EAX;
  }
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}


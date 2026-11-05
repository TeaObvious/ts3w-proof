/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Static PC1.67: ECX modifier, one stack output pointer, RET4. Reads retained model at modifier+8
   then flags+38; species maskCF00 zero normalizes to100. For100, age mask7F
   cases2/4/8/40hex/default select original F32globals1159A30/2C/28/24/20 (.84/1.26/1.84/1.81/1.84
   defaults), returning x87 Y without writing the output. Species200/300/400/500 select Y/Z by exact
   mask60!=0: Y .8/1.4,.06/.175,.07/.45,.06/.15 and Z .2/.35,0/.05,0/.2,0/.05. Unknown non100
   returns x87+0 without output write; caller initializes Z+0. At69A277 the MOVSS load is
   F32bits3E333333 (.175), not the numeric integer cast shown by genuine C. No bone/joint/bounds
   query or child call. Raw flags, globals, out-pointer behavior and stored ABI remain unchanged;
   these material thresholds are not a CPU cutoff. */

float10 __thiscall SimHeadIsolationModifier_ComputeFadeThresholds(void *param_1,undefined4 *param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  bool bVar4;
  undefined4 uVar5;
  
  uVar1 = *(uint *)(*(int *)((int)param_1 + 8) + 0x38);
  uVar2 = uVar1 & 0xcf00;
  uVar3 = uVar2;
  if (uVar2 == 0) {
    uVar3 = 0x100;
  }
  if (uVar3 == 0x100) {
    switch(uVar1 & 0x7f) {
    case 2:
      return (float10)_DAT_01159a30;
    default:
      return (float10)_DAT_01159a20;
    case 4:
      return (float10)_DAT_01159a2c;
    case 8:
      return (float10)_DAT_01159a28;
    case 0x40:
      return (float10)_DAT_01159a24;
    }
  }
  bVar4 = (uVar1 & 0x60) == 0;
  if (uVar2 < 0x401) {
    if (uVar2 == 0x400) {
      if (bVar4) {
        uVar5 = 0;
      }
      else {
        uVar5 = DAT_00fab214;
      }
      *param_2 = uVar5;
      if (bVar4) {
        return (float10)DAT_00fc3130;
      }
      return (float10)_DAT_00ff4048;
    }
    if (uVar2 == 0x200) {
      if (bVar4) {
        uVar5 = DAT_00fab214;
      }
      else {
        uVar5 = DAT_00ff3ae4;
      }
      *param_2 = uVar5;
      if (bVar4) {
        return (float10)DAT_00f9e51c;
      }
      return (float10)_DAT_00fee464;
    }
    if (uVar2 == 0x300) {
      if (bVar4) {
        uVar5 = 0;
      }
      else {
        uVar5 = DAT_0106d788;
      }
      *param_2 = uVar5;
      if (bVar4) {
        return (float10)DAT_00f9e4fc;
      }
      return (float10)(float)s_>333>IsolateSimHeadFixupLOD___Pi_00ff404b._1_4_;
    }
  }
  else if (uVar2 == 0x500) {
    if (bVar4) {
      uVar5 = 0;
    }
    else {
      uVar5 = DAT_0106d788;
    }
    *param_2 = uVar5;
    if (bVar4) {
      return (float10)DAT_00f9e4fc;
    }
    return (float10)_DAT_0106c4e4;
  }
  return (float10)0;
}


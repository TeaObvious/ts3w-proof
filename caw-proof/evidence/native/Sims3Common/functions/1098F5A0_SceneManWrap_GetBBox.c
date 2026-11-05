/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetBBox. Export ordinal(s): 2250.
   Entry VA: 0x1098f5a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000144. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl SceneManWrap_GetBBox(undefined4 *param_1,void *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  uint uVar4;
  int local_200;
  int local_1fc;
  undefined4 local_1f8;
  char *local_1f4;
  float local_1f0;
  float local_1e0;
  float fStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  float local_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float local_1b8 [6];
  undefined1 local_1a0 [32];
  undefined1 local_180 [16];
  float local_170 [4];
  float local_160;
  float local_140 [71];
  int local_24;
  
                    /* 0x98f5a0  2250  SceneManWrap_GetBBox */
  local_200 = 0;
  local_1fc = 0;
  local_1f8 = 0;
  local_1f4 = "Renderer/SceneManagerWrap";
  FUN_104de510(param_2,&local_200);
  FUN_10482c70(&local_1e0);
  uVar4 = 0;
  if (local_1fc - local_200 >> 2 != 0) {
    do {
      FUN_10489850(local_180,(undefined4 *)(*(int *)(local_200 + uVar4 * 4) + 0x40));
      if (local_24 != 0) {
        local_1b8[0] = local_170[0];
        local_1f0 = local_160;
        if (local_170[0] <= local_160) {
          FUN_104848e0(local_170,local_140);
          FUN_10482b20(&local_1e0,(undefined1 (*) [16])&local_1e0,(undefined1 (*) [16])local_1a0);
        }
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < (uint)(local_1fc - local_200 >> 2));
  }
  local_1b8[0] = local_1e0;
  local_1f0 = local_1d0;
  if (local_1d0 < local_1e0) {
    local_1e0 = 0.0 - DAT_10acb0d4;
    fStack_1dc = 0.0 - DAT_10acb0d4;
    fStack_1d8 = 0.0 - DAT_10acb0d4;
    fStack_1d4 = 0.0 - DAT_10acb0d4;
    local_1d0 = DAT_10acb0d4;
    fStack_1cc = DAT_10acb0d4;
    fStack_1c8 = DAT_10acb0d4;
    fStack_1c4 = DAT_10acb0d4;
  }
  puVar3 = (undefined4 *)FUN_10986ab0(local_1b8,&local_1e0);
  uVar1 = puVar3[1];
  *param_1 = *puVar3;
  uVar2 = puVar3[2];
  param_1[1] = uVar1;
  uVar1 = puVar3[3];
  param_1[2] = uVar2;
  uVar2 = puVar3[4];
  param_1[3] = uVar1;
  uVar1 = puVar3[5];
  param_1[4] = uVar2;
  param_1[5] = uVar1;
  if (local_200 != 0) {
    FUN_10918e90(local_200);
  }
  return param_1;
}


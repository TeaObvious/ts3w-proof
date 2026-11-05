/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX spatial owner plus object and aligned bounds pointers, RET08. Null
   object returns. Save object+1EC current cell. First compare maxX,minX with COMISS/JC: inverted OR
   unordered X reaches rejection. Then compare owner+50/+54/+58 minus actual binary32 15000
   from00FFB36C against bounds min xyz using COMISS/JA: these reject ordered greater values but not
   unordered, distinct from the first JC. Valid selected path builds actual four-byte cell key
   through00705A30, resolves cell007054B0 and returns if missing or identical to old; different
   selected cell invokes007061A0. Rejection calls006FB220 only when an old cell exists. No
   all-finite/clamp, wider domain policy, guessed cell implementation or current packet clipping
   parity is introduced. */

void __thiscall SceneSpatialOwner_UpdateObjectCell(void *this,int param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  void *this_00;
  byte local_38 [4];
  void *local_34;
  float local_30;
  float local_20;
  
  if (param_1 != 0) {
    fVar1 = *param_2;
    local_30 = param_2[2];
    local_34 = *(void **)(param_1 + 0x1ec);
    fVar2 = param_2[4];
    local_20 = fVar1;
                    /* First COMISS/JC rejects inverted or unordered X bounds; later lower-limit
                       COMISS/JA branches have different unordered behavior. */
                    /* JA rejects only ordered greater lower limit here; unordered does not take
                       this rejection, unlike earlier JC. */
    if ((((fVar1 <= param_2[4]) &&
         (local_20 = *(float *)((int)this + 0x50) - DAT_00ffb36c, fVar2 = fVar1, local_20 <= fVar1))
        && (local_20 = *(float *)((int)this + 0x54) - DAT_00ffb36c, fVar2 = param_2[1],
           local_20 <= param_2[1])) &&
       (local_20 = *(float *)((int)this + 0x58) - DAT_00ffb36c, fVar2 = local_30,
       local_20 <= local_30)) {
      local_38[0] = 0;
      local_38[1] = 0;
      local_38[2] = 0;
      local_38[3] = 0;
      FUN_00705a30(this,param_2,local_38);
      this_00 = (void *)FUN_007054b0(this,local_38);
      if (this_00 == (void *)0x0) {
        return;
      }
      if (local_34 == this_00) {
        return;
      }
      FUN_007061a0(this_00,param_1,param_2);
      return;
    }
    local_30 = fVar2;
    if (local_34 != (void *)0x0) {
      FUN_006fb220(param_1);
    }
  }
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 ECX collector plus SIX stack words, RET18hex, no scalar return contract. Reads
   host GUID low/high, stores candidate yaw/distance and appends row throughCCA320. Angular metric
   is SSE binary32: d=abs(candidateYaw-referenceYawAtContext2C), scaled=d*F32[FC2420=3E22F983],
   turns=CVTTSS2SI(scaled), folded=d-F32(turns)*F32[107F284=40C90FDB]. If folded<
   F32[107F280=40490FDB] use folded, else including unordered use fullTurn-folded. CVTT invalid
   word80000000; a C# remainder operator or saturation changes this metric. This is candidate
   ranking, not a universally normalized nonnegative angle. */

void __thiscall
SlotCandidates_AppendWithAngularDistance
          (void *this,int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          float param_5,undefined4 param_6)

{
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  float local_14;
  int local_10;
  undefined4 local_c;
  float local_8;
  
  if (param_1 == 0) {
    local_28 = 0;
    local_24 = 0;
  }
  else {
    local_28 = *(undefined4 *)(param_1 + 8);
    local_24 = *(undefined4 *)(param_1 + 0xc);
  }
  local_18 = param_6;
  local_20 = param_3;
  local_14 = ABS(param_5 - *(float *)((int)this + 0x2c));
  local_1c = param_4;
  local_14 = local_14 - (float)(int)(local_14 * 0.15915494) * 6.2831855;
  if (3.1415927 <= local_14) {
    local_14 = 6.2831855 - local_14;
  }
  local_10 = param_1;
  local_c = param_2;
  local_8 = param_5;
  FUN_00cca320((void *)((int)this + 0x30),&local_28);
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl AL. Empty input
   returns false without writing outputs. Nonempty initializes min/max from first float2 then
   reduces all vertices. Writes minX,minZ,maxX,maxZ. Exact finite equality keeps prior bounds.
   
   PC1.67 original static instructions. cdecl2DWORDargs/RET, AL-only Boolean. Complete owned ranges
   plus alignment gaps exported. Reads first float2 and reduces minX,minZ,maxX,maxZ with original
   scalar comparison selection; empty input AL0 leaves output unchanged. Managed
   polygon[0]/Vector2.MinMax only matches ordinary finite input under its separate admission; do not
   infer identical NaN/signedzero behavior.
   ORDERED BOUNDS SELECTION: COMISS/JA at7CE228/231 and7CE3AE/3B7 chooses incoming minimum only when
   old>incoming; otherwise retains old rawFloat32. Maximum uses incoming>old at7CE256/259
   and7CE3DC/3DF. Thus equality and unordered comparison retain old bits,including signedzero and
   quietNaN selection. Do NOT implement this scalar contract through Vector2.Min/Max or
   MathF.Min/Max. x87 FLD/FSTP may quiet signalingNaNs/currentFPexceptions;this note doesnot
   establish globalexceptionmask/payloadparity. Eight-byte float2
   entries,firstvalueinitializesallfourbounds;empty returnsAL0withoutoutputwrite. */

bool __cdecl Geometry_GetPolygonXZBounds(int *param_1,float *param_2)

{
  float *pfVar1;
  float *pfVar2;
  float *pfVar3;
  int iVar4;
  float *pfVar5;
  float *pfVar6;
  float *pfVar7;
  uint uVar8;
  uint local_c;
  
  if ((float *)*param_1 == (float *)param_1[1]) {
    return false;
  }
  *param_2 = *(float *)*param_1;
  param_2[1] = *(float *)(*param_1 + 4);
  pfVar1 = param_2 + 1;
  param_2[2] = *param_2;
  pfVar2 = param_2 + 3;
  *pfVar2 = *pfVar1;
  local_c = 1;
  uVar8 = param_1[1] - *param_1 >> 3;
  if (3 < (int)(uVar8 - 1)) {
    do {
      iVar4 = local_c * 8;
      pfVar5 = (float *)(*param_1 + iVar4);
      pfVar6 = pfVar5;
      if (*param_2 < *pfVar5 || *param_2 == *pfVar5) {
        pfVar6 = param_2;
      }
      pfVar7 = pfVar5 + 1;
      *param_2 = *pfVar6;
      pfVar6 = pfVar7;
      if (*pfVar1 < *pfVar7 || *pfVar1 == *pfVar7) {
        pfVar6 = pfVar1;
      }
      pfVar3 = param_2 + 2;
      *pfVar1 = *pfVar6;
      if (*pfVar5 < *pfVar3 || *pfVar5 == *pfVar3) {
        pfVar5 = pfVar3;
      }
      *pfVar3 = *pfVar5;
      if (*pfVar7 < *pfVar2 || *pfVar7 == *pfVar2) {
        pfVar7 = pfVar2;
      }
      *pfVar2 = *pfVar7;
      pfVar5 = (float *)(iVar4 + 8 + *param_1);
      pfVar6 = (float *)(iVar4 + 8 + *param_1);
      pfVar7 = pfVar6;
      if (*param_2 < *pfVar5 || *param_2 == *pfVar5) {
        pfVar7 = param_2;
      }
      pfVar5 = pfVar6 + 1;
      *param_2 = *pfVar7;
      pfVar7 = pfVar5;
      if (*pfVar1 < *pfVar5 || *pfVar1 == *pfVar5) {
        pfVar7 = pfVar1;
      }
      *pfVar1 = *pfVar7;
      if (*pfVar6 < *pfVar3 || *pfVar6 == *pfVar3) {
        pfVar6 = pfVar3;
      }
      *pfVar3 = *pfVar6;
      if (*pfVar5 < *pfVar2 || *pfVar5 == *pfVar2) {
        pfVar5 = pfVar2;
      }
      *pfVar2 = *pfVar5;
      pfVar5 = (float *)(iVar4 + 0x10 + *param_1);
      pfVar6 = (float *)(iVar4 + 0x10 + *param_1);
      pfVar7 = pfVar6;
      if (*param_2 < *pfVar5 || *param_2 == *pfVar5) {
        pfVar7 = param_2;
      }
      pfVar5 = pfVar6 + 1;
      *param_2 = *pfVar7;
      pfVar7 = pfVar5;
      if (*pfVar1 < *pfVar5 || *pfVar1 == *pfVar5) {
        pfVar7 = pfVar1;
      }
      pfVar3 = param_2 + 2;
      *pfVar1 = *pfVar7;
      if (*pfVar6 < *pfVar3 || *pfVar6 == *pfVar3) {
        pfVar6 = pfVar3;
      }
      *pfVar3 = *pfVar6;
      if (*pfVar5 < *pfVar2 || *pfVar5 == *pfVar2) {
        pfVar5 = pfVar2;
      }
      *pfVar2 = *pfVar5;
      pfVar5 = (float *)(*param_1 + iVar4 + 0x18);
      pfVar6 = pfVar5;
      if (*param_2 < *pfVar5 || *param_2 == *pfVar5) {
        pfVar6 = param_2;
      }
      pfVar7 = pfVar5 + 1;
      *param_2 = *pfVar6;
      pfVar6 = pfVar7;
      if (*pfVar1 < *pfVar7 || *pfVar1 == *pfVar7) {
        pfVar6 = pfVar1;
      }
      pfVar3 = param_2 + 2;
      *pfVar1 = *pfVar6;
      if (*pfVar5 < *pfVar3 || *pfVar5 == *pfVar3) {
        pfVar5 = pfVar3;
      }
      *pfVar3 = *pfVar5;
      if (*pfVar7 < *pfVar2 || *pfVar7 == *pfVar2) {
        pfVar7 = pfVar2;
      }
      *pfVar2 = *pfVar7;
      local_c = local_c + 4;
    } while (local_c < uVar8 - 3);
  }
  for (; local_c < uVar8; local_c = local_c + 1) {
    pfVar5 = (float *)(*param_1 + local_c * 8);
    pfVar6 = (float *)(*param_1 + local_c * 8);
    pfVar7 = pfVar6;
    if (*param_2 < *pfVar5 || *param_2 == *pfVar5) {
      pfVar7 = param_2;
    }
    pfVar5 = pfVar6 + 1;
    *param_2 = *pfVar7;
    pfVar7 = pfVar5;
    if (*pfVar1 < *pfVar5 || *pfVar1 == *pfVar5) {
      pfVar7 = pfVar1;
    }
    pfVar3 = param_2 + 2;
    *pfVar1 = *pfVar7;
    if (*pfVar6 < *pfVar3 || *pfVar6 == *pfVar3) {
      pfVar6 = pfVar3;
    }
    *pfVar3 = *pfVar6;
    if (*pfVar5 < *pfVar2 || *pfVar5 == *pfVar2) {
      pfVar5 = pfVar2;
    }
    *pfVar2 = *pfVar5;
  }
  return true;
}


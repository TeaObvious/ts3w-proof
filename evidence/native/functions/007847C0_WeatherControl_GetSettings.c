/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163178 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.WeatherControl::WeatherControl_GetSettings [assembly=ScriptCore token=0x06000488; ;
   return=System.Single[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 weather snapshot instruction contract. Registered managed name preserved. cdecl no
   stack inputs, RET; managed array handle inEAX, zero when manager absent. Correct
   instruction-complete body7847C0..784A2A (619bytes), excludes next function784A30. Getter copies
   PENDING snapshot under980lock, not active render state. Emits exactly23FLOAT32 items. UInt32
   enum/audio fields use signed FILD, conditional FLOAT32constant2^32 addition, then one final float
   store; UInt16terrain and bytebools MOVZX/CVTSI2SS. No early float store before unsigned
   correction. Host slot8C ECX+2stack allocates23 viahandleOut;slotA8
   ECX+4stack(handleOut,data,0,23)copies. Explicit per-call ABI restores true returned local handle
   instead of false constant0 C artifact. No finite/clamp/malformed host safety inferred. */

uint __cdecl WeatherControl_GetSettings(void)

{
  int *arg0;
  uint uVar1;
  void *this;
  uint local_bc;
  PCWeatherSettings local_b8;
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  float local_8;
  float local_4;
  
  if (DAT_011edbc4 == 0) {
    this = (void *)0x0;
  }
  else {
    this = *(void **)(DAT_011edbc4 + 0x74);
  }
  local_bc = 0;
  uVar1 = 0;
  if (this != (void *)0x0) {
    local_b8.precipitationType = 0;
    local_b8.currentSeason = 0;
    local_b8.isSnowMelting = 0;
    local_b8.precipitationStrength = FLOAT_00f998f8;
    local_b8.frostAmount = 0.0;
    local_b8.sunriseOffset = 0.0;
    local_b8.sunsetOffset = 0.0;
    local_b8.snowThickness = 0.0;
    local_b8.snowRoadDepth = 0.0;
    local_b8.wetAmount = 0.0;
    local_b8.treeLeafLoss = 0.0;
    local_b8.useFallSet = 1;
    local_b8.treeFallColor = 0.0;
    local_b8.heatShimmerDistance = FLOAT_00fab218;
    local_b8.precipitationFog = 0.0;
    local_b8.pondFreeze = 0.0;
    local_b8.worldLeaves = 0.0;
    local_b8.cloudinessTarget = 0.0;
    local_b8.windStrength = 0.0;
    local_b8.normalFog = 0.0;
    WeatherSettings_CopyPending(this,&local_b8);
    local_5c = (float)(int)local_b8.precipitationType;
    if ((int)local_b8.precipitationType < 0) {
      local_5c = local_5c + FLOAT_00f99948;
    }
    local_54 = (float)(int)local_b8.currentSeason;
    local_58 = local_b8.precipitationStrength;
    if ((int)local_b8.currentSeason < 0) {
      local_54 = local_54 + FLOAT_00f99948;
    }
    local_48 = (float)(int)local_b8.precipitationAudioIndex;
    local_50 = local_b8.sunriseOffset;
    local_4c = local_b8.sunsetOffset;
    if ((int)local_b8.precipitationAudioIndex < 0) {
      local_48 = local_48 + FLOAT_00f99948;
    }
    local_44 = (float)(int)local_b8.windAudioIndex;
    if ((int)local_b8.windAudioIndex < 0) {
      local_44 = local_44 + FLOAT_00f99948;
    }
    local_40 = (float)local_b8.weatherTerrain;
    local_3c = local_b8.frostAmount;
    local_38 = local_b8.snowThickness;
    local_34 = local_b8.snowRoadDepth;
    local_30 = local_b8.wetAmount;
    local_2c = local_b8.treeLeafLoss;
    local_28 = (float)local_b8.useFallSet;
    local_24 = local_b8.treeFallColor;
    local_20 = local_b8.precipitationFog;
    local_1c = local_b8.pondFreeze;
    local_18 = local_b8.heatShimmerDistance;
    local_14 = local_b8.worldLeaves;
    local_10 = (float)local_b8.isSnowMelting;
    local_c = local_b8.cloudinessTarget;
    local_8 = local_b8.windStrength;
    local_4 = local_b8.normalFog;
    arg0 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*arg0 + 0x8c))(arg0,&local_bc,0x17);
    (**(code **)(*arg0 + 0xa8))(arg0,&local_bc,&local_5c,0,0x17);
    uVar1 = local_bc;
  }
  return uVar1;
}


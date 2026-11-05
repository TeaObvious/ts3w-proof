/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl AL. Builds
   matrix from lot position/heading (or object world transform when lot NULL), marshals two GUIDs
   and Matrix44 with type code0x91, dispatches WorldEvent0x18 HandToolAllowIntersection through
   0x0078f670 with three arguments. Returns callback result byte. This is managed policy, not
   another geometric test. SimIFace default callback wrapper returns false with no delegate. */

undefined1 __cdecl
ObjectIntersection_InvokeHandToolAllowCallback
          (void *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5
          ,float *param_6,float param_7)

{
  void *pvVar1;
  float *pfVar2;
  undefined4 *puVar3;
  undefined4 *this;
  undefined **local_160;
  undefined4 uStack_15c;
  uint uStack_158;
  float fStack_154;
  int local_114;
  undefined **local_110 [2];
  ushort local_108;
  undefined2 local_106;
  undefined1 local_100;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  undefined **local_b0 [2];
  undefined2 local_a8;
  undefined2 local_a6;
  undefined **local_90 [2];
  undefined2 local_88;
  undefined2 local_86;
  undefined **local_70 [2];
  byte local_68 [24];
  undefined4 local_50 [19];
  
  if (param_1 == (void *)0x0) {
    pvVar1 = ObjectRegistry_GetGlobal();
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_3,param_2));
    if ((pvVar1 == (void *)0x0) ||
       (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea158), pvVar1 == (void *)0x0)) {
      fStack_154 = DAT_00f998f8;
      uStack_158 = 0;
      uStack_15c = 0;
      local_160 = (undefined **)0x0;
      local_c0 = 0.0;
      fStack_bc = 0.0;
      fStack_b8 = 0.0;
      local_f0 = DAT_00f998f8;
      fStack_ec = 0.0;
      fStack_e8 = 0.0;
      fStack_e4 = 0.0;
      local_e0 = 0.0;
      fStack_dc = DAT_00f998f8;
      fStack_d8 = 0.0;
      fStack_d4 = 0.0;
      local_d0 = 0.0;
      fStack_cc = 0.0;
      fStack_c8 = DAT_00f998f8;
      fStack_c4 = 0.0;
      fStack_b4 = DAT_00f998f8;
    }
    else {
      pfVar2 = (float *)FUN_00957a90(pvVar1,(uint *)&local_160);
      local_f0 = *pfVar2;
      fStack_ec = pfVar2[1];
      fStack_e8 = pfVar2[2];
      fStack_e4 = pfVar2[3];
      local_e0 = pfVar2[4];
      fStack_dc = pfVar2[5];
      fStack_d8 = pfVar2[6];
      fStack_d4 = pfVar2[7];
      local_d0 = pfVar2[8];
      fStack_cc = pfVar2[9];
      fStack_c8 = pfVar2[10];
      fStack_c4 = pfVar2[0xb];
      local_c0 = pfVar2[0xc];
      fStack_bc = pfVar2[0xd];
      fStack_b8 = pfVar2[0xe];
      fStack_b4 = pfVar2[0xf];
    }
  }
  else {
    FUN_00adc7c0(param_1,param_6,(float *)&local_160,'\0');
    FUN_00b05b90(param_1,param_7,(float *)&local_160,&local_f0);
  }
  FUN_0076c220(local_50,&local_f0);
  local_160 = &PTR_FUN_00fba6f4;
  uStack_158 = 0;
  FUN_004f6020(&local_160,&param_2);
  local_b0[0] = &PTR_FUN_00fba6f4;
  local_a8 = 0;
  local_a6 = 0;
  FUN_004f64b0(local_b0,(int)&local_160);
  local_160 = &PTR_FUN_00fba6f4;
  if ((uStack_158 & 4) != 0) {
    FUN_004f5760(&local_160,'\0');
  }
  local_160 = &PTR_FUN_00fba6f4;
  uStack_158 = 0;
  FUN_004f6020(&local_160,&param_4);
  local_90[0] = &PTR_FUN_00fba6f4;
  local_88 = 0;
  local_86 = 0;
  FUN_004f64b0(local_90,(int)&local_160);
  local_160 = &PTR_FUN_00fba6f4;
  if ((uStack_158 & 4) != 0) {
    FUN_004f5760(&local_160,'\0');
  }
  local_160 = &PTR_FUN_00fba6f4;
  uStack_158 = 0;
  FUN_004f59c0(&local_160,0x91,0,local_50,0x40,1);
  local_70[0] = &PTR_FUN_00fba6f4;
  local_68[0] = 0;
  local_68[1] = 0;
  local_68[2] = 0;
  local_68[3] = 0;
  FUN_004f64b0(local_70,(int)&local_160);
  local_160 = &PTR_FUN_00fba6f4;
  if ((uStack_158 & 4) != 0) {
    FUN_004f5760(&local_160,'\0');
  }
  local_110[0] = &PTR_FUN_00fba6f4;
  local_108 = 0;
  local_106 = 0;
  puVar3 = World_DispatchRegisteredEventCallback(&local_160,0x18,local_b0,3);
  FUN_004f64b0(local_110,(int)puVar3);
  local_160 = &PTR_FUN_00fba6f4;
  if ((uStack_158 & 4) != 0) {
    FUN_004f5760(&local_160,'\0');
  }
  local_110[0] = &PTR_FUN_00fba6f4;
  if ((local_108 & 4) != 0) {
    FUN_004f5760(local_110,'\0');
  }
  local_114 = 2;
  puVar3 = local_50;
  do {
    this = puVar3 + -8;
    *this = &PTR_FUN_00fba6f4;
    if ((*(byte *)(puVar3 + -6) & 4) != 0) {
      FUN_004f5760(this,'\0');
    }
    local_114 = local_114 + -1;
    puVar3 = this;
  } while (-1 < local_114);
  return local_100;
}


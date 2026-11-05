/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified original PC 1.67 native operation preparation. Writes the native class property and
   dispatches operation-specific property helpers. The selected DrawFabric branch expands its
   pattern name, hashes it and resolves a program key through 005B82F0; failed lookup propagates
   false, otherwise the key is written as property DCFF6D7B. Native preparation is a required
   mechanism distinct from original managed Metadata construction. Complete helper arithmetic,
   resource lifetime, downstream unknown-class acceptance and initial object/wall producer selection
   remain unresolved. Analyst name only; existing inferred signature is retained. */

byte __thiscall ComplateNative_CompileStep(void *this,void *param_1,void *param_2)

{
  char cVar1;
  undefined4 uVar2;
  char *pcVar3;
  char *pcVar4;
  int iVar5;
  byte bVar6;
  bool bVar7;
  uint uVar8;
  undefined4 uStack_228;
  float local_224 [4];
  uint local_214;
  int iStack_210;
  
  FUN_00606750(param_2,0x687720a6,7,(uint *)((int)this + 0x18));
  uVar8 = *(uint *)((int)this + 0x18);
  if (0x9cd1269d < uVar8) {
    if (uVar8 < 0xd6bd8696) {
      if (uVar8 != 0xd6bd8695) {
        if (uVar8 == 0xa15200b1) {
          uVar2 = FUN_005ba0b0(this,(float)param_1,param_2);
          if ((char)uVar2 == '\0') {
            return 0;
          }
          uVar2 = FUN_005ba1a0(this,param_1,param_2);
          if ((char)uVar2 == '\0') {
            return 0;
          }
          uVar2 = FUN_005ba2f0(this,param_1,param_2);
          cVar1 = (char)uVar2;
        }
        else {
          if (uVar8 != 0xc6b6ac1f) {
            return 1;
          }
          uVar2 = FUN_005ba0b0(this,(float)param_1,param_2);
          if ((char)uVar2 == '\0') {
            return 0;
          }
          uVar2 = FUN_005ba1a0(this,param_1,param_2);
          cVar1 = (char)uVar2;
        }
        if (cVar1 == '\0') {
          return 0;
        }
        uVar2 = FUN_005ba3c0(this,param_1,param_2);
        if ((char)uVar2 == '\0') {
          return 0;
        }
        return 1;
      }
      pcVar4 = (char *)(**(code **)(*(int *)this + 8))(0xa2c91332);
      iVar5 = 0xf;
      bVar7 = true;
      pcVar3 = "RenderTarget_B";
      do {
        if (iVar5 == 0) break;
        iVar5 = iVar5 + -1;
        bVar7 = *pcVar3 == *pcVar4;
        pcVar3 = pcVar3 + 1;
        pcVar4 = pcVar4 + 1;
      } while (bVar7);
      if (!bVar7) {
        return 1;
      }
      FUN_00606750(param_2,0xa2c91332,7,(uint *)&DAT_00fe334c);
      return 1;
    }
    if (uVar8 != 0xdc0984b9) {
      return 1;
    }
    local_224[0] = 0.0;
    local_224[1] = 0.0;
    local_224[2] = 0.0;
    local_224[3] = 0.0;
    uVar2 = FUN_005ba0b0(this,(float)param_1,param_2);
    if (((((char)uVar2 == '\0') || (uVar2 = FUN_005ba1a0(this,param_1,param_2), (char)uVar2 == '\0')
         ) || (uVar2 = FUN_005ba2f0(this,param_1,param_2), (char)uVar2 == '\0')) ||
       (uVar2 = FUN_005ba3c0(this,param_1,param_2), (char)uVar2 == '\0')) {
      bVar6 = 0;
    }
    else {
      bVar6 = 1;
    }
    FUN_005b9a50(this,param_1,(undefined4 *)0xb67c2ef8);
    uVar8 = 0xb67c2ef8;
LAB_005ba918:
    uVar2 = FUN_00606960(uVar8,0xb,local_224);
    return (byte)uVar2 & bVar6;
  }
  if (uVar8 == 0x9cd1269d) {
    uVar2 = FUN_005ba0b0(this,(float)param_1,param_2);
    if (((char)uVar2 == '\0') || (uVar2 = FUN_005ba1a0(this,param_1,param_2), (char)uVar2 == '\0'))
    {
      bVar7 = false;
    }
    else {
      bVar7 = true;
    }
    local_214 = FUN_005b9ed0(this,param_1,0xb01748da,0);
    if ((bVar7) && (uVar2 = FUN_00606750(param_2,0xb01748da,7,&local_214), (char)uVar2 != '\0')) {
      return 1;
    }
    return 0;
  }
  if (uVar8 < 0x43b554e4) {
    if (uVar8 != 0x43b554e3) {
      if (uVar8 == 0x34210a5) {
        uVar2 = FUN_005ba0b0(this,(float)param_1,param_2);
        if ((((char)uVar2 == '\0') ||
            (uVar2 = FUN_005ba1a0(this,param_1,param_2), (char)uVar2 == '\0')) ||
           (uVar2 = FUN_005ba2f0(this,param_1,param_2), (char)uVar2 == '\0')) {
          bVar7 = false;
        }
        else {
          bVar7 = true;
        }
        local_224[0] = 0.0;
        local_224[1] = 0.0;
        local_224[2] = 0.0;
        local_224[3] = 0.0;
        pcVar3 = (char *)(**(code **)(*(int *)this + 8))(0xd4d9fbe5);
        FUN_005b84e0(&local_214,pcVar3);
        FUN_005b92a0((int *)&local_214);
        uVar8 = HashLowercasedBufferFNV1(local_214,iStack_210 - local_214);
        if (!bVar7) {
          return 0;
        }
        uVar8 = FUN_005b82f0(param_1,uVar8,&uStack_228);
        if ((char)uVar8 == '\0') {
          return 0;
        }
        uVar2 = FUN_006069d0(param_2,0xdcff6d7b,0xc,&uStack_228);
        if ((char)uVar2 == '\0') {
          return 0;
        }
        return 1;
      }
      if (uVar8 != 0x1e363b9b) {
        return 1;
      }
      local_224[0] = 1.0;
      local_224[1] = 0.0;
      local_224[2] = 0.0;
      local_224[3] = 0.0;
      uVar2 = FUN_005ba0b0(this,(float)param_1,param_2);
      if ((((char)uVar2 == '\0') ||
          (uVar2 = FUN_005ba1a0(this,param_1,param_2), (char)uVar2 == '\0')) ||
         ((uVar2 = FUN_005ba2f0(this,param_1,param_2), (char)uVar2 == '\0' ||
          (uVar2 = FUN_005ba3c0(this,param_1,param_2), (char)uVar2 == '\0')))) {
        bVar6 = 0;
      }
      else {
        bVar6 = 1;
      }
      FUN_005b9a50(this,param_1,(undefined4 *)0x556391b5);
      uVar8 = 0xd0e69002;
      goto LAB_005ba918;
    }
  }
  else if (uVar8 != 0x5d7c85d4) {
    if (uVar8 != 0x890805db) {
      return 1;
    }
    local_224[0] = 1.0;
    local_224[1] = 0.0;
    local_224[2] = 0.0;
    local_224[3] = 0.0;
    uVar2 = FUN_005ba0b0(this,(float)param_1,param_2);
    if ((((char)uVar2 == '\0') || (uVar2 = FUN_005ba1a0(this,param_1,param_2), (char)uVar2 == '\0'))
       || ((uVar2 = FUN_005ba2f0(this,param_1,param_2), (char)uVar2 == '\0' ||
           (uVar2 = FUN_005ba3c0(this,param_1,param_2), (char)uVar2 == '\0')))) {
      bVar6 = 0;
    }
    else {
      bVar6 = 1;
    }
    FUN_005b9a50(this,param_1,(undefined4 *)0x556391b5);
    uVar2 = FUN_00606960(0xd0e69002,0xb,local_224);
    uVar8 = FUN_005b9870(this,param_1,0xd49e8879);
    uStack_228._3_1_ = (undefined1)uVar8;
    if ((bVar6 & (byte)uVar2) == 0) {
      return 0;
    }
    uVar2 = FUN_00606430(param_2,0xd49e8879,0,(byte *)((int)&uStack_228 + 3));
    if ((char)uVar2 == '\0') {
      return 0;
    }
    return 1;
  }
  uVar2 = FUN_005ba0b0(this,(float)param_1,param_2);
  if ((char)uVar2 == '\0') {
    return 0;
  }
  uVar2 = FUN_005ba1a0(this,param_1,param_2);
  if ((char)uVar2 == '\0') {
    return 0;
  }
  return 1;
}


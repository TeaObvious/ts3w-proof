/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Resolves base/seasonal tree texture resource. Seasonal suffix is inserted
   at first underscore, or second underscore if DOT occurs before it. Missing underscore returns
   empty key. Tries product-specific resource namespace and optional installed-existence check;
   recovered strings/ResourceKey ABI include inferred types.
   
   Analyst PC1.67 tree texture instruction contract. ECX template plus outKey, authored BYTE C
   string, suffix BYTE C string, low-byte base-check flag, RET10hex. Previous wchar input types were
   decompiler artifacts:4F3B50 consumes byte strings and converts to16-bit units. Base
   typeB2D882/group0;4ECEF0 returns filename pointer,4AEE40 applies first-dot/numeric/group grammar.
   Seasonal underscore/DOT insertion rule preserved from prior review. Source number comes from
   template key+8 via7D78E0; number!=1 remaps candidate group with7D7890, manager+44 nonzero selects
   it; otherwise optional base check can yield four zero words. Availability manager, UTF8
   malformed/CRT locale and final renderer meanings remain separate. C string-buffer alias casts are
   representation artifacts. */

uint * __thiscall
Seasons_ResolveTreeTextureVariant
          (void *this,uint *outKey,byte *authoredBytes,byte *suffixBytes,byte checkBase)

{
  short sVar1;
  ushort *puVar2;
  short *psVar3;
  undefined4 *puVar4;
  byte *pbVar5;
  uint uVar6;
  short *psVar7;
  uint uVar8;
  int *piVar9;
  int iVar10;
  uint uVar11;
  uint local_4c;
  ushort *local_48;
  ushort *local_44;
  ushort *local_40;
  short *local_3c;
  undefined2 *local_38;
  char *local_34;
  ushort *local_30;
  short *local_2c;
  undefined2 *local_28;
  char *local_24;
  ushort *local_20;
  uint local_1c;
  int local_18;
  void *local_10 [2];
  int local_8;
  
  local_40 = (ushort *)0x0;
  local_3c = (short *)0x0;
  local_38 = (undefined2 *)0xb2d882;
  local_34 = (char *)0x0;
  if (suffixBytes == (byte *)0x0) {
    puVar4 = EaString_FromUtf8Bytes(&local_20,authoredBytes,0xffffffff,(byte *)"SpeedTree/Renderer")
    ;
    authoredBytes = (byte *)0x0;
    Path_SplitWidePointers
              ((ushort *)*puVar4,&local_48,(ushort **)&authoredBytes,(ushort **)&suffixBytes);
    ResourceKey_ParseWideName((uint *)&local_40,(ushort *)authoredBytes,0xb2d882,0,(void *)0x0,0);
    uVar11 = local_18 - (int)local_20;
  }
  else {
    local_30 = (ushort *)&DAT_011c8e54;
    local_2c = (short *)&DAT_011c8e54;
    local_24 = "SpeedTree/Renderer";
    local_28 = &DAT_011c8e56;
    puVar4 = EaString_FromUtf8Bytes(local_10,authoredBytes,0xffffffff,(byte *)"SpeedTree/Renderer");
    authoredBytes = (byte *)0x0;
    Path_SplitWidePointers((ushort *)*puVar4,&local_44,(ushort **)&authoredBytes,&local_48);
    sVar1 = *(short *)authoredBytes;
    pbVar5 = authoredBytes;
    while (sVar1 != 0) {
      pbVar5 = pbVar5 + 2;
      sVar1 = *(short *)pbVar5;
    }
    FUN_00408d60(&local_30,authoredBytes,
                 (undefined2 *)(authoredBytes + ((int)pbVar5 - (int)authoredBytes >> 1) * 2));
    if ((2 < (int)(local_8 - (int)local_10[0] & 0xfffffffeU)) && (local_10[0] != (void *)0x0)) {
      Memory_FreeIfNonNull(local_10[0]);
    }
    uVar6 = FUN_00714eb0(&local_30,(short *)&DAT_00fab260,0);
    uVar8 = DAT_011d3ad8;
    uVar11 = DAT_011d3ad4;
    if (uVar6 == 0xffffffff) {
      *outKey = DAT_011d3ad0;
      uVar6 = DAT_011d3adc;
      outKey[1] = uVar11;
      outKey[2] = uVar8;
      outKey[3] = uVar6;
      if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (ushort *)0x0)) {
        Memory_FreeIfNonNull(local_30);
      }
      return outKey;
    }
    uVar11 = FUN_00714eb0(&local_30,(short *)&DAT_00fab260,uVar6 + 1);
    psVar3 = local_2c;
    puVar2 = local_30;
    if ((((uVar11 != 0xffffffff) && (uVar6 + 3 <= (uint)((int)local_2c - (int)local_30 >> 1))) &&
        (psVar7 = FUN_0040a9e0((short *)(local_30 + uVar6),local_2c,(short *)&PTR_DAT_00ffcdb8,
                               (short *)&DAT_00ffcdbe), psVar7 != psVar3)) &&
       ((uVar8 = (int)psVar7 - (int)puVar2 >> 1, uVar8 != 0xffffffff && (uVar8 < uVar11)))) {
      uVar6 = uVar11;
    }
    EaString_FromUtf8Bytes(&local_20,suffixBytes,0xffffffff,(byte *)"SpeedTree/Renderer");
    FUN_004da170(&local_20,0,(short *)&DAT_00fab260);
    FUN_004d9da0(&local_30,puVar2 + uVar6,local_20,local_1c);
    puVar2 = local_30;
    authoredBytes = (byte *)0x0;
    Path_SplitWidePointers(local_30,&local_44,(ushort **)&authoredBytes,(ushort **)&suffixBytes);
    ResourceKey_ParseWideName((uint *)&local_40,(ushort *)authoredBytes,0xb2d882,0,(void *)0x0,0);
    if ((2 < (int)(local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (ushort *)0x0)) {
      Memory_FreeIfNonNull(local_20);
    }
    uVar11 = (int)local_28 - (int)puVar2;
    local_20 = puVar2;
  }
  if ((2 < (int)(uVar11 & 0xfffffffe)) && (local_20 != (ushort *)0x0)) {
    Memory_FreeIfNonNull(local_20);
  }
  ResourceKey_ExtractSourceNumber((uint *)((int)this + 8),&local_4c);
  if (local_4c != 1) {
    local_30 = local_40;
    local_28 = local_38;
    local_2c = local_3c;
    local_24 = local_34;
    ResourceKey_ApplySourceNumber(local_4c,(uint *)&local_30);
    piVar9 = (int *)FUN_004afe80();
    iVar10 = (**(code **)(*piVar9 + 0x44))(&local_30);
    if (iVar10 != 0) {
      *outKey = (uint)local_30;
      outKey[1] = (uint)local_2c;
      outKey[2] = (uint)local_28;
      outKey[3] = (uint)local_24;
      return outKey;
    }
  }
  if (checkBase != 0) {
    piVar9 = (int *)FUN_004afe80();
    iVar10 = (**(code **)(*piVar9 + 0x44))(&local_40);
    if (iVar10 == 0) {
      *outKey = 0;
      outKey[1] = 0;
      outKey[2] = 0;
      outKey[3] = 0;
      return outKey;
    }
  }
  *outKey = (uint)local_40;
  outKey[1] = (uint)local_3c;
  outKey[2] = (uint)local_38;
  outKey[3] = (uint)local_34;
  return outKey;
}


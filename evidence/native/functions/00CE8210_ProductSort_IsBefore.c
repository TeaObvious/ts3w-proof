/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical CUSTOM ABI: firstProductEAX,secondProductEDI,optionalFilterECX,modeDWORDstack4;
   plainRET and BooleanAL. Complete CE8830 caller8858pushesmode/loadsfilter thenADDESP4/TESTAL. No
   implicitthis receiver. Nullpointer ordering then unsigned resource type(product10). OBJD/filter
   modes1..3 have actual mask rankbranches; do not generalize them away. Signed priorityDWORD7C
   viaSETL; then binary32 price58 actual UCOMISS/COMISS flags, no finite-price gate. For equal
   price,mode4 bypasses names; otherwise C93370 gets actual names,446720 equality,4A4290 less.
   Failure/equalnames fall back4A3970 complete key unsigned
   lowinstanceDWORD,highinstanceDWORD,group,type. Current key UInt64order and lack of name phase
   differ. Preserve actual float/branch artifacts, no locale/runtime parity claim. */

bool __cdecl
ProductSort_IsBefore(void *firstProduct,void *secondProduct,void *optionalFilter,uint mode)

{
  bool bVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  char *local_40;
  uint local_3c;
  uint *local_38;
  uint *local_34;
  char *local_30;
  uint local_2c;
  uint local_28;
  uint local_20;
  uint local_1c;
  uint local_10;
  uint local_c;
  
  if ((firstProduct == (void *)0x0) || (secondProduct == (void *)0x0)) {
    return secondProduct < firstProduct;
  }
  local_34 = (uint *)((int)firstProduct + 8);
  local_38 = (uint *)((int)secondProduct + 8);
  uVar7 = *(uint *)((int)firstProduct + 0x10);
  if (uVar7 != *(uint *)((int)secondProduct + 0x10)) {
    return uVar7 < *(uint *)((int)secondProduct + 0x10);
  }
  if ((uVar7 == 0x319e4f1d) && (optionalFilter != (void *)0x0)) {
    if (mode == 1) {
      uVar7 = *(uint *)((int)firstProduct + 0xbc) & *(uint *)((int)optionalFilter + 0xc);
      uVar3 = *(uint *)((int)firstProduct + 0xb8) & *(uint *)((int)optionalFilter + 8);
      uVar6 = -uVar3 & uVar3;
      uVar4 = *(uint *)((int)secondProduct + 0xb8) & *(uint *)((int)optionalFilter + 8);
      uVar7 = -(uVar7 + (uVar3 != 0)) & uVar7;
      uVar5 = *(uint *)((int)secondProduct + 0xbc) & *(uint *)((int)optionalFilter + 0xc);
      local_28 = -uVar4 & uVar4;
      uVar5 = -(uVar5 + (uVar4 != 0)) & uVar5;
      local_20 = *(uint *)((int)optionalFilter + 0x10);
      uVar3 = *(uint *)((int)firstProduct + 0xc0) & local_20;
      local_2c = *(uint *)((int)firstProduct + 0xc4) & *(uint *)((int)optionalFilter + 0x14);
      local_30 = (char *)(-uVar3 & uVar3);
      local_2c = -(local_2c + (uVar3 != 0)) & local_2c;
      local_c = *(uint *)((int)secondProduct + 0xc4) & *(uint *)((int)optionalFilter + 0x14);
      local_10 = *(uint *)((int)secondProduct + 0xc0) & local_20;
      local_40 = (char *)(-local_10 & local_10);
      local_1c = -(local_c + (local_10 != 0));
      local_3c = local_1c & local_c;
      if (uVar6 != 0 || uVar7 != 0) {
        local_30 = (char *)0x0;
        local_2c = 0;
      }
      if (local_28 != 0 || uVar5 != 0) {
        local_40 = (char *)0x0;
        local_3c = 0;
      }
      if ((uVar6 == 0 && uVar7 == 0) && (local_30 == (char *)0x0 && local_2c == 0)) {
        if ((local_28 != 0 || uVar5 != 0) || (local_40 != (char *)0x0 || local_3c != 0)) {
          return true;
        }
      }
      else if ((local_28 == 0 && uVar5 == 0) && (local_40 == (char *)0x0 && local_3c == 0)) {
        if ((uVar6 != 0 || uVar7 != 0) || (local_30 != (char *)0x0 || local_2c != 0)) {
          return false;
        }
      }
      else if ((((uVar6 != local_28) || (uVar7 != uVar5)) || (local_30 != local_40)) ||
              (local_2c != local_3c)) {
        if (uVar6 == 0 && uVar7 == 0) {
          if (local_28 != 0 || uVar5 != 0) {
            return false;
          }
          if (local_3c < local_2c) {
            return false;
          }
          if ((local_3c <= local_2c) && (local_40 <= local_30)) {
            return false;
          }
          return true;
        }
        if (local_28 == 0 && uVar5 == 0) {
          return true;
        }
        if (uVar5 < uVar7) {
          return false;
        }
        if (uVar7 < uVar5) {
          return true;
        }
        if (uVar6 < local_28) {
          return true;
        }
        return false;
      }
    }
    else if (mode == 2) {
      uVar4 = *(uint *)((int)firstProduct + 200) & *(uint *)((int)optionalFilter + 0x18);
      uVar7 = *(uint *)((int)firstProduct + 0xcc) & *(uint *)((int)optionalFilter + 0x1c);
      uVar7 = -(uVar7 + (uVar4 != 0)) & uVar7;
      local_10 = *(uint *)((int)secondProduct + 200) & *(uint *)((int)optionalFilter + 0x18);
      uVar3 = *(uint *)((int)secondProduct + 0xcc) & *(uint *)((int)optionalFilter + 0x1c);
      uVar3 = -(uVar3 + (local_10 != 0)) & uVar3;
      if (((-uVar4 & uVar4) != (-local_10 & local_10)) || (uVar7 != uVar3)) {
        if (uVar3 < uVar7) {
          return false;
        }
        if ((uVar3 <= uVar7) && ((-local_10 & local_10) <= (-uVar4 & uVar4))) {
          return false;
        }
        return true;
      }
    }
    else if ((mode == 3) &&
            (uVar7 = *(uint *)((int)firstProduct + 0xd0) & *(uint *)((int)optionalFilter + 0x20),
            uVar7 = -uVar7 & uVar7,
            uVar3 = *(uint *)((int)secondProduct + 0xd0) & *(uint *)((int)optionalFilter + 0x20),
            uVar3 = -uVar3 & uVar3, uVar7 != uVar3)) {
      return uVar7 < uVar3;
    }
  }
  if (*(int *)((int)firstProduct + 0x7c) != *(int *)((int)secondProduct + 0x7c)) {
    return *(int *)((int)firstProduct + 0x7c) < *(int *)((int)secondProduct + 0x7c);
  }
  if (*(float *)((int)firstProduct + 0x58) != *(float *)((int)secondProduct + 0x58)) {
    if (*(float *)((int)secondProduct + 0x58) <= *(float *)((int)firstProduct + 0x58)) {
      return false;
    }
    return true;
  }
  local_40 = "World/UserToolHost/SortProductVectorOrdering";
  FUN_004088f0(&local_20,&local_40);
  local_40 = "World/UserToolHost/SortProductVectorOrdering";
  FUN_004088f0(&local_10,&local_40);
  if ((((mode == 4) || (uVar2 = FUN_00c93370(firstProduct,(int *)&local_20), (char)uVar2 == '\0'))
      || (uVar2 = FUN_00c93370(secondProduct,(int *)&local_10), (char)uVar2 == '\0')) ||
     (uVar2 = FUN_00446720(&local_20,&local_10), (char)uVar2 != '\0')) {
    bVar1 = UnsignedKey128_IsBefore(local_34,local_38);
  }
  else {
    bVar1 = FUN_004a4290(&local_20,&local_10);
  }
  FUN_004ef8f0((int *)&local_10);
  FUN_004ef8f0((int *)&local_20);
  return bVar1;
}


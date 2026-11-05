/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 shared signed/unsigned64 numeric routine. Physical caller-clean stack4 UTF16
   input, stack8 optional UTF16 end-pointer output, stackC radix32, low byte stack10 mode;
   remaining3 bytes of that slot are not read. Existing longlong EDX:EAX display is preserved for
   shared raw64 return: mode0 applies signed bounds, nonzero selects unsigned bounds. Initial
   skip/class/case uses fixed addresses114DA30/114DC30 for code units below256; original initial
   bytes include NBSP and ASCII hex mapping. Tables are writable image.data; static direct-reference
   reads do not prove absence of indirect writers or runtime locale changes. Optional sign and
   radix0/0x handling, end-pointer rollback when no digits, saturation/errno and final minus
   negation are actual instruction order, including unsigned negative overflow result1. No imported
   wcstoul locale equivalence. Owned219 instructions725 bytes; all existing DEFAULT locals remain
   unchanged. */

longlong __cdecl
NumericText_ParseSignedOrUnsigned64(ushort *text,ushort **outEnd,uint radix,char unsignedMode)

{
  ushort uVar1;
  ushort *puVar2;
  ushort uVar3;
  bool bVar4;
  bool bVar5;
  uint uVar6;
  undefined4 uVar7;
  int *piVar8;
  uint extraout_ECX;
  uint uVar9;
  ushort uVar10;
  uint uVar11;
  undefined8 uVar12;
  ushort *local_20;
  undefined8 local_18;
  uint local_10;
  
  uVar1 = *text;
  local_18 = 0;
  bVar4 = false;
  bVar5 = false;
  puVar2 = text;
  while ((local_20 = puVar2 + 1, uVar1 < 0x100 &&
         ((*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0114da30 +
                    (uint)uVar1) & 6) != 0))) {
    uVar1 = *local_20;
    puVar2 = local_20;
  }
  if ((uVar1 == 0x2d) || (uVar10 = uVar1, uVar3 = 0x2b, uVar1 == 0x2b)) {
    uVar10 = *local_20;
    local_20 = puVar2 + 2;
    uVar3 = uVar1;
  }
  if ((((int)radix < 0) || (radix == 1)) || (0x24 < (int)radix)) {
    if (outEnd != (ushort **)0x0) {
      *outEnd = text;
    }
    return 0;
  }
  if (radix == 0) {
    if (uVar10 != 0x30) {
      radix = 10;
      goto LAB_004fed34;
    }
    if ((*local_20 != 0x78) && (*local_20 != 0x58)) {
      radix = 8;
      goto LAB_004fed34;
    }
    radix = 0x10;
  }
  else if ((radix != 0x10) || (uVar10 != 0x30)) goto LAB_004fed34;
  if ((*local_20 == 0x78) || (*local_20 == 0x58)) {
    uVar10 = local_20[1];
    local_20 = local_20 + 2;
  }
LAB_004fed34:
  uVar12 = __aulldvrm(0xffffffff,0xffffffff,radix,(int)radix >> 0x1f);
  uVar9 = (uint)((ulonglong)uVar12 >> 0x20);
  do {
    uVar6 = (uint)uVar10;
    uVar11 = uVar6 - 0x30;
    if (9 < uVar11) {
      if ((0xff < uVar10) ||
         ((*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0114da30 + uVar6) &
          0xc0) == 0)) break;
      uVar11 = (byte)(&DAT_0114dc30)[uVar6] - 0x37;
    }
    if (radix <= uVar11) break;
    bVar4 = true;
    if (((local_18._4_4_ < uVar9) ||
        ((local_10 = (uint)uVar12, local_18._4_4_ == uVar9 && ((uint)local_18 < local_10)))) ||
       (((uint)local_18 == local_10 && ((local_18._4_4_ == uVar9 && (uVar11 <= extraout_ECX)))))) {
      local_18 = __allmul(radix,(int)radix >> 0x1f,(uint)local_18,local_18._4_4_);
      local_18 = local_18 + (ulonglong)uVar11;
      uVar10 = *local_20;
      local_20 = local_20 + 1;
    }
    else {
      uVar10 = *local_20;
      local_20 = local_20 + 1;
      bVar5 = true;
    }
  } while( true );
  local_20 = local_20 + -1;
  if (bVar4) {
    uVar7 = 0x7fffffff;
    if (bVar5) {
      if (unsignedMode == '\0') {
        if (uVar3 != 0x2d) goto LAB_004fee8e;
LAB_004feef2:
        local_18 = -0x8000000000000000;
      }
      else {
        uVar7 = 0xffffffff;
LAB_004fee8e:
        local_18 = CONCAT44(uVar7,0xffffffff);
      }
      piVar8 = _errno();
      *piVar8 = 0x22;
    }
    else if (unsignedMode == '\0') {
      if (uVar3 == 0x2d) {
        if ((0x80000000 < local_18._4_4_) ||
           ((0x7fffffff < local_18._4_4_ && ((uint)local_18 != 0)))) goto LAB_004feef2;
      }
      else if (((uVar3 == 0x2b) && (0x7ffffffe < local_18._4_4_)) && (0x7fffffff < local_18._4_4_))
      goto LAB_004fee8e;
    }
  }
  else {
    if (outEnd == (ushort **)0x0) goto LAB_004feeac;
    local_20 = text;
  }
  if (outEnd != (ushort **)0x0) {
    *outEnd = local_20;
  }
LAB_004feeac:
  if (uVar3 == 0x2d) {
    local_18 = CONCAT44(-(local_18._4_4_ + ((uint)local_18 != 0)),-(uint)local_18);
  }
  return local_18;
}


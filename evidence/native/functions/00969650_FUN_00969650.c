/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * INI section callback, three physical stack arguments, plain RET and AL status. swscanf section with %u_%f requires at least2 conversions, Position andRotation virtual34 require at least3, FOV requires positive conversion count; Type exactlyzero status supplies0. Rotation multiply uses original binary32 degrees-to-radians word. Formats/default/source grammar remain INI/CRT children, not host finite/type/size guards. Third callback argument points to INI+map context; stack locals/padded vectors in C are representation artifacts.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00969650_FUN_00969650.asm
 */

bool __cdecl FUN_00969650(wchar_t *param_1,undefined4 param_2,undefined4 *param_3)

{
  int *piVar1;
  bool bVar2;
  bool bVar3;
  int iVar4;
  void *this;
  float *pfVar5;
  uint local_64;
  void *local_60;
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  undefined1 auStack_20 [4];
  undefined1 local_1c [4];
  undefined4 auStack_18 [5];
  
  piVar1 = (int *)*param_3;
  local_60 = (void *)param_3[1];
  iVar4 = swscanf(param_1,L"%u_%f",&local_64,local_1c);
  bVar3 = false;
  if (1 < iVar4) {
    iVar4 = (**(code **)(*piVar1 + 0x34))
                      (piVar1,param_1,PTR_u_Position_0117ee34,PTR_u___f___f___f__0117ee44,&local_5c,
                       &local_58,&local_54);
    bVar3 = 2 < iVar4;
  }
  fStack_48 = local_54;
  fStack_44 = local_5c;
  fStack_4c = local_58;
  local_50 = local_5c;
  local_40 = local_5c;
  fStack_3c = local_58;
  fStack_38 = local_54;
  fStack_34 = local_5c;
  bVar2 = false;
  if (bVar3) {
    iVar4 = (**(code **)(*piVar1 + 0x34))
                      (piVar1,param_1,PTR_u_Rotation_0117ee38,PTR_u___f___f___f__0117ee44,&local_5c,
                       &local_58,&local_54);
    bVar2 = 2 < iVar4;
  }
  fStack_2c = local_58 * DAT_01045f88;
  fStack_30 = local_5c * DAT_01045f88;
  fStack_24 = local_54 * DAT_01045f88;
  fStack_28 = local_54 * DAT_01045f88;
  bVar3 = false;
  if (bVar2) {
    iVar4 = (**(code **)(*piVar1 + 0x34))
                      (piVar1,param_1,PTR_PTR_0117ee3c,PTR_DAT_0117ee48,auStack_20);
    bVar3 = 0 < iVar4;
    if (bVar3) {
      iVar4 = (**(code **)(*piVar1 + 0x34))
                        (piVar1,param_1,PTR_u_Type_0117ee40,PTR_DAT_0117ee4c,auStack_18);
      if (iVar4 == 0) {
        auStack_18[0] = 0;
      }
      pfVar5 = &local_40;
      this = (void *)FUN_009695b0(local_60,&local_64);
      FUN_00969180(this,pfVar5);
    }
  }
  return bVar3;
}


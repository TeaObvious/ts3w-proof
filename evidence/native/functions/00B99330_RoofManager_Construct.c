/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 construction persistence contract): ECX manager, normal return. Initialize
   last-issued roof counter+3C to0, orientation+88 true, pagoda+8C zero, optional flag+90 false and
   fields+94/+98/+99 zero. Default catalog pattern comes from current catalog first product if
   present. Read of v3 retains orientation true; it does not default false. */

undefined4 * __fastcall RoofManager_Construct(undefined4 *param_1)

{
  int iVar1;
  float fVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int local_494 [293];
  
  uVar3 = DAT_0103fd88;
  uVar4 = _DAT_00f9b5b4;
  fVar2 = FLOAT_00f998f8;
  *param_1 = &PTR_FUN_01070f40;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = "World/RoofManager/RoofMapArray";
  param_1[0xb] = fVar2;
  param_1[0xc] = uVar3;
  param_1[0xe] = "World/RoofManager/RoofIDToLevelMap";
  param_1[10] = 0;
  param_1[0xd] = 0;
  param_1[9] = 1;
  param_1[8] = &DAT_0114d900;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  param_1[0x11] = 0;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  *(undefined1 *)(param_1 + 0x14) = 1;
  param_1[0x15] = uVar4;
  param_1[0x1a] = fVar2;
  param_1[0x1b] = uVar3;
  param_1[0x1d] = "World/RoofManager/CollisionShapeMap";
  param_1[0x17] = &DAT_0114d900;
  param_1[0x18] = 1;
  param_1[0x19] = 0;
  param_1[0x1c] = 0;
  param_1[0x1e] = 0;
  param_1[0x1f] = 0;
  param_1[0x20] = 0;
  param_1[0x21] = 0;
  *(undefined1 *)(param_1 + 0x22) = 1;
  param_1[0x23] = 0;
  *(undefined1 *)(param_1 + 0x24) = 0;
  param_1[0x25] = 0;
  *(undefined1 *)(param_1 + 0x26) = 0;
  *(undefined1 *)((int)param_1 + 0x99) = 0;
  FUN_004e1cf0(param_1 + 0x28,(char *)0x0,'\x01');
  iVar1 = *(int *)(DAT_011ee034 + 0xa8);
  if (iVar1 != 0) {
    param_1[0x10] = *(undefined4 *)(iVar1 + 8);
    param_1[0x11] = *(undefined4 *)(iVar1 + 0xc);
    param_1[0x12] = *(undefined4 *)(iVar1 + 0x10);
    param_1[0x13] = *(undefined4 *)(iVar1 + 0x14);
  }
  DAT_011ed389 = FUN_0058b460((LPCWSTR)"tuningRoofCurves",0);
  if (DAT_011ed388 == '\0') {
    FUN_007d0120(local_494);
    uVar4 = FUN_007d0370(local_494,L"Roofs.ini",0);
    if ((char)uVar4 != '\0') {
      FUN_00b97750(local_494);
      DAT_011ed388 = '\x01';
    }
    FUN_007d0250(local_494);
  }
  return param_1;
}


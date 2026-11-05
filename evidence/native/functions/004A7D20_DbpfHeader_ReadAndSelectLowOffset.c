/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original DBPF index closure: PC1.67 physicalECX provider/no stackargs/plainRET; read
   exactly96 headerbytes atproviderbase. Actual selected indexoffset usesLOWDWORD atheader64
   unlesszero thenlegacy40; newhigh68 notselected. Count36→provider330; indexsize44→334. Calls
   actual vtable88validator; invalidheader may invoke alternatebase locator4AEA50/retry, separate
   provider policy. No QWORD indexoffset inferred. */

bool __fastcall DbpfHeader_ReadAndSelectLowOffset(int *param_1)

{
  uint uVar1;
  code *pcVar2;
  char cVar3;
  undefined1 uVar4;
  size_t sVar5;
  int iVar6;
  bool bVar7;
  undefined1 local_60 [12];
  int local_54;
  int local_50;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_20;
  
  memset(local_60,0,0x60);
  FUN_004e1c00((LPCRITICAL_SECTION)(param_1 + 0xa8),(uint *)&DAT_00fb3508);
  uVar1 = param_1[0x97];
  if (param_1[0x99] == 0) {
    cVar3 = (**(code **)(*(int *)param_1[0x98] + 0x28))(uVar1,0);
    bVar7 = false;
    if (cVar3 == '\0') goto LAB_004a7d98;
  }
  else {
    if ((uint)param_1[0x9a] <= uVar1) {
      bVar7 = false;
      goto LAB_004a7d98;
    }
    param_1[0x9b] = uVar1;
  }
  sVar5 = PackedFile_ReadBytes(param_1,local_60,0x60);
  bVar7 = sVar5 == 0x60;
LAB_004a7d98:
  FUN_004e1cc0((LPCRITICAL_SECTION)(param_1 + 0xa8));
  if (bVar7 != false) {
    param_1[0xc5] = local_50;
    param_1[0xca] = local_40;
    param_1[0xc4] = local_54;
    param_1[0xc6] = local_48;
    param_1[199] = 0;
    param_1[200] = local_44;
    param_1[0xc9] = 0;
    param_1[0xcb] = local_20;
    if (local_20 == 0) {
      param_1[0xcb] = local_38;
    }
    param_1[0xcc] = local_3c;
    pcVar2 = *(code **)(*param_1 + 0x88);
    param_1[0xcd] = local_34;
    cVar3 = (*pcVar2)(local_60);
    if (cVar3 != '\0') {
      return true;
    }
    iVar6 = FUN_004aea50((wchar_t *)param_1[9]);
    param_1[0x97] = iVar6;
    if (iVar6 == -1) {
      param_1[0x97] = 0;
      return false;
    }
    if (DAT_011c88d4 == '\0') {
      DAT_011c88d4 = 1;
      uVar4 = (**(code **)(*param_1 + 0x7c))();
      DAT_011c88d4 = 0;
      return (bool)uVar4;
    }
  }
  return bVar7;
}


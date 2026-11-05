/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original DBPF role: Write96-byte DBPF header: major2/minor0, indexversion3;
   count36, size44, selected indexoffset64/68. Legacy40 write follows physical signed-offset branch;
   no normalized QWORD read policy inferred. */

undefined4 __fastcall DbpfHeader_WriteVersion2(void *param_1)

{
  char cVar1;
  uint in_EAX;
  undefined4 uVar2;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  uint uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_24;
  uint uStack_20;
  int iStack_1c;
  
  if ((*(byte *)((int)param_1 + 0x14) & 2) == 0) {
    return in_EAX & 0xffffff00;
  }
  if (*(int *)((int)param_1 + 0x264) == 0) {
    in_EAX = (**(code **)(**(int **)((int)param_1 + 0x260) + 0x14))();
    if (in_EAX == 0xfffffffe) {
      return 0xffffff00;
    }
  }
  if (*(char *)((int)param_1 + 0x338) != '\0') {
    memset(&local_60,0,0x60);
    uStack_54 = *(undefined4 *)((int)param_1 + 0x2dc);
    uStack_40 = *(undefined4 *)((int)param_1 + 0x328);
    uStack_50 = *(undefined4 *)((int)param_1 + 0x2e0);
    uStack_3c = *(undefined4 *)((int)param_1 + 0x330);
    uStack_20 = *(uint *)((int)param_1 + 0x32c);
    iStack_1c = (int)uStack_20 >> 0x1f;
    uStack_34 = *(undefined4 *)((int)param_1 + 0x334);
    local_60 = 0x46504244;
    uStack_5c = 2;
    uStack_38 = (uStack_20 < 0x80000000) - 1 & uStack_20;
    uStack_58 = 0;
    uStack_4c = 0;
    uStack_48 = 0;
    uStack_44 = 0;
    uStack_24 = 3;
    cVar1 = '\0';
    FUN_004e1c00((LPCRITICAL_SECTION)((int)param_1 + 0x2a0),(uint *)&DAT_00fb3508);
    uVar2 = FUN_004a7820(param_1,*(uint *)((int)param_1 + 0x25c));
    if (((char)uVar2 != '\0') && (*(int *)((int)param_1 + 0x264) == 0)) {
      cVar1 = (**(code **)(**(int **)((int)param_1 + 0x260) + 0x38))(&local_60,0x60);
    }
    in_EAX = FUN_004e1cc0((LPCRITICAL_SECTION)((int)param_1 + 0x2a0));
    if (cVar1 == '\0') {
      return in_EAX & 0xffffff00;
    }
    *(undefined1 *)((int)param_1 + 0x338) = 0;
  }
  return CONCAT31((int3)(in_EAX >> 8),1);
}


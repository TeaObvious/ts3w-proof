/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AudioWrap_GetResourceKeys. Export ordinal(s):
   1707. Entry VA: 0x1097ec90. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060002F2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl AudioWrap_GetResourceKeys(wchar_t *param_1,short *param_2)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int local_34;
  int local_30;
  undefined4 local_2c;
  char *local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  int local_18;
  int local_14 [4];
  int local_4;
  
                    /* 0x97ec90  1707  AudioWrap_GetResourceKeys */
  uVar5 = 0;
  if (((param_1 != (wchar_t *)0x0) && (param_2 != (short *)0x0)) &&
     (piVar1 = (int *)FUN_108e50d0(), piVar1 != (int *)0x0)) {
    FUN_1097e7f0(local_14,param_2);
    if (local_4 != -1) {
      local_34 = 0;
      local_30 = 0;
      local_2c = 0;
      local_28 = "CSHost/AudioWrap/AudioWrap_GetResourceKeys/KeyList";
      local_24 = 0;
      local_20 = 0;
      local_1c = 0;
      local_18 = 0;
      uVar2 = FUN_108e4830((longlong *)&local_24,param_1,0x2b9f662,0,(int *)0x0,0);
      if ((char)uVar2 != '\0') {
        FUN_1097e860(local_24,local_20,local_1c,local_18,piVar1,&local_34,param_2);
        iVar3 = local_30 - local_34 >> 4;
        if (((iVar3 != 0) && (iVar3 = Ordinal_411(8,0,iVar3), iVar3 != 0)) &&
           (iVar4 = Ordinal_21(iVar3), -1 < iVar4)) {
          iVar4 = *(int *)(iVar3 + 0xc);
          if (local_30 - local_34 >> 4 != 0) {
            iVar6 = 0;
            do {
              uVar2 = Ordinal_2(*(undefined4 *)(iVar6 + local_34));
              *(undefined4 *)(iVar4 + uVar5 * 4) = uVar2;
              uVar5 = uVar5 + 1;
              iVar6 = iVar6 + 0x10;
            } while (uVar5 < (uint)(local_30 - local_34 >> 4));
          }
          Ordinal_22(iVar3);
          FUN_102aebe0((int *)&stack0xffffffc8);
          FUN_1097e7c0(&local_18);
          return iVar3;
        }
      }
      FUN_102aebe0(&local_34);
    }
    FUN_1097e7c0(local_14);
  }
  return 0;
}


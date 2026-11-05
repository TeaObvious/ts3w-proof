/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. cdecl(object,locator6), bool result AL.
   Builds required/prohibited lists through00B40410, scans REQUIRED list for exact six-byte match or
   complete endpoint reversal (including level), then frees lists. Pointer-depth and extraout_EAX
   renderings are decompiler artifacts in container/cleanup; AL is the predicate observed by
   callers. Does not accept mere shared endpoints/collinear overlap. */

bool __cdecl Object_RequiresWallLocator(void *object,char *wallLocator6)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  uint uVar3;
  int ******ppppppiVar4;
  char local_40;
  char cStack_3f;
  char local_3d;
  char cStack_3c;
  undefined1 local_38 [4];
  int *****local_34;
  int *****local_30;
  undefined4 *local_2c;
  undefined4 local_28;
  undefined4 local_24;
  char *pcStack_20;
  undefined1 local_1c [4];
  undefined4 *****local_18;
  undefined4 *****local_14;
  undefined4 *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  FUN_00c8ebb0(DAT_011ee034,(uint *)((int)object + 0x18));
  local_34 = (int *****)&local_34;
  local_18 = &local_18;
  pcStack_20 = "World/Lot/RequiresWallOrFence/wallsRequired";
  local_2c = (undefined4 *)0x0;
  local_28 = 0;
  local_24 = 0;
  local_4 = "World/Lot/RequiresWallOrFence/wallsProhibited";
  local_10 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = 0;
  local_30 = local_34;
  local_14 = local_18;
  uVar3 = FUN_00b40410(object,local_38,local_1c);
  puVar2 = local_10;
  if (((char)uVar3 != '\0') &&
     (ppppppiVar4 = (int ******)local_30, (int ******)local_30 != &local_34)) {
    do {
      puVar2 = local_10;
      if (((*(char *)((int)ppppppiVar4 + 0x12) == wallLocator6[2]) &&
          ((((*(char *)(ppppppiVar4 + 4) == *wallLocator6 &&
             (*(char *)((int)ppppppiVar4 + 0x11) == wallLocator6[1])) &&
            (*(char *)((int)ppppppiVar4 + 0x15) == wallLocator6[5])) &&
           ((*(char *)((int)ppppppiVar4 + 0x13) == wallLocator6[3] &&
            (*(char *)(ppppppiVar4 + 5) == wallLocator6[4])))))) ||
         ((*(char *)((int)ppppppiVar4 + 0x15) == wallLocator6[2] &&
          (((local_40 = (char)*(undefined2 *)((int)ppppppiVar4 + 0x13), local_40 == *wallLocator6 &&
            (cStack_3f = (char)((ushort)*(undefined2 *)((int)ppppppiVar4 + 0x13) >> 8),
            cStack_3f == wallLocator6[1])) &&
           ((*(char *)((int)ppppppiVar4 + 0x12) == wallLocator6[5] &&
            ((local_3d = (char)*(undefined2 *)(ppppppiVar4 + 4), local_3d == wallLocator6[3] &&
             (cStack_3c = (char)((ushort)*(undefined2 *)(ppppppiVar4 + 4) >> 8),
             cStack_3c == wallLocator6[4])))))))))) {
        while (puVar1 = local_2c, puVar2 != (undefined4 *)0x0) {
          FUN_008b19b0((undefined4 *)*puVar2);
          puVar1 = (undefined4 *)puVar2[1];
          Memory_FreeIfNonNull(puVar2);
          puVar2 = puVar1;
        }
        while (puVar1 != (undefined4 *)0x0) {
          FUN_008b19b0((undefined4 *)*puVar1);
          puVar2 = (undefined4 *)puVar1[1];
          Memory_FreeIfNonNull(puVar1);
          puVar1 = puVar2;
        }
        return true;
      }
      ppppppiVar4 = (int ******)FUN_004e1030((int *)ppppppiVar4);
      puVar2 = local_10;
    } while (ppppppiVar4 != &local_34);
  }
  while (puVar1 = local_2c, puVar2 != (undefined4 *)0x0) {
    FUN_008b19b0((undefined4 *)*puVar2);
    puVar1 = (undefined4 *)puVar2[1];
    Memory_FreeIfNonNull(puVar2);
    puVar2 = puVar1;
  }
  while (puVar1 != (undefined4 *)0x0) {
    FUN_008b19b0((undefined4 *)*puVar1);
    puVar2 = (undefined4 *)puVar1[1];
    Memory_FreeIfNonNull(puVar1);
    puVar1 = puVar2;
  }
  return false;
}


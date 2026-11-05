/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placement/source boundary. cdecl two physical words/plainRET/AL status. Area
   attribute04 and retained area flag skip slope work; AFC8D0/catalog intersection/other tool
   admission can exempt it. Remaining path evaluates exact covered cells and optional feedback3F.
   Pure RequiresFlatSupport checks only known bits and is deliberately narrower.
   
   PC1.67 original static instructions. Actualflatness parent: retainedarea byte+2B / attribute04
   and catalog/tool gates can exempt slope checks. Otherwise passes callbackAD0B00 atB3C399 toACFE30
   over preparedquarterlist+34. Anyfailure can invoke spiralstair/elevatedfloor exceptionAD01D0;
   optional feedback3F, lowALfalse. Wholeplacement admission is broader than scalar height
   threshold; host polygon-quarter coverage and supportedfamily restrictions are independent. */

undefined4 __cdecl PlacementArea_TestSlopeSupport(undefined4 *param_1,void *param_2)

{
  int *piVar1;
  char cVar2;
  uint in_EAX;
  uint uVar3;
  uint uVar4;
  float local_50 [19];
  
  if ((*(char *)((int)param_1 + 0x2b) == '\0') &&
     (in_EAX = param_1[0x27], (*(byte *)(in_EAX + 0x14) & 4) == 0)) {
    in_EAX = Catalog_AllowsSlopedPlacement(param_1[7]);
    if ((char)in_EAX == '\0') {
      in_EAX = Catalog_TestIntersectionCategoryMask((void *)param_1[7]);
      if (((char)in_EAX == '\0') || ((int)param_1[4] < 1)) {
        in_EAX = FUN_00b00d70((void *)*param_1,0x10,'\0');
        if ((char)in_EAX == '\0') {
          piVar1 = param_1 + 0x34;
          in_EAX = TileQuarterList_AnyPredicateFailure
                             (param_1[1],piVar1,LotQuarter_FailsFlatnessTolerance);
          if ((char)in_EAX != '\0') {
            if ((*(uint *)(param_1[7] + 0xd0) & 0x20000) != 0) {
              cVar2 = *(char *)(*piVar1 + 2);
              in_EAX = CONCAT31((int3)(in_EAX >> 8),cVar2);
              if (((int)param_1[4] < (int)cVar2) && ('\0' < cVar2)) {
                uVar3 = param_1[0x35] - *piVar1 >> 2;
                uVar4 = 0;
                in_EAX = 0;
                if (uVar3 != 0) {
                  do {
                    in_EAX = FUN_00ad01d0(param_1[1],(char *)(*piVar1 + uVar4 * 4),'\0','\0');
                    if ((char)in_EAX != '\0') goto LAB_00b3c411;
                    uVar4 = uVar4 + 1;
                  } while (uVar4 < uVar3);
                }
                goto LAB_00b3c408;
              }
            }
LAB_00b3c411:
            if (param_2 != (void *)0x0) {
              FUN_00ad6720(local_50,0x3f,param_1[1],(float *)(param_1 + 2),0,0);
              FUN_00ad8570(param_2,local_50);
              in_EAX = FUN_00ad70d0((int)local_50);
            }
            return in_EAX & 0xffffff00;
          }
        }
      }
    }
  }
LAB_00b3c408:
  return CONCAT31((int3)(in_EAX >> 8),1);
}


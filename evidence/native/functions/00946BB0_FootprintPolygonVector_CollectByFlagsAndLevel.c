/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). stdcall RET12.
   Selects each polygon whose runtime flags include required query+0x0c bits, exclude query+0x10
   bits and record+5 equals query+0x14 relative-level byte. Deep-copies vertices; optional outputs
   append hash and record+0x1c. Returns AL for flag count == polygon count. */

bool FootprintPolygonVector_CollectByFlagsAndLevel(int *param_1,int *param_2,undefined4 *param_3)

{
  uint uVar1;
  void *pvVar2;
  int *this;
  undefined4 *puVar3;
  undefined4 *puVar4;
  uint uVar5;
  uint uVar6;
  undefined4 *puVar7;
  
  puVar4 = param_3;
  uVar5 = 0;
  uVar6 = param_1[1] - *param_1 >> 6;
  if (uVar6 != 0) {
    param_3 = (undefined4 *)0x0;
    do {
      puVar7 = (undefined4 *)(*param_1 + (int)param_3);
      uVar1 = *(uint *)(*param_2 + uVar5 * 4);
      if ((((uVar1 & puVar4[3]) == puVar4[3]) && ((puVar4[4] & uVar1) == 0)) &&
         (*(char *)((int)puVar7 + 5) == *(char *)(puVar4 + 5))) {
        pvVar2 = (void *)*puVar4;
        this = *(int **)((int)pvVar2 + 4);
        if (this < *(int **)((int)pvVar2 + 8)) {
          *(int **)((int)pvVar2 + 4) = this + 4;
          if (this != (int *)0x0) {
            FUN_006289f0(this,puVar7 + 0xc);
          }
        }
        else {
          FUN_00808140(pvVar2,this,puVar7 + 0xc);
        }
        pvVar2 = (void *)puVar4[1];
        if (pvVar2 != (void *)0x0) {
          puVar3 = *(undefined4 **)((int)pvVar2 + 4);
          if (puVar3 < *(undefined4 **)((int)pvVar2 + 8)) {
            *(undefined4 **)((int)pvVar2 + 4) = puVar3 + 1;
            if (puVar3 != (undefined4 *)0x0) {
              *puVar3 = *puVar7;
            }
          }
          else {
            FUN_00982420(pvVar2,puVar3,puVar7);
          }
        }
        pvVar2 = (void *)puVar4[2];
        if (pvVar2 != (void *)0x0) {
          puVar3 = *(undefined4 **)((int)pvVar2 + 4);
          if (puVar3 < *(undefined4 **)((int)pvVar2 + 8)) {
            *(undefined4 **)((int)pvVar2 + 4) = puVar3 + 1;
            if (puVar3 != (undefined4 *)0x0) {
              *puVar3 = puVar7[7];
            }
          }
          else {
            FUN_00405f80(pvVar2,puVar3,puVar7 + 7);
          }
        }
      }
      param_3 = param_3 + 0x10;
      uVar5 = uVar5 + 1;
    } while (uVar5 < uVar6);
  }
  return uVar6 == param_2[1] - *param_2 >> 2;
}


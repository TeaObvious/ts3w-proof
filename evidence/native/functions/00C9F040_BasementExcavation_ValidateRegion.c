/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl six words, AL bool. Matching/nonempty region, signed
   negative basement and lowest-level policy dependent on lot+4BC, vertex validation, floor
   acceptance C9D030, obstruction validation and wall validation. Error accumulator may continue
   independent checks; absent accumulator short-circuits. Host omissions must remain explicit. */

bool __cdecl
BasementExcavation_ValidateRegion
          (void *param_1,undefined4 param_2,char *param_3,char *param_4,float param_5,void *param_6)

{
  bool bVar1;
  undefined4 uVar2;
  char cVar3;
  bool local_69;
  char local_68;
  char local_67;
  char local_66;
  char local_64;
  char local_63;
  byte local_62;
  void *local_60;
  undefined4 local_5c;
  undefined4 local_58;
  char *local_54;
  float local_50 [19];
  
  local_69 = true;
  if (param_1 != (void *)0x0) {
    cVar3 = (char)param_2;
    bVar1 = BasementRegion_TestInvalidShape(param_1,cVar3,param_3,param_4,param_6);
    if (!bVar1) {
      local_64 = *param_3;
      local_63 = param_3[1];
      local_68 = *param_4;
      local_67 = param_4[1];
      local_62 = param_3[2] - 1;
      local_66 = param_4[2] + -1;
      if (0x7f < local_62) {
        if ((int)(char)local_62 < (int)((-(uint)(*(char *)((int)param_1 + 0x4bc) != '\0') & 3) - 4))
        {
          if (param_6 != (void *)0x0) {
            FUN_00ad6ac0(local_50,0xea,param_1,(undefined3 *)param_3);
            FUN_00ad8570(param_6,local_50);
            FUN_00ad70d0((int)local_50);
          }
        }
        else {
          bVar1 = BasementExcavation_ValidateVertexHeights
                            (param_1,cVar3,&local_64,&local_68,param_5,param_6);
          if ((bVar1) || (local_69 = false, param_6 != (void *)0x0)) {
            uVar2 = FUN_00c9d030(param_1,param_2,'\x01',&local_64,&local_68,param_6);
            if ((char)uVar2 == '\0') {
              if (param_6 == (void *)0x0) {
                return false;
              }
              local_69 = false;
            }
            bVar1 = BasementRegion_ValidateTileObstructions
                              (param_1,param_2,1,&local_64,&local_68,param_6);
            if (!bVar1) {
              if (param_6 == (void *)0x0) {
                return false;
              }
              local_69 = false;
            }
            local_60 = (void *)0x0;
            local_5c = 0;
            local_58 = 0;
            local_54 = "UserTool/BasementPlacementHelper/walls";
            FUN_00c5d450(cVar3,&local_64,&local_68,'\0',&local_60);
            bVar1 = BasementWalls_ValidatePerimeter(param_1,(int *)&local_60,param_6);
            if ((!bVar1) && (local_69 = bVar1, param_6 == (void *)0x0)) {
              if (local_60 != (void *)0x0) {
                Memory_FreeIfNonNull(local_60);
              }
              return false;
            }
            if (local_60 != (void *)0x0) {
              Memory_FreeIfNonNull(local_60);
            }
            return local_69;
          }
        }
      }
    }
  }
  return false;
}


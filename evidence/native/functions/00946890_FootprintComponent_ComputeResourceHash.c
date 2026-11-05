/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX footprint component,UInt32
   polygon-runtime flag mask stackarg RET4. Enumerate selected polygons via945080, reserve
   perpolygon0x44 plus8pervertex, then pack actualpolygon fields/point binary32words into local byte
   buffer. Hash actual filled byte length via7CFF10,notreservedcapacity; free temporary storage.
   NoeligibledatareturnsUInt64zero.
   DebugallocationlabelObjects/FootprintComponent/WorkOutFootprintResourceHash corroborates producer
   role; this is not household/script identity. */

undefined8 __thiscall FootprintComponent_ComputeResourceHash(void *this,uint param_1)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  int iVar4;
  int iVar5;
  char *allocation;
  void *pvVar6;
  char *pcVar7;
  char *pcVar8;
  undefined8 uVar9;
  byte local_19;
  undefined4 *local_18;
  uint local_14;
  char *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  allocation = (char *)0x0;
  local_18 = (undefined4 *)0x0;
  pvVar6 = (void *)0x0;
  local_14 = 0;
  bVar3 = FootprintComponent_NextPolygonByRuntimeFlags(this,&local_14,param_1,(int *)&local_18,'\0')
  ;
  if (bVar3) {
    do {
      pvVar6 = (void *)((int)pvVar6 + ((int)(local_18[0xd] - local_18[0xc]) >> 3) * 8 + 0x44);
      bVar3 = FootprintComponent_NextPolygonByRuntimeFlags
                        (this,&local_14,param_1,(int *)&local_18,'\0');
    } while (bVar3);
    if (pvVar6 != (void *)0x0) {
      local_10 = (char *)0x0;
      local_c = 0;
      local_8 = 0;
      local_4 = "Objects/FootprintComponent/WorkOutFootprintResourceHash";
      local_19 = 0;
      if (pvVar6 == (void *)0x0) {
        memmove((void *)0x0,(void *)0x0,0);
      }
      else {
        FUN_00b6f4c0(&local_10,(void *)0x0,pvVar6,&local_19);
        allocation = local_10;
      }
      local_14 = 0;
      bVar3 = FootprintComponent_NextPolygonByRuntimeFlags
                        (this,&local_14,param_1,(int *)&local_18,'\0');
      pcVar7 = allocation;
      pcVar8 = allocation;
      if (bVar3) {
        do {
          *(undefined4 *)pcVar7 = *local_18;
          pcVar7[4] = *(char *)(local_18 + 1);
          pcVar7[5] = *(char *)((int)local_18 + 5);
          *(undefined4 *)(pcVar7 + 6) = local_18[2];
          *(undefined4 *)(pcVar7 + 10) = local_18[3];
          *(undefined4 *)(pcVar7 + 0xe) = local_18[4];
          *(undefined4 *)(pcVar7 + 0x12) = local_18[5];
          *(undefined4 *)(pcVar7 + 0x16) = local_18[6];
          *(undefined4 *)(pcVar7 + 0x1a) = local_18[7];
          *(undefined4 *)(pcVar7 + 0x1e) = local_18[8];
          *(undefined4 *)(pcVar7 + 0x22) = local_18[9];
          *(undefined4 *)(pcVar7 + 0x26) = local_18[10];
          pcVar8 = pcVar7 + 0x32;
          iVar5 = 0;
          *(undefined4 *)(pcVar7 + 0x2a) = local_18[0xb];
          iVar4 = (int)(local_18[0xd] - local_18[0xc]) >> 3;
          *(int *)(pcVar7 + 0x2e) = iVar4;
          if (0 < iVar4) {
            do {
              iVar2 = local_18[0xc];
              iVar1 = iVar5 * 8;
              *(undefined4 *)pcVar8 = *(undefined4 *)(iVar2 + iVar5 * 8);
              iVar5 = iVar5 + 1;
              *(undefined4 *)(pcVar8 + 4) = *(undefined4 *)(iVar2 + iVar1 + 4);
              pcVar8 = pcVar8 + 8;
            } while (iVar5 < iVar4);
          }
          bVar3 = FootprintComponent_NextPolygonByRuntimeFlags
                            (this,&local_14,param_1,(int *)&local_18,'\0');
          pcVar7 = pcVar8;
        } while (bVar3);
      }
      uVar9 = Hash_Fnv1CaseFoldSignedByteSpan(allocation,(int)pcVar8 - (int)allocation);
      if (allocation != (char *)0x0) {
        Memory_FreeIfNonNull(allocation);
      }
      return uVar9;
    }
  }
  return 0;
}


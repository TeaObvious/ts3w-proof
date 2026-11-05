/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified CAW 1.22.10 Sims3PipelineHelper export StridedCopy (ordinal 7), called by
   Sims3Pipeline.MeshUtils::InsertArrayIntoStream through P/Invoke token 0x06000066. Managed
   signature: void StridedCopy(dst,dstStride,src,srcStride,widthBytes,height,mode). Native branches
   for mode 0 row memcpy, mode 1 32-bit byte reversal, mode 2 16-bit byte reversal; zero
   width/height do nothing. Ghidra's inferred generic types are not the authoritative ABI. */

void __cdecl
StridedCopy(uint *param_1,int param_2,void *param_3,int param_4,uint param_5,int param_6,int param_7
           )

{
  undefined2 uVar1;
  uint uVar2;
  uint *puVar3;
  uint uVar4;
  uint uVar5;
  
                    /* 0x63f0  7  StridedCopy */
  if ((param_5 != 0) && (param_6 != 0)) {
    if (param_7 == 0) {
      do {
        memcpy(param_1,param_3,param_5);
        param_1 = (uint *)((int)param_1 + param_2);
        param_3 = (void *)((int)param_3 + param_4);
        param_6 = param_6 + -1;
      } while (param_6 != 0);
    }
    else if (param_7 == 1) {
      uVar4 = param_5 >> 2;
      if (uVar4 != 0) {
        do {
          if (uVar4 != 0) {
            puVar3 = param_1;
            uVar5 = uVar4;
            do {
              uVar2 = *(uint *)((int)puVar3 + ((int)param_3 - (int)param_1));
              *puVar3 = uVar2 >> 0x18 | (uVar2 & 0xff0000) >> 8 | (uVar2 & 0xff00) << 8 |
                        uVar2 << 0x18;
              puVar3 = puVar3 + 1;
              uVar5 = uVar5 - 1;
            } while (uVar5 != 0);
          }
          param_1 = (uint *)((int)param_1 + param_2);
          param_3 = (void *)((int)param_3 + param_4);
          param_6 = param_6 + -1;
        } while (param_6 != 0);
        return;
      }
    }
    else if ((param_7 == 2) && (uVar4 = param_5 >> 1, uVar4 != 0)) {
      do {
        if (uVar4 != 0) {
          puVar3 = param_1;
          uVar5 = uVar4;
          do {
            uVar1 = *(undefined2 *)(((int)param_3 - (int)param_1) + (int)puVar3);
            uVar5 = uVar5 - 1;
            *(ushort *)puVar3 = CONCAT11((char)uVar1,(char)((ushort)uVar1 >> 8));
            puVar3 = (uint *)((int)puVar3 + 2);
          } while (uVar5 != 0);
        }
        param_1 = (uint *)((int)param_1 + param_2);
        param_3 = (void *)((int)param_3 + param_4);
        param_6 = param_6 + -1;
      } while (param_6 != 0);
      return;
    }
  }
  return;
}

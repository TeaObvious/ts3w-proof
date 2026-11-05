/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_CreateNewHouseboatLot. Export
   ordinal(s): 2611. Entry VA: 0x10997de0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004BE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int * __cdecl WorldWrap_CreateNewHouseboatLot(void *param_1,int *param_2,int param_3)

{
  undefined4 uVar1;
  void *this;
  int *this_00;
  float local_20 [7];
  
                    /* 0x997de0  2611  WorldWrap_CreateNewHouseboatLot */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_1023f390(param_1,param_2,param_3,local_20);
    if ((char)uVar1 != '\0') {
      this = (void *)FUN_10918ed0(0x4c0,0x10,0,"World/New Lot",0);
      if (this != (void *)0x0) {
        this_00 = FUN_10086700(this,param_1);
        if (this_00 != (int *)0x0) {
          uVar1 = FUN_100940f0(this_00,param_2,param_3,local_20,0.0,0,0,'\x01',1,'\0',0.0,1.4013e-45
                              );
          if ((char)uVar1 != '\0') {
            return this_00;
          }
          (**(code **)(*this_00 + 8))(1);
        }
      }
    }
  }
  return (int *)0x0;
}


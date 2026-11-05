/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX manager/no stack args, AL Boolean. Resource-system
   absence returns false. Ensure NGMP factory if typeF3A38370 lookup absent, enumerate providers
   through virtual+48 into linked list, invoke0059D9B0 in list order, free list nodes, return true.
   Does not check every child load or establish physical package priority. */

bool __thiscall NameGuidMaps_LoadAllProviders(void *this)

{
  int ****ppppiVar1;
  int *arg0;
  void *pvVar2;
  int ****ppppiVar3;
  int ***pppiStack_14;
  int ***pppiStack_10;
  int *piStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  arg0 = (int *)FUN_004afe80();
  if (arg0 != (int *)0x0) {
    pvVar2 = (**(code **)(*arg0 + 0x2c))(arg0,0xf3a38370,0xffffffff);
    if (pvVar2 == (void *)0x0) {
      NameGuidMapFactory_Register();
    }
    piStack_c = (int *)FUN_0092f9c0();
    pppiStack_14 = (int ***)&pppiStack_14;
    uStack_8 = 0;
    pcStack_4 = "ResourceLoad/NameGuidMap/DatabaseList";
    pppiStack_10 = pppiStack_14;
    (**(code **)(*arg0 + 0x48))(arg0,pppiStack_14,0);
    ppppiVar3 = (int ****)pppiStack_14;
    if ((int ****)pppiStack_14 != &pppiStack_14) {
      do {
        NameGuidMaps_AppendProviderMaps(this,ppppiVar3[2]);
        ppppiVar3 = (int ****)*ppppiVar3;
      } while (ppppiVar3 != &pppiStack_14);
    }
    ppppiVar3 = (int ****)pppiStack_14;
    if ((int ****)pppiStack_14 != &pppiStack_14) {
      do {
        ppppiVar1 = (int ****)*ppppiVar3;
        (**(code **)(*piStack_c + 0xc))(piStack_c,ppppiVar3,0xc);
        ppppiVar3 = ppppiVar1;
      } while (ppppiVar1 != &pppiStack_14);
    }
    return true;
  }
  return false;
}


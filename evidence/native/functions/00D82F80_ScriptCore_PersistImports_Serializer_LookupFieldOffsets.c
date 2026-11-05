/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0108d118 (original PC 1.67 TS3W.exe).
   ScriptCore.PersistImports::Serializer_LookupFieldOffsets [assembly=ScriptCore token=0x06000CAD;
   fastFields: ScriptCore.PersistFastField[]; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl ScriptCore_PersistImports__Serializer_LookupFieldOffsets(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  
  puVar3 = (undefined4 *)(param_1 + 0x10);
  iVar4 = *(int *)(param_1 + 8);
  iVar2 = 0;
  if (0 < iVar4) {
    do {
      iVar1 = puVar3[1];
      switch(*puVar3) {
      case 2:
      case 3:
      case 0xb:
        puVar3[1] = *(undefined4 *)(iVar1 + 8);
        iVar2 = iVar2 + 1;
        break;
      default:
        *puVar3 = 0;
        puVar3[1] = 0xffffffff;
        break;
      case 7:
      case 10:
      case 0xf:
        puVar3[1] = *(undefined4 *)(iVar1 + 8);
        iVar2 = iVar2 + 8;
        break;
      case 8:
      case 0xd:
        puVar3[1] = *(undefined4 *)(iVar1 + 8);
        iVar2 = iVar2 + 2;
        break;
      case 9:
      case 0xc:
      case 0xe:
        puVar3[1] = *(undefined4 *)(iVar1 + 8);
        iVar2 = iVar2 + 4;
      }
      puVar3 = puVar3 + 2;
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
  }
  return iVar2;
}


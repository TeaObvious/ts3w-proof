/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_007db1c0. ECX adapter plus attribute name, Int32 output pointer and
   requested count stack inputs. Require state1, nonzero output and requested count, and present
   attribute. Split attribute on comma through original token helper; token count must exactly equal
   requested count. Each token is scanned with swscanf UTF16 %i into successive4byte outputs;
   accumulated successful conversions must equal count and adapter check must succeed. Result is low
   AL success; not inferred full EAX. %i accepts C integer prefixes; overflow/locale and token
   helper details are not invented here. LoadingText caller requests one count and initializes it
   to0. */

undefined4 __thiscall
XmlStreamAdapter_ReadInt32AttributeTokens(void *this,ushort *param_1,int param_2,uint param_3)

{
  short sVar1;
  short *in_EAX;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  short *psVar5;
  uint uVar6;
  int iVar7;
  int *local_10;
  int *local_c;
  undefined4 local_8;
  char *local_4;
  
  if (((((*(int *)((int)this + 0x48) == 1) && (iVar7 = 0, param_3 != 0)) && (param_2 != 0)) &&
      ((in_EAX = (short *)FUN_00470f60(*(void **)((int)this + 8),param_1),
       *(int *)((int)this + 0x48) != 1 || (*(int *)(*(int *)((int)this + 8) + 8) == 0)))) &&
     (in_EAX != (short *)0x0)) {
    local_10 = (int *)0x0;
    local_c = (int *)0x0;
    local_8 = 0;
    local_4 = "Services/XmlStreamAdapter/ReadAttributeInt32/ Tokens";
    psVar5 = in_EAX;
    do {
      sVar1 = *psVar5;
      psVar5 = psVar5 + 1;
    } while (sVar1 != 0);
    uVar2 = FUN_004f4ad0(in_EAX,(int *)((int)psVar5 - (int)(in_EAX + 1) >> 1),0x2c,(int *)&local_10,
                         0xffffffff);
    if (uVar2 == param_3) {
      uVar2 = 0;
      for (uVar6 = param_3; uVar6 != 0; uVar6 = uVar6 - 1) {
        iVar3 = swscanf(*(wchar_t **)(iVar7 + (int)local_10),L"%i",param_2);
        uVar2 = uVar2 + iVar3;
        param_2 = param_2 + 4;
        iVar7 = iVar7 + 0x10;
      }
      FUN_0073ee30(local_10,local_c);
      local_c = local_10;
      if ((uVar2 == param_3) && (uVar4 = FUN_007da210((int)this), (char)uVar4 != '\0')) {
        uVar4 = FUN_0051cfc0((int *)&local_10);
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
    }
    in_EAX = (short *)FUN_0051cfc0((int *)&local_10);
  }
  return (uint)in_EAX & 0xffffff00;
}


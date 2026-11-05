/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX service plus SIX stackwords RET18hex,
   returns load pointer orNULL. Sixth word not consumed by reviewed instructions; old five-argument
   C was wrong. Key normalized7D8310; existing load can be retained/reprioritized, else original
   factory+2C and location+44 required, allocate118 LoadInfo, open stream via factory+34, acquire
   jobs, set I/O/dependency callbacks and load flags. Signed priority compare at72987F/JGE. Factory
   kind3C4B9A4 selects special queued I/O path; other path Job_Submit. Completion job729730 depends
   on I/O job and publishes optionaloutJob. Selected729D80 caller supplies
   key,0,outJob,priority,0,1. Detailed nested stream/job/iterator call ABI still partly unexpanded;
   residual unaff_*/stack* expressions and inherited CPropertySet::GetClassID alias are decompiler
   artifacts, not COM or rawpointer requirements. Raw operands establish selected scheduler/slot
   transitions only. */

void * __thiscall
ResourceRequests_PrepareLoad
          (void *this,uint *key,uint word1,void *outJob,int priorityWord,uint word4,uint unusedWord5
          )

{
  CPropertySet *this_00;
  void *pvVar1;
  undefined4 *puVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined4 *puVar7;
  undefined4 *unaff_EBX;
  int unaff_EBP;
  int *unaff_ESI;
  int unaff_EDI;
  ulong in_stack_ffffff74;
  int in_stack_ffffff78;
  undefined1 *puVar8;
  int in_stack_ffffff84;
  int in_stack_ffffff88;
  undefined4 uVar9;
  undefined1 *puVar10;
  undefined1 *puVar11;
  int iVar12;
  undefined4 *local_2c;
  undefined4 *puStack_28;
  void *local_20;
  undefined1 uStack_1c;
  int local_18;
  int iStack_14;
  uint auStack_10 [4];
  
  ResourceKey_CopyWithMountedCandidate((uint *)&local_20,key);
  if (local_18 != 0) {
    key = (uint *)((uint)key & 0xffffff00);
    FUN_00727e60((void *)((int)this + 0x80),&local_2c,(int *)&local_20);
    if (local_2c != *(undefined4 **)((int)this + 0x37c)) {
      unaff_ESI = (int *)0x0;
      if ((local_2c != (undefined4 *)0x0) && (piVar3 = local_2c + -2, piVar3 != (int *)0x0)) {
        (**(code **)*piVar3)();
        unaff_ESI = piVar3;
      }
      if ((*(char *)((int)unaff_ESI + 0x99) != '\0') && ((char)word4 != '\0')) {
        *(undefined1 *)((int)unaff_ESI + 0x9a) = 1;
        FUN_00727c30(this,unaff_ESI[0x29],500);
        puVar2 = *(undefined4 **)((int)this + 0xc);
        puVar7 = *(undefined4 **)((int)this + 0x10);
        puVar5 = *(undefined4 **)((int)this + 0x14);
        piVar3 = *(int **)((int)this + 0x18);
        if (puVar2 != *(undefined4 **)((int)this + 0x1c)) {
          do {
            pvVar1 = (void *)*puVar2;
            if ((void *)unaff_ESI[0x29] == pvVar1) {
              FUN_00728e50((void *)((int)this + 4),auStack_10,(int)puVar2,(int)puVar7,(int)puVar5,
                           piVar3);
              Job_ReleaseReference(pvVar1);
              break;
            }
            puVar2 = puVar2 + 2;
            if (puVar2 == puVar5) {
              puVar2 = (undefined4 *)piVar3[1];
              piVar3 = piVar3 + 1;
              puVar5 = puVar2 + 0x40;
              puVar7 = puVar2;
            }
          } while (puVar2 != *(undefined4 **)((int)this + 0x1c));
        }
      }
      if ((*(char *)((int)unaff_ESI + 0x97) != '\0') && ((char)word1 == '\0')) {
        *(undefined1 *)((int)unaff_ESI + 0x97) = 0;
      }
      if (unaff_ESI[0x2b] < priorityWord) {
        unaff_ESI[0x2b] = priorityWord;
        FUN_0059b1e0((void *)unaff_ESI[0x2a],priorityWord);
      }
LAB_00729c24:
      (**(code **)(*unaff_ESI + 4))();
      return unaff_ESI;
    }
    piVar3 = (int *)FUN_004afe80();
    iVar12 = -1;
    piVar4 = (int *)(**(code **)(*piVar3 + 0x2c))();
    if ((piVar4 != (int *)0x0) &&
       (piVar3 = (int *)(**(code **)(*piVar3 + 0x44))(), piVar3 != (int *)0x0)) {
      puVar5 = (undefined4 *)FUN_004e4500(0x118,"ResourceLoad/AsyncLoader/LoadInfo",0);
      if (puVar5 == (undefined4 *)0x0) {
        piVar6 = (int *)0x0;
      }
      else {
        piVar6 = FUN_00728100(puVar5);
      }
      FUN_008c8d00(&stack0xffffffc4,piVar6);
      if (unaff_ESI != (int *)0x0) {
        (**(code **)(*piVar3 + 0x34))();
        if (unaff_ESI[0xf] != -1) {
          piVar6 = JobManager_GetInterface();
          local_20 = (void *)0x0;
          puVar5 = (undefined4 *)(*piVar6 + 0x10);
          FUN_0060b6c0((int *)&local_20);
          (*(code *)*puVar5)();
          if (local_20 != (void *)0x0) {
            puVar10 = &stack0xffffffbc;
            uVar9 = 0x72998f;
            FUN_00727db0(this,puVar10,0,0);
            unaff_ESI[8] = (int)this;
            FUN_004a0800(unaff_ESI + 0xb,(int)piVar3);
            unaff_ESI[0xc] = (int)piVar4;
            unaff_ESI[4] = iVar12;
            unaff_ESI[5] = unaff_EDI;
            unaff_ESI[6] = (int)unaff_ESI;
            unaff_ESI[7] = unaff_EBP;
            iVar12 = (**(code **)(*piVar4 + 0x18))();
            *(bool *)(unaff_ESI + 0x25) = iVar12 == 0x1cce04d;
            *(undefined1 *)((int)unaff_ESI + 0x95) = 0;
            *(undefined1 *)((int)unaff_ESI + 0x96) = 0;
            *(undefined1 *)((int)unaff_ESI + 0x97) = uStack_1c;
            *(undefined1 *)(unaff_ESI + 0x26) = 1;
            *(undefined1 *)((int)unaff_ESI + 0x99) = 0;
            *(char *)((int)unaff_ESI + 0x9a) = (char)auStack_10[0];
            *(undefined1 *)(unaff_ESI + 0x27) = 0;
            *(undefined1 *)((int)unaff_ESI + 0x9d) = 0;
            unaff_ESI[0x2b] = iStack_14;
            unaff_ESI[0x29] = (int)local_20;
            unaff_ESI[0x2a] = 0;
            FUN_00727310((int)unaff_ESI);
            iVar12 = (**(code **)(*piVar3 + 0xc))();
            if (iVar12 == 0x3c4b9a4) {
              FUN_00599c20(local_20,unaff_ESI);
              *(undefined1 **)((int)local_20 + 8) = &LAB_00727fe0;
              *(void **)((int)local_20 + 0xc) = this;
              FUN_0059b1e0(local_20,iStack_14);
              FUN_00599c50(local_20,1);
              FUN_00599e40((int)local_20);
              LOCK();
              *(int *)((int)this + 0x74) = *(int *)((int)this + 0x74) + 1;
              UNLOCK();
              LOCK();
              *(int *)((int)this + 0x78) = *(int *)((int)this + 0x78) + unaff_ESI[0xe];
              UNLOCK();
              *(undefined1 *)(unaff_ESI + 0x27) = 1;
              (**(code **)(*piVar3 + 0x50))();
              *(undefined1 *)((int)unaff_ESI + 0x99) = 1;
              if ((char)auStack_10[0] == '\0') {
                Job_AddReference(local_20);
                auStack_10[0] = auStack_10[0] & 0xffffff00;
                puVar11 = &stack0xffffffb0;
                puVar8 = &stack0xffffff84;
                this_00 = (CPropertySet *)((int)this + 4);
                iVar12 = 0x729af4;
                FUN_00727190(this_00,(undefined4 *)&stack0xffffff84);
                    /* Tree texture review: Existing GetClassID analyst alias at727170 is
                       queue-iterator four-word copying here, not evidence of a COM call. Follow
                       original instructions for by-value iterator temporaries. */
                CPropertySet::GetClassID(this_00,(_GUID *)&stack0xffffff74);
                FUN_00727ed0((int *)&stack0xffffffcc,in_stack_ffffff74,in_stack_ffffff78,iVar12,
                             (int)puVar8,in_stack_ffffff84,in_stack_ffffff88,uVar9,(int)puVar10,
                             (int)puVar11);
                FUN_00728d50(this_00,(int *)&stack0xffffffcc,unaff_EBX,(undefined4 *)0x0,local_2c,
                             puStack_28,(undefined4 *)&stack0xffffffb0);
                FUN_00727d00(this,'\x01');
              }
              else {
                FUN_00727c30(this,(int)local_20,500);
              }
            }
            else {
              FUN_00599c20(local_20,unaff_ESI);
              *(undefined1 **)((int)local_20 + 8) = &LAB_0072a460;
              *(void **)((int)local_20 + 0xc) = this;
              *(undefined4 *)((int)local_20 + 0x20) = 2;
              FUN_0059b1e0(local_20,iStack_14);
              FUN_00599c50(local_20,1);
              LOCK();
              *(int *)((int)this + 0x74) = *(int *)((int)this + 0x74) + 1;
              UNLOCK();
              LOCK();
              *(int *)((int)this + 0x78) = *(int *)((int)this + 0x78) + unaff_ESI[0xe];
              UNLOCK();
              Job_Submit(local_20);
            }
            FUN_007284d0((void *)((int)this + 0x80),(undefined4 *)&stack0xffffffb0,unaff_ESI + 2);
            (**(code **)(*piVar6 + 0x10))();
            pvVar1 = (void *)unaff_ESI[0x2a];
            FUN_00599c20(pvVar1,unaff_ESI);
            *(code **)((int)pvVar1 + 8) = ResourceRequests_LoadJobCallback;
            *(void **)((int)pvVar1 + 0xc) = this;
            *(undefined4 *)((int)pvVar1 + 0x20) = 1;
            Job_AddDependency(pvVar1,key);
            FUN_00599c50(pvVar1,1);
            FUN_0059b1e0(pvVar1,iStack_14);
            Job_Submit(pvVar1);
            if (outJob == (void *)0x0) {
              Job_ReleaseReference((void *)unaff_ESI[0x2a]);
            }
            else {
              *(void **)outJob = pvVar1;
            }
            if (key != (uint *)0x0) {
              Job_ReleaseReference(key);
            }
            goto LAB_00729c24;
          }
        }
        (**(code **)(*unaff_ESI + 4))();
      }
    }
  }
  return (void *)0x0;
}


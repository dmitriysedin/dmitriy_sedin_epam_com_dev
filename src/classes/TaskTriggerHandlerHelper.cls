/**
 * Created by Dmitriy_Sedin on 7/23/2019.
 */

public class TaskTriggerHandlerHelper extends TriggerHandler{

    public override void onAfterUpdate(List<sObject> updatedObjects, Map<Id, sObject> oldObjectsMap) {

        List<Account> listAccount = new List<Account>();

        for (sObject t :  updatedObjects){

            Account acc;

            if(t.get('Status').equals('Completed')) {
                acc = new Account(ID = (ID) t.get('WhatId'), Plans_Discussed__c = true);

                listAccount.add(acc);
            }

        }

        if(!listAccount.isEmpty()){
            update listAccount;
        }
    }

}
/*
 * Created by Dmitriy_Sedin on 7/23/2019.
 */

public class AccountTriggerHandlerHelper extends TriggerHandler{

    public override void onAfterInsert(List<sObject> newObjects, Map<Id, sObject> newObjectsMap) {

        List<Task> listTask = new List<Task>();

        for (sObject acc : newObjects){
            Task t = new Task();

            t.WhatId = acc.ID;
            t.Subject = 'Negotiations with ' + acc.get('Name');

            listTask.add(t);
        }

        if(!listTask.isEmpty()){
            insert listTask;
        }
    }

}
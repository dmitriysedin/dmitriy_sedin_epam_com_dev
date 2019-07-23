/*
 * Created by Dmitriy_Sedin on 7/23/2019.
 */

public without sharing virtual class TriggerHandler {

    public virtual void onBeforeInsert(List<sObject> newObjects) {
        return;
    }

    public virtual void onAfterInsert(List<sObject> newObjects, Map<Id, sObject> newObjectsMap) {
        return;
    }

    public virtual void onBeforeUpdate(List<sObject> updatedObjects, Map<Id, sObject> oldObjectsMap) {
        return;
    }

    public virtual void onAfterUpdate(List<sObject> updatedObjects, Map<Id, sObject> oldObjectsMap) {
        return;
    }

    public virtual void onBeforeDelete(List<sObject> deletedObjects, Map<Id, sObject> deletedObjectsMap) {
        return;
    }

    public virtual void onAfterDelete(List<sObject> deletedObjects, Map<Id, sObject> deletedObjectsMap) {
        return;
    }

    public void execute() {
        switch on Trigger.operationType  {
            when BEFORE_INSERT {
                onBeforeInsert(Trigger.new);
            }
            when AFTER_INSERT {
                onAfterInsert(Trigger.new, Trigger.newMap);
            }
            when BEFORE_UPDATE {
                onBeforeUpdate(Trigger.new, Trigger.oldMap);
            }
            when AFTER_UPDATE {
                onAfterUpdate(Trigger.new, Trigger.oldMap);
            }
            when BEFORE_DELETE {
                onBeforeDelete(Trigger.old, Trigger.oldMap);
            }
            when AFTER_DELETE {
                onAfterDelete(Trigger.old, Trigger.oldMap);
            }
        }
    }
}
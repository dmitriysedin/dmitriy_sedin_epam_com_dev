/**
 * Created by Dmitriy_Sedin on 7/23/2019.
 */

@IsTest
private class TaskTriggerHandlerHelperTest {

    @IsTest
    static void testOnAfterUpdate() {

        String accName = 'TestAccount3';

        Account a = new Account(Name = accName);

        insert a;

        Task t = [select Id, Subject from Task where WhatId IN (select Id from Account where Account.Name = :accName)];

        t.Status = 'Completed';

        update t;

        Account afterTriggerCompleted = [select Plans_Discussed__c from Account where Account.Name = :accName];

        System.assertEquals(true, afterTriggerCompleted.Plans_Discussed__c);

    }
}
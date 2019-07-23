/**
 * Created by Dmitriy_Sedin on 7/23/2019.
 */

@IsTest
private class AccountTriggerHandlerHelperTest {

    @IsTest
    static void testOnAfterInsert() {

        String accName = 'TestAccount2';
        String subject = 'Negotiations with ' + accName;

        Account a = new Account(Name = accName);

        insert a;

        Task t = [select Id, Subject from Task where WhatId IN (select Id from Account where Account.Name = :accName)];

        System.assertEquals(subject, t.Subject);

    }
}
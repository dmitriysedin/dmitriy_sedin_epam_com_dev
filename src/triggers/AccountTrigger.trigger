/**
 * Created by Dmitriy_Sedin on 7/23/2019.
 */

trigger AccountTrigger on Account (after insert) {

    AccountTriggerHandlerHelper accHelper = new AccountTriggerHandlerHelper();
    accHelper.execute();
}
/**
 * Created by Dmitriy_Sedin on 7/23/2019.
 */

trigger TaskTrigger on Task (after update) {

    TaskTriggerHandlerHelper taskHelper = new TaskTriggerHandlerHelper();
    taskHelper.execute();
}
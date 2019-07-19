<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_notifying_support_agents_of_new_case_at_large_account</fullName>
        <ccEmails>sedin.dmitri@gmail.com</ccEmails>
        <description>Email Alert notifying support agents of new case at large account</description>
        <protected>false</protected>
        <recipients>
            <recipient>adaniqwe123443@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>dmitriy_sedin@epam.com.dev</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notification_of_New_Case_for_Large_Account</template>
    </alerts>
</Workflow>

trigger CustomerTrigger on APEX_Customer__c (after update) {

List<apex_invoice__c> invoiceList=new List<apex_invoice__c>();

for(apex_customer__c objCust:Trigger.new)
        {
            if(objCust.apex_customer_status__c=='Active' && 
            Trigger.oldmap.get(objCust.id).apex_customer_status__c=='Inactive')
                {
                    apex_invoice__c objInv=new apex_invoice__c();
                    objInv.apex_status__c='Pending';
                    objInv.apex_description__c='This record is created by Trigger';
                    objInv.apex_customer__c=objCust.id;
                    
                    invoiceList.add(objInv);
                }
        insert invoiceList;
        }
        

}
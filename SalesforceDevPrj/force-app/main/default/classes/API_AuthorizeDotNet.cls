public class API_AuthorizeDotNet {
public static String APILOGIN;
    public static String APITRANSKEY;
    
    public static void getAuthNetCreds()
    {
        Authorize_Net_Setting__c apiloginSetting=Authorize_Net_Setting__c.getInstance('API Login');
        Authorize_Net_Setting__c apitranskeySetting=Authorize_Net_Setting__c.getInstance('TransKey');
    
    APILOGIN=apiloginSetting.Value__c;
    APITRANSKEY=apitranskeySetting.Value__c;
        system.debug('APILOGIN: '+APILOGIN);
               system.debug('APITRANSKEY: '+APITRANSKEY);
    }
}
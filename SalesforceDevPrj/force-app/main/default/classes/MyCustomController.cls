public class MyCustomController {

private final Opportunity opt;

    public PageReference SaveRecord() {
        update opt;
        return null;
    }
    
    public MyCustomController ()
    {
        opt=[Select id, name, stagename, amount from Opportunity where id=:ApexPages.currentpage().getparameters().get('id')];
    }
    
    public Opportunity getOpportunity()
    {
        return opt;
    }

}
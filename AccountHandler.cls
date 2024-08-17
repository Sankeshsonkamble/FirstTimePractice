public class AccountHandler {
    public static void createOpportunity(List<Account> newAccounts) {
        List<Opportunity> opportunitiesToInsert = new List<Opportunity>();
        
        for (Account acc : newAccounts) {
            // Create an Opportunity related to the inserted Account
            Opportunity opp = new Opportunity();
            opp.Name = 'New Opportunity'; // You can set the Opportunity name as per your requirements
            opp.StageName = 'Prospecting'; // Set the initial stage of the Opportunity
            opp.CloseDate = Date.today().addDays(30); // Set the close date as per your requirements
            opp.AccountId = acc.Id; // Link the Opportunity to the inserted Account
            
            opportunitiesToInsert.add(opp);
        }
        
        // Insert the Opportunities
        if (!opportunitiesToInsert.isEmpty()) {
            insert opportunitiesToInsert;
        }
    }
}
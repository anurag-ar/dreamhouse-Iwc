
public without sharing class AccountSearch {
 
 /********************** 

 in this case since the assigning the value to the query variable in constructors or methods are multiple,
 we are checking the last assigning value which is not effected by the conditional statements.

 ***************************/
    
        private static string query1;

        public AccountSearch(String query2){ //Giving Violation
            query1=query2;
        }
        public void acc(String query3){
            query1=query3;
            if(x==1){
            query1='select * from abc';
            }    
        }


        public void searchInternalAccount(){

            List<account> sfdcaccList = new List<Account>();

            sfdcaccList = database.query(query1);

        }

}
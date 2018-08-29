trigger AccountDefaultDescription on Account (before insert) {
    for(Account a : Trigger.New) {
        a = AccountOperations.setDefaultDescription(a);
        a = AccountOperations.setDefaultPhone(a);//Dev01
        a = AccountOperations.setDefaultURL(a); //Dev02
    }   
}
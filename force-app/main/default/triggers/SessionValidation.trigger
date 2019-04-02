trigger SessionValidation on Session__c (before insert, before update) {
   List<Session__c> sessionList = [SELECT Name, Session_Date__c, 	Session_Start__c, Session_End__c from Session__c];
   system.debug(sessionList);
   if(Trigger.isInsert || Trigger.isUpdate) {
       for(Session__c session : sessionList) {
           for(Session__c newSession: Trigger.new) {
               if(newSession.Id == session.Id || newSession.Session_Date__c != session.Session_Date__c) {
                   continue;
               }
               
               Boolean timeIsNotOverlap = newSession.Session_Start__c > session.Session_End__c || newSession.Session_End__c < session.Session_Start__c;
               if(!timeIsNotOverlap) {
                    newSession.addError('On this day we have a session "' + session.Name + '" on time: '
                                        + session.Session_Start__c + ' - ' + session.Session_End__c + '.');
               }
           }
       }
   }
}
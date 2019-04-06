sfdx force:org:create -s -f config/project-scratch-def.json -a conference-final^
 & sfdx force:user:create --setalias qa-user --definitionfile config/user-def.json^
 & sfdx force:source:push^
 & sfdx force:data:tree:import --sobjecttreefiles data/Hotel__c.json^
 & sfdx force:data:tree:import --sobjecttreefiles data/Interviewer__c.json^
 & sfdx force:data:tree:import --sobjecttreefiles data/Speaker__c.json^
 & sfdx force:data:tree:import --sobjecttreefiles data/Venue__c.json^
 & sfdx force:data:tree:import --sobjecttreefiles data/Conference__c-Participant__c-Feedback__c-Session__c.json
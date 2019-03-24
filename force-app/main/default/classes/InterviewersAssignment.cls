public class InterviewersAssignment {
    @InvocableMethod(label = 'Assign Interviewers'
        description = 'Retun apropiate interviwers for this session.')
    public static void assignInterviewers(List < Interview__c > interviewList) {
        Interview__c interview = interviewList[0];
        Session__c session = [SELECT Id, Name, Topic_Technologies__c FROM Session__c WHERE Id =: interview.Session__c];
        String[] topicTechnologyList = session.Topic_Technologies__c.split(';');
        String[] requiredTopics = topicTechnologyList.clone();
        List < Interviewer__c > interviewerList = [SELECT Id, Name, Topic_Technologies__c FROM Interviewer__c];
        Integer interviewerQuantity = 0;
        for (Interviewer__c interviewer: interviewerList) {
            Boolean topicIsKnown = false;
            for (String topicTechnology: topicTechnologyList) {
                if (interviewer.Topic_Technologies__c.contains(topicTechnology)) {
                    topicIsKnown = true;
                    Integer topicIndex = requiredTopics.indexOf(topicTechnology);
                    if (topicIndex >= 0) {
                        requiredTopics.remove(topicIndex);
                    }
                }
            }
            if (topicIsKnown) {
                Interview_Interviewer__c interviewInterviewer = new Interview_Interviewer__c(
                    Interview__c = interview.Id,
                    Interviewer__c = interviewer.Id,
                    Name = interview.Name + ' - ' + interviewer.Name
                );
                insert interviewInterviewer;
                interviewerQuantity++;
            }
            if (interviewerQuantity >= 3 && requiredTopics.isEmpty()) {
                break;
            }
        }
    }
}
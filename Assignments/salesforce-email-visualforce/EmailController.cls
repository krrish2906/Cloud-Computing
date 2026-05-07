public class EmailController {

    // Form Fields
    public String recipientEmail {get; set;}
    public String subject {get; set;}
    public String body {get; set;}

    // Checkbox for Attachment
    public Boolean includeAttachment {get; set;}

    // Send Email Method
    public PageReference sendEmail() {
        // Email Validation
        if(recipientEmail == null ||
            !Pattern.matches('^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$', recipientEmail)
        ) {
            ApexPages.addMessage(
                new ApexPages.Message(
                    ApexPages.Severity.ERROR,
                    'Invalid Email Address'
                )
            );
            return null;
        }
        try {
            // Create Email Object
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

            mail.setToAddresses(
                new List<String>{ recipientEmail }
            );

            mail.setSubject(subject);
            mail.setPlainTextBody(body);

            // Optional Attachment
            if(includeAttachment == true) {
                Messaging.EmailFileAttachment attachment = new Messaging.EmailFileAttachment();
                attachment.setFileName('sample.txt');
                
                attachment.setBody(
                    Blob.valueOf(
                        'This is a sample attachment sent using Salesforce Apex.'
                    )
                );

                attachment.setContentType('text/plain');
                mail.setFileAttachments(
                    new Messaging.EmailFileAttachment[]{ attachment }
                );
            }

            // Send Email
            Messaging.sendEmail(
                new List<Messaging.SingleEmailMessage>{ mail }
            );

            ApexPages.addMessage(
                new ApexPages.Message(
                    ApexPages.Severity.CONFIRM,
                    'Email Sent Successfully'
                )
            );
        } catch(Exception e) {
            ApexPages.addMessage(
                new ApexPages.Message(
                    ApexPages.Severity.ERROR,
                    e.getMessage()
                )
            );
        }
        return null;
    }
}
public class EmailNotificationService {

    // Send Email Without Attachment
    public static void sendEmail(String recipientEmail, String subject, String body) {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(
            new List<String>{ recipientEmail }
        );

        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        Messaging.sendEmail(
            new List<Messaging.SingleEmailMessage>{ mail }
        );
        System.debug('Email Sent Successfully');
    }

    // Send Email With Attachment
    public static void sendEmailWithAttachment(String recipientEmail, String subject, String body) {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(
            new List<String>{ recipientEmail }
        );

        mail.setSubject(subject);
        mail.setPlainTextBody(body);

        // Attachment
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

        Messaging.sendEmail(
            new List<Messaging.SingleEmailMessage>{ mail }
        );
        System.debug('Email With Attachment Sent Successfully');
    }
}